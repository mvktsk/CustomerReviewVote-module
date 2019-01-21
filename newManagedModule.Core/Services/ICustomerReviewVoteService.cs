using newManagedModule.Core.Model;

namespace newManagedModule.Core.Services
{
    public interface ICustomerReviewVoteService
    {
        CustomerReviewVote[] GetVoteByIds(string[] ids);

        void SaveCustomerReviewVotes(CustomerReviewVote[] items);

        void DeleteCustomerReviewVotes(string[] ids);
    }
}
