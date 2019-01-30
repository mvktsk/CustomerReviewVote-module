using System.Data.Entity;
using System.Linq;
using newManagedModule.Data.Model;
using VirtoCommerce.Platform.Data.Infrastructure;
using VirtoCommerce.Platform.Data.Infrastructure.Interceptors;

namespace newManagedModule.Data.Repositories 
{
    public class CustomerReviewRepository : EFRepositoryBase, ICustomerReviewRepository
    {
        public CustomerReviewRepository()
        {
        }

        public CustomerReviewRepository(string nameOrConnectionString, params IInterceptor[] interceptors)
            : base(nameOrConnectionString, null, interceptors)
        {
            Configuration.LazyLoadingEnabled = false;
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CustomerReviewEntity>().ToTable("CustomerReview").HasKey(x => x.Id).Property(x => x.Id);
            modelBuilder.Entity<CustomerReviewVoteEntity>().ToTable("CustomerReviewVote").HasKey(x => x.Id).Property(x => x.Id);

            modelBuilder.Entity<CustomerReviewVoteEntity>()
                .HasRequired<CustomerReviewEntity>(x => x.CustomerReview)
                .WithMany(y => y.CustomerReviewVotes)
                .HasForeignKey<string>(z => z.CustomerReviewId);

            modelBuilder.Entity<CustomerReviewEntity>().Property(x => x.HelpfullVotesCount).HasColumnAnnotation("DefaultValue", 0);
            modelBuilder.Entity<CustomerReviewEntity>().Property(x => x.UselessVotesCount).HasColumnAnnotation("DefaultValue", 0);
            modelBuilder.Entity<CustomerReviewEntity>().Property(x => x.TotalVotesCount).HasColumnAnnotation("DefaultValue", 0);

            base.OnModelCreating(modelBuilder);
        }

        #region CustomerReview Members
        public IQueryable<CustomerReviewEntity> CustomerReviews => GetAsQueryable<CustomerReviewEntity>();
        
        public CustomerReviewEntity[] GetReviewByIds(string[] ids)
        {
            return CustomerReviews.Include(x => x.CustomerReviewVotes).Where(x => ids.Contains(x.Id)).ToArray();
        }

 
        public void DeleteCustomerReviews(string[] ids)
        {
            var items = GetReviewByIds(ids);
            foreach (var item in items)
            {
                Remove(item);
            }
        }
        #endregion

        #region CustomerReviewVote Members
        public IQueryable<CustomerReviewVoteEntity> CustomerReviewVotes => GetAsQueryable<CustomerReviewVoteEntity>();

        public CustomerReviewVoteEntity[] GetVoteByIds(string[] ids)
        {
            return CustomerReviewVotes.Include(x => x.CustomerReview).Where(x => ids.Contains(x.Id)).ToArray();
        }

        public void DeleteCustomerReviewVotes(string[] ids)
        {
            var items = GetVoteByIds(ids);
            foreach (var item in items)
            {
                Remove(item);
            }
        }
        #endregion

    }
}
