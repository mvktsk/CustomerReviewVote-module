using System;
using System.Data.Entity;
using newManagedModule.Core.Model;
using newManagedModule.Core.Services;
using newManagedModule.Data.Services;
using newManagedModule.Data.Repositories;
using newManagedModule.Data.Migrations;
using VirtoCommerce.Platform.Testing.Bases;
using VirtoCommerce.Platform.Data.Infrastructure;
using VirtoCommerce.Platform.Data.Infrastructure.Interceptors;
using Xunit;

namespace newManagedModule.Test
{
    public class NewManagedModuleTest : FunctionalTestBase
    {
        private const string _productId        = "testProductId";
        private const string _customerReviewId = "testReviewId";

        private ICustomerReviewService _customerReviewService => new CustomerReviewService(GetRepository);
        private ICustomerReviewSearchService _customerReviewSearchService => new CustomerReviewSearchService(GetRepository, _customerReviewService);

        public NewManagedModuleTest()
        {
            ConnectionString = "VirtoCommerce0";
        }
        

        protected ICustomerReviewRepository GetRepository()
        {
            var repository = new CustomerReviewRepository(ConnectionString, new EntityPrimaryKeyGeneratorInterceptor(), new AuditableInterceptor(null));
            EnsureDatabaseInitialized(() => new CustomerReviewRepository(ConnectionString), () => Database.SetInitializer(new SetupDatabaseInitializer<CustomerReviewRepository, Configuration>()));
            return repository;
        }


        [Fact]
        public void CanDoCRUDandSearch()
        {
            //Read non-existing item
            var getByIdsResult = _customerReviewService.GetReviewByIds(new[] { _customerReviewId });
            Assert.NotNull(getByIdsResult);
            Assert.Empty(getByIdsResult);

            //Create new item
            var item = new CustomerReview
            {
                Id = _customerReviewId,
                ProductID = _productId,
                CreatedDate = DateTime.Now,
                CreatedBy = "initial data seed",
                AuthorNickname = "John Doe",
                Content = "Liked that"
            };

            _customerReviewService.SaveCustomerReviews(new[] { item });

            getByIdsResult = _customerReviewService.GetReviewByIds(new[] { _customerReviewId });
            Assert.Single(getByIdsResult);

            item = getByIdsResult[0];
            Assert.Equal(_customerReviewId, item.Id);

            //Update existing item
            var updatedConent = "Updated content";
            Assert.NotEqual(updatedConent, item.Content);

            item.Content = updatedConent;
            _customerReviewService.SaveCustomerReviews(new[] { item });
            getByIdsResult = _customerReviewService.GetReviewByIds(new[] { _customerReviewId });
            Assert.Single(getByIdsResult);

            item = getByIdsResult[0];
            Assert.Equal(updatedConent, item.Content);

            //Search by creteria
            Assert.Throws<ArgumentNullException>(() => _customerReviewSearchService.SearchCustomerReviews(null));

            var criteria = new CustomerReviewSearchCriteria { ProductsID = new[] { _productId } };
            var searchResult = _customerReviewSearchService.SearchCustomerReviews(criteria);

            Assert.NotNull(searchResult);
            Assert.Equal(1, searchResult.TotalCount);
            Assert.Single(searchResult.Results);

            //Delete existing item
            CanDeleteCustomerReviews();

        }
        [Fact]
        public void CanDeleteCustomerReviews()
        {
            _customerReviewService.DeleteCustomerReviews(new[] { _customerReviewId });
            var getByIdsResult = _customerReviewService.GetReviewByIds(new[] { _customerReviewId });
            Assert.NotNull(getByIdsResult);
            Assert.Empty(getByIdsResult);

        }
    }
}
