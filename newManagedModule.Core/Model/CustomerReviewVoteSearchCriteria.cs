using VirtoCommerce.Domain.Commerce.Model.Search;
namespace CustomerReviewVotes.Core.Model
{
    public class CustomerReviewVoteSearchCriteria : SearchCriteriaBase
    {
        public string[] CustomerReviewIds { get; set; }
    }
}
