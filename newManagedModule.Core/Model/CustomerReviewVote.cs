using VirtoCommerce.Platform.Core.Common;

namespace CustomerReviewVotes.Core.Model
{
    
    public class CustomerReviewVote : AuditableEntity
    {
        public string AuthorId { get; set; }
        public VoteRate ReviewRate { get; set; }
        public string CustomerReviewId { get; set; }

    }
   
}
