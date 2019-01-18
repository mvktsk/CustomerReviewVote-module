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
        [ConcurrencyCheck]
        [StringLength(1024)]
        public string VoteAuthorNickname { get; set; }

        [Required]
        public int VoteIdx { get; set; }

        public bool IsActive { get; set; }

        [Required]
        [StringLength(128)]
        public string CustomerReviewID { get; set; }

        

    }
}
