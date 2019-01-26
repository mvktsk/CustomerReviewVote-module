namespace newManagedModule.Data.Migrations
{
    using System;
    using System.Collections.Generic;
    using System.Data.Entity.Infrastructure.Annotations;
    using System.Data.Entity.Migrations;
    
    public partial class Add_CustomerReviewVote : DbMigration
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
                .Index(t => new { t.AuthorId, t.CustomerReviewId }, unique: true, name: "IX_AuthorIdAndCustomerReviewId");
            
            AddColumn("dbo.CustomerReview", "HelpfullVotesCount", c => c.Int(nullable: false,
                annotations: new Dictionary<string, AnnotationValues>
                {
                    { 
                        "DefaultValue",
                        new AnnotationValues(oldValue: null, newValue: "0")
                    },
                }));
            AddColumn("dbo.CustomerReview", "UselessVotesCount", c => c.Int(nullable: false,
                annotations: new Dictionary<string, AnnotationValues>
                {
                    { 
                        "DefaultValue",
                        new AnnotationValues(oldValue: null, newValue: "0")
                    },
                }));
            AddColumn("dbo.CustomerReview", "TotalVotesCount", c => c.Int(nullable: false,
                annotations: new Dictionary<string, AnnotationValues>
                {
                    { 
                        "DefaultValue",
                        new AnnotationValues(oldValue: null, newValue: "0")
                    },
                }));
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CustomerReviewVote", "CustomerReviewId", "dbo.CustomerReview");
            DropIndex("dbo.CustomerReviewVote", "IX_AuthorIdAndCustomerReviewId");
            DropColumn("dbo.CustomerReview", "TotalVotesCount",
                removedAnnotations: new Dictionary<string, object>
                {
                    { "DefaultValue", "0" },
                });
            DropColumn("dbo.CustomerReview", "UselessVotesCount",
                removedAnnotations: new Dictionary<string, object>
                {
                    { "DefaultValue", "0" },
                });
            DropColumn("dbo.CustomerReview", "HelpfullVotesCount",
                removedAnnotations: new Dictionary<string, object>
                {
                    { "DefaultValue", "0" },
                });
            DropTable("dbo.CustomerReviewVote");
        }
    }
}
