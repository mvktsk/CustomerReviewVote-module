using System.Linq;
using newManagedModule.Data.Model;
using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Data.Repositories 
{
    public interface ICustomerReviewRepository : IRepository
    {
        IQueryable<CustomerReviewEntity> CustomerReviews { get; }
        IQueryable<CustomerReviewVoteEntity> CustomerReviewVotes { get; }

        CustomerReviewEntity[] GetReviewByIds(string[] ids);
        void DeleteCustomerReviews(string[] ids);

        CustomerReviewVoteEntity[] GetVoteByIds(string[] ids);
        void DeleteCustomerReviewVotes(string[] ids);
    }
}
