using VirtoCommerce.Domain.Commerce.Model.Search;
namespace newManagedModule.Core.Model
{
    public class CustomerReviewSearchCriteria : SearchCriteriaBase
    {
        public string[] ProductsID { get; set; }
        public bool? IsActive { get; set; }
    }
}
