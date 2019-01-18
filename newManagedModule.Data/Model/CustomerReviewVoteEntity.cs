﻿using System;
using System.ComponentModel.DataAnnotations;
using newManagedModule.Core.Model;
using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Data.Model
{
    public class CustomerReviewVoteEntity : AuditableEntity
    {
        [Required]
        [ConcurrencyCheck]
        [StringLength(1024)]
        public string AuthorId { get; set; }

        [Required]
        public int VoteIdx { get; set; }

        public bool IsActive { get; set; }


        #region Link to CustomerReview Entity
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
            customerReviewVote.VoteIdx = VoteIdx;
            customerReviewVote.IsActive = IsActive;
            
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
