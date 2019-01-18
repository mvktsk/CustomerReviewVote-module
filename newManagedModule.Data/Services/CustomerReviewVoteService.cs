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
    class CustomerReviewVoteService : ServiceBase, ICustomerReviewVoteService
    {
        private readonly Func<ICustomerReviewVoteRepository> _repositoryFactory;

        public CustomerReviewVote[] GetByIds(string[] ids)
        {
            throw new NotImplementedException();
        }

        public void SaveCustomerReviewVotes(CustomerReviewVote[] items)
        {
            throw new NotImplementedException();
        }
    }
}
