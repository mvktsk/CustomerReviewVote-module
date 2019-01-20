using System.Collections.ObjectModel;
using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Core.Model
{
    public class CustomerReview : AuditableEntity
    {
        public string AuthorNickname { get; set; }
        public string Content { get; set; }
        public bool IsActive { get; set; }
        public string ProductID { get; set; }

        public int? TotalVoteIdx { get; set; }
        public int TotalVotes { get; set; }

        public virtual ObservableCollection<CustomerReviewVote> CustomerReviewVotes { get; set; }
        

    }
}
