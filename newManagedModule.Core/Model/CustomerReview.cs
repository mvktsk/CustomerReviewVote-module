using System.Collections.ObjectModel;
using System.Collections.Generic;
using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Core.Model
{
    public class CustomerReview : AuditableEntity
    {
        public string AuthorNickname { get; set; }
        public string Content { get; set; }
        public bool IsActive { get; set; }
        public string ProductID { get; set; }

        public int PositiveVotesCount { get; set; }
        public int NegativeVotesCount { get; set; }
        public int TotalVotesCount { get; set; }

        public virtual ICollection<CustomerReviewVote> CustomerReviewVotes { get; set; }
        

    }
}
