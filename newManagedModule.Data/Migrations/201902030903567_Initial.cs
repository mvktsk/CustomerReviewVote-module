namespace CustomerReviewVotes.Data.Migrations
{
    using System;
    using System.Collections.Generic;
    using System.Data.Entity.Infrastructure.Annotations;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CustomerReview",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        AuthorNickname = c.String(maxLength: 128),
                        Content = c.String(nullable: false, maxLength: 1024),
                        IsActive = c.Boolean(nullable: false),
                        ProductId = c.String(nullable: false, maxLength: 128),
                        HelpfullVotesCount = c.Int(nullable: false,
                            annotations: new Dictionary<string, AnnotationValues>
                            {
                                { 
                                    "DefaultValue",
                                    new AnnotationValues(oldValue: null, newValue: "0")
                                },
                            }),
                        UselessVotesCount = c.Int(nullable: false,
                            annotations: new Dictionary<string, AnnotationValues>
                            {
                                { 
                                    "DefaultValue",
                                    new AnnotationValues(oldValue: null, newValue: "0")
                                },
                            }),
                        TotalVotesCount = c.Int(nullable: false,
                            annotations: new Dictionary<string, AnnotationValues>
                            {
                                { 
                                    "DefaultValue",
                                    new AnnotationValues(oldValue: null, newValue: "0")
                                },
                            }),
                        CreatedDate = c.DateTime(nullable: false),
                        ModifiedDate = c.DateTime(),
                        CreatedBy = c.String(maxLength: 64),
                        ModifiedBy = c.String(maxLength: 64),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.CustomerReviewVote",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        AuthorId = c.String(nullable: false, maxLength: 1024),
                        ReviewRate = c.Int(nullable: false),
                        CustomerReviewId = c.String(nullable: false, maxLength: 128),
                        CreatedDate = c.DateTime(nullable: false),
                        ModifiedDate = c.DateTime(),
                        CreatedBy = c.String(maxLength: 64),
                        ModifiedBy = c.String(maxLength: 64),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.CustomerReview", t => t.CustomerReviewId, cascadeDelete: true)
                .Index(t => new { t.AuthorId, t.CustomerReviewId }, unique: true, name: "IX_AuthorIdCustomerReviewId");
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CustomerReviewVote", "CustomerReviewId", "dbo.CustomerReview");
            DropIndex("dbo.CustomerReviewVote", "IX_AuthorIdCustomerReviewId");
            DropTable("dbo.CustomerReviewVote");
            DropTable("dbo.CustomerReview",
                removedColumnAnnotations: new Dictionary<string, IDictionary<string, object>>
                {
                    {
                        "HelpfullVotesCount",
                        new Dictionary<string, object>
                        {
                            { "DefaultValue", "0" },
                        }
                    },
                    {
                        "TotalVotesCount",
                        new Dictionary<string, object>
                        {
                            { "DefaultValue", "0" },
                        }
                    },
                    {
                        "UselessVotesCount",
                        new Dictionary<string, object>
                        {
                            { "DefaultValue", "0" },
                        }
                    },
                });
        }
    }
}
