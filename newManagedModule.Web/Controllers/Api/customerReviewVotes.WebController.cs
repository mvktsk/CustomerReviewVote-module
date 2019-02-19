using CustomerReviewVotes.Core.Model;
using CustomerReviewVotes.Core.Services;
using CustomerReviewVotes.Web.Security;
using System.Net;
using System.Web.Http;
using System.Web.Http.Description;
using VirtoCommerce.Domain.Commerce.Model.Search;
using VirtoCommerce.Platform.Core.Web.Security;


namespace CustomerReviewVotes.Web.Controllers.Api
{
    [RoutePrefix("api/customerReview")]
    public class ManagedModuleController : ApiController
    {
        private readonly ICustomerReviewSearchService _customerReviewSearchService;
        private readonly ICustomerReviewService _customerReviewService;

        public ManagedModuleController()
        {
        }

        public ManagedModuleController(ICustomerReviewSearchService customerReviewSearchService, ICustomerReviewService customerReviewService)
        {
            _customerReviewSearchService = customerReviewSearchService;
            _customerReviewService = customerReviewService;
        }

        /// <summary>
        /// Return product Customer review search results
        /// </summary>
        ///<param name="criteria">Search criteria</param>
        ///<returns></returns>
        [HttpPost]
        [Route("search")]
        [ResponseType(typeof(GenericSearchResult<CustomerReview>))]
        [CheckPermission(Permission = PredefinedPermissions.CustomerReviewRead)]
        public IHttpActionResult SearchCustomerReviews(CustomerReviewSearchCriteria criteria)
        {
            var result = _customerReviewSearchService.SearchCustomerReviews(criteria);
            return Ok(result);
        }

        /// <summary>
        /// Create new or update existing customer review
        /// </summary>
        /// <param name="customerRevies">Customer reviews</param>
        /// <returns></returns>
        [HttpPost]
        [Route("")]
        [ResponseType(typeof(void))]
        [CheckPermission(Permission = PredefinedPermissions.CustomerReviewUpdate)]
        public IHttpActionResult Update(CustomerReview[] customerReviews)
        {
            _customerReviewService.SaveCustomerReviews(customerReviews);
            return StatusCode(HttpStatusCode.NoContent);
        }

        ///<summary>
        ///Delete Customer Reviews by IDs
        ///</summary>
        ///<param name="ids">IDs</param>
        ///<returns></returns>
        [HttpDelete]
        [Route("")]
        [ResponseType(typeof(void))]
        [CheckPermission(Permission = PredefinedPermissions.CustomerReviewDelete)]
        public IHttpActionResult Delete([FromUri] string[] ids)
        {
            _customerReviewService.DeleteCustomerReviews(ids);
            return StatusCode(HttpStatusCode.NoContent);
        }

        /// <summary>
        /// Return product Customer review votes search results
        /// </summary>
        ///<param name="criteria">Search criteria</param>
        ///<returns></returns>
        [HttpPost]
        [Route("vote/search")]
        [ResponseType(typeof(GenericSearchResult<CustomerReviewVote>))]
        [CheckPermission(Permission = PredefinedPermissions.CustomerReviewRead)]
        public IHttpActionResult SearchCustomerReviewVotes(CustomerReviewVoteSearchCriteria criteria)
        {
            var result = _customerReviewSearchService.SearchCustomerReviewVotes(criteria);
            return Ok(result);
        }

        /// <summary>
        /// Create new or update existing customer review
        /// </summary>
        /// <param name="customerRevies">Customer reviews</param>
        /// <returns></returns>
        [HttpPost]
        [Route("vote")]
        [ResponseType(typeof(void))]
        [CheckPermission(Permission = PredefinedPermissions.CustomerReviewUpdate)]
        public IHttpActionResult UpdateVotes(CustomerReviewVote[] customerReviewVotes)
        {
            _customerReviewService.SaveCustomerReviewVotes(customerReviewVotes);
            return StatusCode(HttpStatusCode.NoContent);
        }

        ///<summary>
        ///Delete Customer Review Votes by IDs
        ///</summary>
        ///<param name="ids">IDs</param>
        ///<returns></returns>
        [HttpDelete]
        [Route("vote")]
        [ResponseType(typeof(void))]
        [CheckPermission(Permission = PredefinedPermissions.CustomerReviewDelete)]
        public IHttpActionResult DeleteVotes([FromUri] string[] ids)
        {
            _customerReviewService.DeleteCustomerReviewVotes(ids);
            return StatusCode(HttpStatusCode.NoContent);
        }
    }
}
