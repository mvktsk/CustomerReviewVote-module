using newManagedModule.Core.Model;

namespace newManagedModule.Core.Services
{
    public interface ICustomerReviewService
    {
        CustomerReview[] GetReviewByIds(string[] ids);

        void SaveCustomerReviews(CustomerReview[] items);

        void DeleteCustomerReviews(string[] ids);
    }
}
