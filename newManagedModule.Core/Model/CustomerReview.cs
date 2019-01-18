using System.Collections.ObjectModel;
using VirtoCommerce.Platform.Core.Common;

namespace newManagedModule.Core.Model
{
    public class CustomerReview : AuditableEntity
    {
        public string AuthorNickname { get; set; }
        public string Content { get; set; }
        public bool   IsActive { get; set; }
        public string ProductID { get; set; }

        
    }
}
