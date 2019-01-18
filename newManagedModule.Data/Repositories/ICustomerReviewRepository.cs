using System.Linq;
using newManagedModule.Data.Model;
using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Data.Repositories 
{
    public interface ICustomerReviewRepository : IRepository
    {
        IQueryable<CustomerReviewEntity> CustomerReviews { get; }

        CustomerReviewEntity[] GetByIds(string[] ids);
        void DeleteCustomerReviews(string[] ids);
    }
}
