using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using newManagedModule.Core.Model;
using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Data.Model
{
    public class CustomerReviewVoteEntity : AuditableEntity
    {
        [Required]
        [StringLength(1024)]
        [Index("IX_AuthorIdAndCustomerReviewId", 1, IsUnique = true)]
        public string AuthorId { get; set; }

        [Required]
        public VoteRate VoteIdx { get; set; }

        public bool IsActive { get; set; }


        #region Navigation Properties
        [Required]
        [StringLength(128)]
        [Index("IX_AuthorIdAndCustomerReviewId", 2, IsUnique = true)]
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
            customerReviewVote.VoteIdx = VoteIdx;
            customerReviewVote.IsActive = IsActive;
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
            VoteIdx = customerReviewVote.VoteIdx;
            IsActive = customerReviewVote.IsActive;
            CustomerReviewId = customerReviewVote.CustomerReviewId;

            return this;
        }

        public virtual void Patch(CustomerReviewVoteEntity target)
        {
            if (target == null)
                throw new ArgumentNullException(nameof(target));

            target.AuthorId = AuthorId;
            target.VoteIdx = VoteIdx;
            target.IsActive = IsActive;
        }



    }
}
