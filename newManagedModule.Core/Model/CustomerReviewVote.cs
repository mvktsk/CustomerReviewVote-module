using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Core.Model
{
    public class CustomerReviewVote : AuditableEntity
    {
        public string VoteAuthorNickname { get; set; }
        public int VoteIdx { get; set; }
        public bool IsActive { get; set; }

        public string CustomerReviewId { get; set; }
        public CustomerReview CustomerReview { get; set; }
    }
   
}
