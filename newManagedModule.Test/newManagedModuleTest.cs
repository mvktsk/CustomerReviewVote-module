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
        private const string _productId = "testProductId";
        private const string _customerReviewId = "testReviewId";
        private const string _customerReviewVoteId = "testReviewVoteId";

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
        public void CanDoReviewCRUDandSearch()
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

            var criteria = new CustomerReviewSearchCriteria { ProductsId = new[] { _productId } };
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

        [Fact]
        public void CanDoReviewVoteCRUDandSearch()
        {
            //Read non-existing item
            var getVoteByIdsResult = _customerReviewService.GetVoteByIds(new[] { _customerReviewVoteId });
            Assert.NotNull(getVoteByIdsResult);
            Assert.Empty(getVoteByIdsResult);

            //Create new ReviewVote item
            var itemVote = new CustomerReviewVote
            {
                Id = _customerReviewVoteId,
                CustomerReviewId = _customerReviewId,
                CreatedDate = DateTime.Now,
                CreatedBy = "initial data seed",
                VoteIdx = VoteRate.Helpfull

            };

            //Save ReviewVote item for non-existing Review item
            _customerReviewService.SaveCustomerReviewVotes(new[] { itemVote });

            getVoteByIdsResult = _customerReviewService.GetVoteByIds(new[] { _customerReviewVoteId });
            Assert.NotNull(getVoteByIdsResult);
            Assert.Empty(getVoteByIdsResult);

            //Create new Review item
            var itemReview = new CustomerReview
            {
                Id = _customerReviewId,
                ProductID = _productId,
                CreatedDate = DateTime.Now,
                CreatedBy = "initial data seed",
                AuthorNickname = "John Doe",
                Content = "Liked that"
            };

            _customerReviewService.SaveCustomerReviews(new[] { itemReview });
            var getReviewByIdsResult = _customerReviewService.GetReviewByIds(new[] { _customerReviewId });
            Assert.Single(getReviewByIdsResult);

            //Save ReviewVote item for existing Review item
            _customerReviewService.SaveCustomerReviewVotes(new[] { itemVote });

            getVoteByIdsResult = _customerReviewService.GetVoteByIds(new[] { _customerReviewVoteId });
            Assert.Single(getVoteByIdsResult);

            //Check that TotalVotesCount HelpfullVotesCount UselessVotesCount fields of Review item are changed
            itemReview = getReviewByIdsResult[0];
            Assert.Equal(1, itemReview.TotalVotesCount);
            Assert.Equal(1, itemReview.HelpfullVotesCount);
            Assert.Equal(0, itemReview.UselessVotesCount);

            itemVote = getVoteByIdsResult[0];
            Assert.Equal(_customerReviewVoteId, itemVote.Id);

           

            //Delete existing items
            CanDeleteCustomerReviews();
            CanDeleteCustomerReviewVotes();

        }

        [Fact]
        public void CanDeleteCustomerReviewVotes()
        {
            _customerReviewService.DeleteCustomerReviewVotes(new[] { _customerReviewVoteId });
            var getByIdsResult = _customerReviewService.GetVoteByIds(new[] { _customerReviewVoteId });
            Assert.NotNull(getByIdsResult);
            Assert.Empty(getByIdsResult);

        }

    }
}
