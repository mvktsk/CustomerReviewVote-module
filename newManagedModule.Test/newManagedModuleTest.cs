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
        private const string _productID        = "testProductID";
        private const string _customerReviewID = "testReviewID";

        private ICustomerReviewService _customerReviewService => new CustomerReviewService(GetRepository);
        private ICustomerReviewVoteService _customerReviewVoteService => new CustomerReviewVoteService(GetRepository);
        private ICustomerReviewSearchService _customerReviewSearchService => new CustomerReviewSearchService(GetRepository, _customerReviewService, _customerReviewVoteService);

        public NewManagedModuleTest()
        {
            ConnectionString = "VirtoCommerce";
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
            var getByIdsResult = _customerReviewService.GetReviewByIds(new[] { _customerReviewID });
            Assert.NotNull(getByIdsResult);
            Assert.Empty(getByIdsResult);

            //Create new item
            var item = new CustomerReview
            {
                Id = _customerReviewID,
                ProductID = _productID,
                CreatedDate = DateTime.Now,
                CreatedBy = "initial data seed",
                AuthorNickname = "John Doe",
                Content = "Liked that"
            };

            _customerReviewService.SaveCustomerReviews(new[] { item });

            getByIdsResult = _customerReviewService.GetReviewByIds(new[] { _customerReviewID });
            Assert.Single(getByIdsResult);

            item = getByIdsResult[0];
            Assert.Equal(_customerReviewID, item.Id);

            //Update existing item
            var updatedConent = "Updated content";
            Assert.NotEqual(updatedConent, item.Content);

            item.Content = updatedConent;
            _customerReviewService.SaveCustomerReviews(new[] { item });
            getByIdsResult = _customerReviewService.GetReviewByIds(new[] { _customerReviewID });
            Assert.Single(getByIdsResult);

            item = getByIdsResult[0];
            Assert.Equal(updatedConent, item.Content);

            //Search by creteria
            Assert.Throws<ArgumentNullException>(() => _customerReviewSearchService.SearchCustomerReviews(null));

            var criteria = new CustomerReviewSearchCriteria { ProductsID = new[] { _productID } };
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
            _customerReviewService.DeleteCustomerReviews(new[] { _customerReviewID });
            var getByIdsResult = _customerReviewService.GetReviewByIds(new[] { _customerReviewID });
            Assert.NotNull(getByIdsResult);
            Assert.Empty(getByIdsResult);

        }
    }
}
