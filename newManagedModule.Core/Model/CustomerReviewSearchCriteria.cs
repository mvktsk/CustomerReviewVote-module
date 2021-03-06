﻿using VirtoCommerce.Domain.Commerce.Model.Search;
namespace CustomerReviewVotes.Core.Model
{
    public class CustomerReviewSearchCriteria : SearchCriteriaBase
    {
        public string[] ProductIds { get; set; }
        public string AuthorId { get; set; }
        public bool? IsActive { get; set; }
    }
}
