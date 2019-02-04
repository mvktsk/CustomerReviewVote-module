using CustomerReviewVotes.Core.Model;
using VirtoCommerce.Domain.Commerce.Model.Search;

namespace CustomerReviewVotes.Core.Services
{
    public interface ICustomerReviewSearchService
    {
        GenericSearchResult<CustomerReview> SearchCustomerReviews(CustomerReviewSearchCriteria criteria);
        GenericSearchResult<CustomerReviewVote> SearchCustomerReviewVotes(CustomerReviewVoteSearchCriteria criteria);
    }
}
