using System.Net;
using System.Web.Http;
using System.Web.Http.Description;
using newManagedModule.Core.Model;
using newManagedModule.Core.Services;
using newManagedModule.Web.Security;
using VirtoCommerce.Domain.Commerce.Model.Search;
using VirtoCommerce.Platform.Core.Web.Security;


namespace newManagedModule.Web.Controllers.Api
{
    [RoutePrefix("api/newManagedModule")]
    public class ManagedModuleController : ApiController
    {
        private readonly ICustomerReviewSearchService _customerReviewSearchService;
        private readonly ICustomerReviewService _customerReviewService;

        public ManagedModuleController()
        {
        }

        public ManagedModuleController(ICustomerReviewSearchService customerReviewSearchService,  ICustomerReviewService customerReviewService)
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
            _customerReviewService.DeleteCustomerRevies(ids);
            return StatusCode(HttpStatusCode.NoContent);
        }

        /// <summary>
        /// Return product Customer review search results
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
    }
}
