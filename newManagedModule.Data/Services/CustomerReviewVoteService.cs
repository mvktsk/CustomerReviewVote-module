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
        private readonly Func<ICustomerReviewVoteRepository> _repositoryFactory;

        public CustomerReviewVoteService(Func<ICustomerReviewVoteRepository> repositoryFactory)
        {
            _repositoryFactory = repositoryFactory;
        }

        public CustomerReviewVote[] GetByIds(string[] ids)
        {
            using (var repository = _repositoryFactory())
            {
                return repository.GetByIds(ids).Select(x => x.ToModel(AbstractTypeFactory<CustomerReviewVote>.TryCreateInstance())).ToArray();
            }
        }

        public void SaveCustomerReviewVotes(CustomerReviewVote[] items)
        {
            throw new NotImplementedException();
        }
    }
}
