using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Core.Model
{
    public class CustomerReview : AuditableEntity
    {
        public string AuthorNickname { get; set; }
        public string Content { get; set; }
        public bool IsActive { get; set; }
        public string ProductID { get; set; }

        public VoteRate? HelpfullVotesCount { get; set; }
        public VoteRate? UselessVotesCount { get; set; }
        public VoteRate? TotalVotesCount { get; set; }
    }
}
