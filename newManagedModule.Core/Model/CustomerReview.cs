using VirtoCommerce.Platform.Core.Common;

namespace CustomerReviewVotes.Core.Model
{
    public class CustomerReview : AuditableEntity
    {
        public string AuthorNickname { get; set; }
        public string Content { get; set; }
        public bool IsActive { get; set; }
        public string ProductId { get; set; }

        public VoteRate? UserReviewRate { get; set; }

        public int HelpfullVotesCount { get; set; }
        public int UselessVotesCount { get; set; }
        public int TotalVotesCount { get; set; }
    }
}
