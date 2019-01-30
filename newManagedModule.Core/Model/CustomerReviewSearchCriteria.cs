using VirtoCommerce.Domain.Commerce.Model.Search;
namespace newManagedModule.Core.Model
{
    public class CustomerReviewSearchCriteria : SearchCriteriaBase
    {
        public string[] ProductsId { get; set; }
        public string AuthorId { get; set; }
        public bool? IsActive { get; set; }
    }
}
