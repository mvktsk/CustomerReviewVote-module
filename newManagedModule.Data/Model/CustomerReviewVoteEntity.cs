using System;
using System.ComponentModel.DataAnnotations;
using CustomerReviewVotes.Core.Model;
using VirtoCommerce.Platform.Core.Common;

namespace CustomerReviewVotes.Data.Model
{
    public class CustomerReviewVoteEntity : AuditableEntity
    {
        [Required]
        [StringLength(1024)]
        public string AuthorId { get; set; }

        [Required]
        public VoteRate ReviewRate { get; set; }

        #region Navigation Properties
        [Required]
        [StringLength(128)]
        public string CustomerReviewId { get; set; }

        public virtual CustomerReviewEntity CustomerReview { get; set; }
        #endregion

        public virtual CustomerReviewVote ToModel(CustomerReviewVote customerReviewVote)
        {
            if (customerReviewVote == null)
                throw new ArgumentNullException(nameof(customerReviewVote));

            customerReviewVote.Id = Id;
            customerReviewVote.CreatedBy = CreatedBy;
            customerReviewVote.ModifiedBy = ModifiedBy;
            customerReviewVote.ModifiedDate = ModifiedDate;

            customerReviewVote.AuthorId = AuthorId;
            customerReviewVote.ReviewRate = ReviewRate;
            customerReviewVote.CustomerReviewId = CustomerReviewId;

            return customerReviewVote;
        }

        public virtual CustomerReviewVoteEntity FromModel(CustomerReviewVote customerReviewVote, PrimaryKeyResolvingMap pkMap)
        {
            if (customerReviewVote == null)
                throw new ArgumentNullException(nameof(customerReviewVote));

            pkMap.AddPair(customerReviewVote, this);

            Id = customerReviewVote.Id;
            CreatedBy = customerReviewVote.CreatedBy;
            CreatedDate = customerReviewVote.CreatedDate;
            ModifiedBy = customerReviewVote.ModifiedBy;
            ModifiedDate = customerReviewVote.ModifiedDate;

            AuthorId = customerReviewVote.AuthorId;
            ReviewRate = customerReviewVote.ReviewRate;
            CustomerReviewId = customerReviewVote.CustomerReviewId;

            return this;
        }

        public virtual void Patch(CustomerReviewVoteEntity target)
        {
            if (target == null)
                throw new ArgumentNullException(nameof(target));

            target.AuthorId = AuthorId;
            target.ReviewRate = ReviewRate;
            
        }



    }
}
