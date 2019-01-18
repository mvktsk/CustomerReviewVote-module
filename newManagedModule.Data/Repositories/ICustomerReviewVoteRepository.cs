using System.Linq;
using newManagedModule.Data.Model;
using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Data.Repositories
{
    public interface ICustomerReviewVoteRepository : IRepository
    {
        IQueryable<CustomerReviewVoteEntity> CustomerReviewVotes { get; }

        CustomerReviewVoteEntity[] GetByIds(string[] ids);
        CustomerReviewVoteEntity[] GetByReviewIds(string[] ids);
        void DeleteCustomerReviewVotes(string[] ids);
    }
}
