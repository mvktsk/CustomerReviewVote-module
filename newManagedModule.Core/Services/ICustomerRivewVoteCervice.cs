using newManagedModule.Core.Model;

namespace newManagedModule.Core.Services
{
    public interface ICustomerRivewVoteCervice
    {
        CustomerReviewVote[] GetByIds(string[] ids);

        void SaveCustomerReviewVotes(CustomerReviewVote[] items);
    }
}
