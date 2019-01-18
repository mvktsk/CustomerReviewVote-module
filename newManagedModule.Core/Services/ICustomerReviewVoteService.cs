using newManagedModule.Core.Model;

namespace newManagedModule.Core.Services
{
    public interface ICustomerReviewVoteService
    {
        CustomerReviewVote[] GetByIds(string[] ids);

        void SaveCustomerReviewVotes(CustomerReviewVote[] items);
    }
}
