using newManagedModule.Core.Model;
using VirtoCommerce.Domain.Commerce.Model.Search;


namespace newManagedModule.Core.Services
{
    public interface ICustomerReviewVoteSearchService
    {
        GenericSearchResult<CustomerReviewVote> SearchCustomerReviewVotes(CustomerReviewVoteSearchCriteria criteria);
    }
}
