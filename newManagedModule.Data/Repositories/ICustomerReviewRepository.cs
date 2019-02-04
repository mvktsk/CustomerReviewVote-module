using System.Linq;
using CustomerReviewVotes.Data.Model;
using VirtoCommerce.Platform.Core.Common;

namespace CustomerReviewVotes.Data.Repositories 
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
