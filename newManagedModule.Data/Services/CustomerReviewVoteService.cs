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
    public class CustomerReviewVoteService : ServiceBase, ICustomerReviewVoteService
    {
        private readonly Func<ICustomerReviewRepository> _repositoryFactory;

        public CustomerReviewVoteService(Func<ICustomerReviewRepository> repositoryFactory)
        {
            _repositoryFactory = repositoryFactory;
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
        }
        public void DeleteCustomerReviewVotes(string[] ids)
        {
            using (var repository = _repositoryFactory())
            {
                repository.DeleteCustomerReviewVotes(ids);
                CommitChanges(repository);
            }
        }

    }
}
