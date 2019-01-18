using newManagedModule.Core.Model;
using VirtoCommerce.Domain.Commerce.Model.Search;

namespace newManagedModule.Core.Services
{
    public interface ICustomerReviewSearchService
    {
        GenericSearchResult<CustomerReview> SearchCustomerReviews(CustomerReviewSearchCriteria criteria);
        GenericSearchResult<CustomerReviewVote> SearchCustomerReviewVotes(CustomerReviewVoteSearchCriteria criteria);
    }
}
