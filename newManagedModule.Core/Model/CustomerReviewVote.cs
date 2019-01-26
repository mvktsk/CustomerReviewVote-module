using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Core.Model
{
    public enum VoteRate
    {
        Helpfull = 1, // Positive customer review vote
        Useless = -1 // Negative customer review vote
    }
    public class CustomerReviewVote : AuditableEntity
    {
        public string AuthorId { get; set; }
        public VoteRate VoteIdx { get; set; }
        public bool IsActive { get; set; }
        public string CustomerReviewId { get; set; }

    }
   
}
