using VirtoCommerce.Domain.Commerce.Model.Search;
namespace newManagedModule.Core.Model
{
    public class CustomerReviewVoteSearchCriteria : SearchCriteriaBase
    {
        public string[] CustomerReviewIds { get; set; }
        public bool? IsActive { get; set; }
    }
}
