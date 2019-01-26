using System;
using System.Linq;
using newManagedModule.Core.Model;
using newManagedModule.Core.Services;
using newManagedModule.Data.Model;
using newManagedModule.Data.Repositories;
using VirtoCommerce.Platform.Core.Common;
using VirtoCommerce.Platform.Data.Infrastructure;

namespace newManagedModule.Data.Services
{
    public class CustomerReviewService : ServiceBase, ICustomerReviewService
    {
        private readonly Func<ICustomerReviewRepository> _repositoryFactory;

        public CustomerReviewService(Func<ICustomerReviewRepository> repositoryFactory)
        {
            _repositoryFactory = repositoryFactory;
        }

        public void DeleteCustomerRevies(string[] ids)
        {
            using (var repository = _repositoryFactory())
            {
                repository.DeleteCustomerReviews(ids);
                CommitChanges(repository);
            }
        }

        public CustomerReview[] GetReviewByIds(string[] ids)
        {
            using (var repository = _repositoryFactory())
            {
                return repository.GetReviewByIds(ids).Select(x => x.ToModel(AbstractTypeFactory<CustomerReview>.TryCreateInstance())).ToArray();
            }
        }

        public void SaveCustomerReviews(CustomerReview[] items)
        {
            if (items == null)
                throw new ArgumentNullException(nameof(items));

            var pkMap = new PrimaryKeyResolvingMap();
            using (var repository = _repositoryFactory())
            {
                using (var changeTracker = GetChangeTracker(repository))
                {
                    var alreadyExistEntities = repository.GetReviewByIds(items.Where(m => !m.IsTransient()).Select(x => x.Id).ToArray());
                    foreach (var devirativeContract in items)
                    {
                        var sourceEntity = AbstractTypeFactory<CustomerReviewEntity>.TryCreateInstance().FromModel(devirativeContract, pkMap);
                        var targetEntuty = alreadyExistEntities.FirstOrDefault(x => x.Id == sourceEntity.Id);
                        if (targetEntuty != null)
                        {
                            changeTracker.Attach(targetEntuty);
                            sourceEntity.Patch(targetEntuty);
                        }
                        else
                        {
                            repository.Add(sourceEntity);
                        }
                    }
                    CommitChanges(repository);
                    pkMap.ResolvePrimaryKeys();
                }
            }
        }
        public void DeleteCustomerReviews(string[] ids)
        {
            using (var repository = _repositoryFactory())
            {
                repository.DeleteCustomerReviews(ids);
                CommitChanges(repository);
            }
        }
        public CustomerReviewVote[] GetVoteByIds(string[] ids)
        {
            using (var repository = _repositoryFactory())
            {
                return repository.GetVoteByIds(ids).Select(x => x.ToModel(AbstractTypeFactory<CustomerReviewVote>.TryCreateInstance())).ToArray();
            }
        }

        public void SaveCustomerReviewVotes(CustomerReviewVote[] items)
        {
            if (items == null)
                throw new ArgumentNullException(nameof(items));

            var pkMap = new PrimaryKeyResolvingMap();
            using (var repository = _repositoryFactory())
            {
                using (var changeTracker = GetChangeTracker(repository))
                {
                    var alreadyExistEntities = repository.GetVoteByIds(items.Where(m => !m.IsTransient()).Select(x => x.Id).ToArray());
                    foreach (var devirativeContract in items)
                    {
                        var sourceEntity = AbstractTypeFactory<CustomerReviewVoteEntity>.TryCreateInstance().FromModel(devirativeContract, pkMap);
                        var targetEntuty = alreadyExistEntities.FirstOrDefault(x => x.Id == sourceEntity.Id);
                        if (targetEntuty != null)
                        {
                            changeTracker.Attach(targetEntuty);
                            sourceEntity.Patch(targetEntuty);
                        }
                        else
                        {
                            repository.Add(sourceEntity);
                        }
                    }
                    CommitChanges(repository);
                    pkMap.ResolvePrimaryKeys();
                }
            }
            var reveiwIds = items.Select(x => x.Id).ToArray();
            UpdateCustomerReviewVotesCount(reveiwIds);
        }

        public void UpdateCustomerReviewVotesCount(string[] reviewIds)
        {
            if (reviewIds == null)
                throw new ArgumentNullException(nameof(reviewIds));

            using (var repository = _repositoryFactory())
            {

                var query = repository.CustomerReviews.Where(x => reviewIds.Contains(x.Id)); 
                                
                foreach( var item in query)
                {
                    item.HelpfullVotesCount = (VoteRate?)item.CustomerReviewVotes.Count(x => (x.VoteIdx == VoteRate.Helpfull) && (x.CustomerReviewId == item.Id));
                    item.UselessVotesCount = (VoteRate?)item.CustomerReviewVotes.Count(x => (x.VoteIdx == VoteRate.Useless) && (x.CustomerReviewId == item.Id));
                    item.TotalVotesCount = (VoteRate?)item.CustomerReviewVotes.Count(x => x.CustomerReviewId == item.Id);
                }
                CommitChanges(repository);
            }
        }

        public void DeleteCustomerReviewVotes(string[] ids)
        {
            using (var repository = _repositoryFactory())
            {
                repository.DeleteCustomerReviewVotes(ids);
                CommitChanges(repository);
                UpdateCustomerReviewVotesCount(ids);
            }
        }
    }
}
