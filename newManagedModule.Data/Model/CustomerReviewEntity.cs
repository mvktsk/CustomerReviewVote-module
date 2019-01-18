using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.ObjectModel;
using newManagedModule.Core.Model;
using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Data.Model
{
    public class CustomerReviewEntity: AuditableEntity
    {
        [StringLength(128)]
        public string AuthorNickname { get; set; }

        [Required]
        [StringLength(1024)]
        public string Content { get; set; }

        public bool IsActive { get; set; }

        [Required]
        [StringLength(128)]
        public string ProductId { get; set; }

        
        public int? TotalVoteIdx { get; set; }

        #region Link To CustomerReviewVote Entity
        public virtual ObservableCollection<CustomerReviewVoteEntity> CustomerReviewVotes { get; set; }
        #endregion


        public virtual CustomerReview ToModel(CustomerReview customerReview)
        {
            if (customerReview == null)
                throw new ArgumentNullException(nameof(customerReview));

            customerReview.Id = Id;
            customerReview.CreatedBy = CreatedBy;
            customerReview.ModifiedBy = ModifiedBy;
            customerReview.ModifiedDate = ModifiedDate;

            customerReview.AuthorNickname = AuthorNickname;
            customerReview.Content = Content;
            customerReview.IsActive = IsActive;
            customerReview.ProductID = ProductId;

            
//            customerReview.CustomerReviewVotes = CustomerReviewVotes;


            return customerReview;
        }

        public virtual CustomerReviewEntity FromModel (CustomerReview customerReview, PrimaryKeyResolvingMap pkMap)
        {
            if (customerReview == null)
                throw new ArgumentNullException(nameof(customerReview));

            pkMap.AddPair(customerReview, this);

            Id = customerReview.Id;
            CreatedBy = customerReview.CreatedBy;
            CreatedDate = customerReview.CreatedDate;
            ModifiedBy = customerReview.ModifiedBy;
            ModifiedDate = customerReview.ModifiedDate;

            AuthorNickname = customerReview.AuthorNickname;
            Content = customerReview.Content;
            IsActive = customerReview.IsActive;
            ProductId = customerReview.ProductID;

            TotalVoteIdx = customerReview.TotalVoteIdx;

            //CustomerReviewVotes.CollectionChanged

            return this;
        }

        public virtual void Patch(CustomerReviewEntity target)
        {
            if (target == null)
                throw new ArgumentNullException(nameof(target));

            target.AuthorNickname = AuthorNickname;
            target.Content = Content;
            target.IsActive = IsActive;
            target.ProductId = ProductId;
            target.TotalVoteIdx = TotalVoteIdx;

        }
    }
}
