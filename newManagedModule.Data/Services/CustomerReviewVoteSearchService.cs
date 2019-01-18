using System;
using System.Linq;
using newManagedModule.Core.Model;
using newManagedModule.Core.Services;
using newManagedModule.Data.Repositories;
using VirtoCommerce.Domain.Commerce.Model.Search;
using VirtoCommerce.Platform.Core.Common;
using VirtoCommerce.Platform.Data.Infrastructure;

namespace newManagedModule.Data.Services
{
    public class CustomerReviewVoteSearchService : ServiceBase, ICustomerReviewVoteSearchService
    {
        private readonly Func<ICustomerReviewVoteRepository> _repositoryFactory;
        private readonly ICustomerReviewVoteService _customerReviewVoteService;

        public CustomerReviewVoteSearchService(Func<ICustomerReviewVoteRepository> repositoryFactory, ICustomerReviewVoteService customerReviewVoteService)
        {
            _repositoryFactory = repositoryFactory;
            _customerReviewVoteService = customerReviewVoteService;
        }

        public GenericSearchResult<CustomerReviewVote> SearchCustomerReviewVotes(CustomerReviewVoteSearchCriteria criteria)
        {
            if (criteria == null)
            {
                throw new ArgumentNullException($"{nameof(criteria)} must be set");
            }

            var retVal = new GenericSearchResult<CustomerReviewVote>();

            using (var repository = _repositoryFactory())
            {
                var query = repository.CustomerReviewVotes;

                if (!criteria.CustomerReviewIds.IsNullOrEmpty())
                {
                    query = query.Where(x => criteria.CustomerReviewIds.Contains(x.CustomerReviewId));
                }

                if (criteria.IsActive.HasValue)
                {
                    query = query.Where(x => x.IsActive == criteria.IsActive);
                }

                var sortInfos = criteria.SortInfos;
                if (sortInfos.IsNullOrEmpty())
                {
                    sortInfos = new[] { new SortInfo { SortColumn = "CreatedDate", SortDirection = SortDirection.Descending } };
                }
                query = query.OrderBySortInfos(sortInfos);

                retVal.TotalCount = query.Count();

                var customerReviewVoteIds = query.Skip(criteria.Skip)
                                 .Take(criteria.Take)
                                 .Select(x => x.Id)
                                 .ToList();

                retVal.Results = _customerReviewVoteService.GetByIds(customerReviewVoteIds.ToArray())
                                                       .OrderBy(x => customerReviewVoteIds.IndexOf(x.Id)).ToList();

                return retVal;
            }
        }
    }
}
