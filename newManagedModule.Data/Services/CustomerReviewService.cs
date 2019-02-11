using CustomerReviewVotes.Core.Model;
using CustomerReviewVotes.Core.Services;
using CustomerReviewVotes.Data.Model;
using CustomerReviewVotes.Data.Repositories;
using System;
using System.Linq;
using VirtoCommerce.Platform.Core.Common;
using VirtoCommerce.Platform.Data.Infrastructure;

namespace CustomerReviewVotes.Data.Services
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

                    int asd = 10;
                    var reveiwIds = items.Select(x => x.CustomerReviewId).ToArray();
                    UpdateCustomerReviewVotesCount(repository, reveiwIds);

                    CommitChanges(repository);
                    pkMap.ResolvePrimaryKeys();
                }
            }

        }

        public void UpdateCustomerReviewVotesCount(ICustomerReviewRepository repository, string[] reviewIds)
        {
            var query = repository.GetReviewByIds(reviewIds);

            foreach (var item in query)
            {
                item.HelpfullVotesCount = item.CustomerReviewVotes.Count(x => (x.ReviewRate == VoteRate.Helpfull) && (x.CustomerReviewId == item.Id));
                item.UselessVotesCount = item.CustomerReviewVotes.Count(x => (x.ReviewRate == VoteRate.Useless) && (x.CustomerReviewId == item.Id));
                item.TotalVotesCount = item.CustomerReviewVotes.Count(x => x.CustomerReviewId == item.Id);
            }
        }

        public void DeleteCustomerReviewVotes(string[] ids)
        {
            using (var repository = _repositoryFactory())
            {

                var reveiwIds = repository.GetVoteByIds(ids).Select(x => x.CustomerReviewId).ToArray();

                repository.DeleteCustomerReviewVotes(ids);
                UpdateCustomerReviewVotesCount(repository, reveiwIds);
                CommitChanges(repository);
            }
        }

        public void DeleteCustomerReviewVotesTestSQ(string[] ids)
        {
            using (var repository = _repositoryFactory())
            {

                var reveiwIds = repository.GetVoteByIds(ids).Select(x => x.CustomerReviewId).ToArray();

                repository.DeleteCustomerReviewVotes(ids);
                UpdateCustomerReviewVotesCount(repository, reveiwIds);
                CommitChanges(repository);
            }
        }

        public void DeleteCustomerReviewVotesTestSQ2(string[] ids)
        {
            using (var repository = _repositoryFactory())
            {

                var reveiwIds = repository.GetVoteByIds(ids).Select(x => x.CustomerReviewId).ToArray();

                repository.DeleteCustomerReviewVotes(ids);
                UpdateCustomerReviewVotesCount(repository, reveiwIds);
                CommitChanges(repository);
            }
        }
    }
}
