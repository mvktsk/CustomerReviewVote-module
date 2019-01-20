namespace newManagedModule.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddCustomerReviewVote : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CustomerReviewVote",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        AuthorId = c.String(nullable: false, maxLength: 1024),
                        VoteIdx = c.Int(nullable: false),
                        IsActive = c.Boolean(nullable: false),
                        CustomerReviewId = c.String(nullable: false, maxLength: 128),
                        CreatedDate = c.DateTime(nullable: false),
                        ModifiedDate = c.DateTime(),
                        CreatedBy = c.String(maxLength: 64),
                        ModifiedBy = c.String(maxLength: 64),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.CustomerReview", t => t.CustomerReviewId, cascadeDelete: true)
                .Index(t => t.CustomerReviewId);
            
            AddColumn("dbo.CustomerReview", "TotalVoteIdx", c => c.Int());
            AddColumn("dbo.CustomerReview", "TotalVotes", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CustomerReviewVote", "CustomerReviewId", "dbo.CustomerReview");
            DropIndex("dbo.CustomerReviewVote", new[] { "CustomerReviewId" });
            DropColumn("dbo.CustomerReview", "TotalVotes");
            DropColumn("dbo.CustomerReview", "TotalVoteIdx");
            DropTable("dbo.CustomerReviewVote");
        }
    }
}
