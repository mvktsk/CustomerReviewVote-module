using System.Data.Entity;
using System.Linq;
using newManagedModule.Data.Model;
using VirtoCommerce.Platform.Data.Infrastructure;
using VirtoCommerce.Platform.Data.Infrastructure.Interceptors;

namespace newManagedModule.Data.Repositories
{
    public class CustomerReviewVoteRepository : EFRepositoryBase, ICustomerReviewVoteRepository
    {
        public CustomerReviewVoteRepository()
        {
        }

        public CustomerReviewVoteRepository(string nameOrConnectionString, params IInterceptor[] interceptors)
            : base(nameOrConnectionString, null, interceptors)
        {
            Configuration.LazyLoadingEnabled = false;
        }

        public IQueryable<CustomerReviewVoteEntity> CustomerReviewVotes => GetAsQueryable<CustomerReviewVoteEntity>();

        public void DeleteCustomerReviewVotes(string[] ids)
        {
            var items = GetByIds(ids);
            foreach (var item in items)
            {
                Remove(item);
            }
        }

        public CustomerReviewVoteEntity[] GetByIds(string[] ids)
        {
            return CustomerReviewVotes.Where(x => ids.Contains(x.Id)).ToArray();
        }

        public CustomerReviewVoteEntity[] GetByReviewIds(string[] ids)
        {
            return CustomerReviewVotes.Where(x => ids.Contains(x.CustomerReviewId)).ToArray();
        }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CustomerReviewVoteEntity>().ToTable("CustomerReviewVote").HasKey(x => x.Id).Property(x => x.Id);

            base.OnModelCreating(modelBuilder);
        }

    }


}
