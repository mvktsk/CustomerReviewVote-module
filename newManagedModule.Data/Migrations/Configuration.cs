using CustomerReviewVotes.Core.Model;

namespace CustomerReviewVotes.Data.Migrations
{
    using CustomerReviewVotes.Data.Model;
    using System;
    using System.Data.Entity.Migrations;

    public sealed class Configuration : DbMigrationsConfiguration<CustomerReviewVotes.Data.Repositories.CustomerReviewRepository>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
            MigrationsDirectory = @"Migrations";
        }

        protected override void Seed(CustomerReviewVotes.Data.Repositories.CustomerReviewRepository context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data.
            var now = DateTime.UtcNow;
            context.AddOrUpdate(new CustomerReviewEntity { Id = "1", ProductId = "8b7b07c165924a879392f4f51a6f7ce0", CreatedDate = now, CreatedBy = "initial data seed", AuthorNickname = "Andrew Peters", Content = "Super!" });
            context.AddOrUpdate(new CustomerReviewEntity { Id = "2", ProductId = "8b7b07c165924a879392f4f51a6f7ce0", CreatedDate = now, CreatedBy = "initial data seed", AuthorNickname = "Mr. Pumpkin", Content = "So so" });
            context.AddOrUpdate(new CustomerReviewEntity { Id = "3", ProductId = "8b7b07c165924a879392f4f51a6f7ce0", CreatedDate = now, CreatedBy = "initial data seed", AuthorNickname = "John Doe", Content = "Liked that" });
            context.AddOrUpdate(new CustomerReviewVoteEntity { Id = "1", AuthorId = "1", CustomerReviewId = "1", ReviewRate = VoteRate.Helpfull, CreatedDate = now, CreatedBy = "initial data seed" });
            context.AddOrUpdate(new CustomerReviewVoteEntity { Id = "2", AuthorId = "2", CustomerReviewId = "1", ReviewRate = VoteRate.Useless, CreatedDate = now, CreatedBy = "initial data seed" });
            context.AddOrUpdate(new CustomerReviewVoteEntity { Id = "3", AuthorId = "3", CustomerReviewId = "1", ReviewRate = VoteRate.Helpfull, CreatedDate = now, CreatedBy = "initial data seed" });
            context.AddOrUpdate(new CustomerReviewVoteEntity { Id = "4", AuthorId = "1", CustomerReviewId = "2", ReviewRate = VoteRate.Helpfull, CreatedDate = now, CreatedBy = "initial data seed" });
        }
    }
}
