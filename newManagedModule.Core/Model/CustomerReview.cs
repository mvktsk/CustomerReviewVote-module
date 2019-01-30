using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Core.Model
{
    public class CustomerReview : AuditableEntity
    {
        public string AuthorNickname { get; set; }
        public string Content { get; set; }
        public bool IsActive { get; set; }
        public string ProductID { get; set; }

        public VoteRate? UserVoteIdx { get; set; }

        public int HelpfullVotesCount { get; set; }
        public int UselessVotesCount { get; set; }
        public int TotalVotesCount { get; set; }
    }
}
