using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace SHOPii.Migrations
{
    public partial class Init : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ACCOUNT",
                columns: table => new
                {
                    USERNAME = table.Column<string>(unicode: false, maxLength: 32, nullable: false),
                    PASSWORD = table.Column<string>(unicode: false, maxLength: 50, nullable: false),
                    PHONE_NUMBER = table.Column<string>(unicode: false, maxLength: 15, nullable: true),
                    FULLNAME = table.Column<string>(nullable: true),
                    ADDRESS = table.Column<string>(nullable: true),
                    IMAGE = table.Column<string>(nullable: true),
                    DEFAULT_DELIVERY_ID = table.Column<int>(nullable: false, defaultValueSql: "((-1))")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__ACCOUNT__B15BE12F28AFB08A", x => x.USERNAME);
                });

            migrationBuilder.CreateTable(
                name: "CATEGORY",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NAME = table.Column<string>(nullable: false),
                    DESCRIPTION = table.Column<string>(nullable: false, defaultValueSql: "('')"),
                    IMAGE = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CATEGORY", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "SHOP_ACCOUNT",
                columns: table => new
                {
                    USERNAME = table.Column<string>(unicode: false, maxLength: 32, nullable: false),
                    PASSWORD = table.Column<string>(unicode: false, maxLength: 50, nullable: false),
                    NAME = table.Column<string>(nullable: false),
                    ADDRESS = table.Column<string>(nullable: false),
                    PHONE_NUMBER = table.Column<string>(unicode: false, maxLength: 15, nullable: false),
                    IMAGE = table.Column<string>(nullable: false),
                    LATITUDE = table.Column<string>(unicode: false, nullable: true),
                    LONGITUDE = table.Column<string>(unicode: false, nullable: true),
                    COVER_IMAGE = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__SHOP_ACC__B15BE12FB7F1BC99", x => x.USERNAME);
                });

            migrationBuilder.CreateTable(
                name: "DELIVERY_ADDRESS",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    USERNAME = table.Column<string>(unicode: false, maxLength: 32, nullable: false),
                    PHONE_NUMBER = table.Column<string>(unicode: false, maxLength: 15, nullable: false),
                    FULLNAME = table.Column<string>(nullable: false),
                    ADDRESS = table.Column<string>(nullable: false),
                    LATITUDE = table.Column<string>(unicode: false, nullable: false, defaultValueSql: "('')"),
                    LONGITUDE = table.Column<string>(unicode: false, nullable: false, defaultValueSql: "('')")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DELIVERY_ADDRESS", x => x.ID);
                    table.ForeignKey(
                        name: "FK__DELIVERY___USERN__440B1D61",
                        column: x => x.USERNAME,
                        principalTable: "ACCOUNT",
                        principalColumn: "USERNAME",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "PRODUCT",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NAME = table.Column<string>(nullable: false),
                    DESCRIPTION = table.Column<string>(nullable: false, defaultValueSql: "('')"),
                    IMAGE = table.Column<string>(nullable: false),
                    PRICE = table.Column<long>(nullable: false),
                    CATEGORY_ID = table.Column<int>(nullable: false),
                    SHOP_USERNAME = table.Column<string>(unicode: false, maxLength: 32, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PRODUCT", x => x.ID);
                    table.ForeignKey(
                        name: "FK__PRODUCT__CATEGOR__2A4B4B5E",
                        column: x => x.CATEGORY_ID,
                        principalTable: "CATEGORY",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "ORDERING",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    STATUS = table.Column<int>(nullable: false),
                    USERNAME = table.Column<string>(unicode: false, maxLength: 32, nullable: false),
                    DELIVERY_ID = table.Column<int>(nullable: false, defaultValueSql: "((-1))"),
                    CREATED_DATE = table.Column<DateTime>(type: "datetime", nullable: false, defaultValueSql: "(getdate())"),
                    SHOP_USERNAME = table.Column<string>(unicode: false, maxLength: 32, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ORDERING", x => x.ID);
                    table.ForeignKey(
                        name: "FK__ORDERING__shop_u__531856C7",
                        column: x => x.SHOP_USERNAME,
                        principalTable: "SHOP_ACCOUNT",
                        principalColumn: "USERNAME",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK__ORDERING__USERNA__02084FDA",
                        column: x => x.USERNAME,
                        principalTable: "ACCOUNT",
                        principalColumn: "USERNAME",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "FAVORITE",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    USERNAME = table.Column<string>(unicode: false, maxLength: 32, nullable: false),
                    PRODUCT_ID = table.Column<int>(nullable: false),
                    ISFAVORITE = table.Column<bool>(nullable: false, defaultValueSql: "((1))")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FAVORITE", x => x.ID);
                    table.ForeignKey(
                        name: "FK__FAVORITE__PRODUC__5DCAEF64",
                        column: x => x.PRODUCT_ID,
                        principalTable: "PRODUCT",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK__FAVORITE__USERNA__5CD6CB2B",
                        column: x => x.USERNAME,
                        principalTable: "ACCOUNT",
                        principalColumn: "USERNAME",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "PRODUCT_IMAGE",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PRODUCT_ID = table.Column<int>(nullable: false),
                    IMAGE = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PRODUCT_IMAGE", x => x.ID);
                    table.ForeignKey(
                        name: "FK__PRODUCT_I__PRODU__300424B4",
                        column: x => x.PRODUCT_ID,
                        principalTable: "PRODUCT",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "ORDERING_DETAIL",
                columns: table => new
                {
                    ID = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ORDERING_ID = table.Column<int>(nullable: true),
                    PRODUCT_ID = table.Column<int>(nullable: true),
                    COUNT = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ORDERING_DETAIL", x => x.ID);
                    table.ForeignKey(
                        name: "FK__ORDERING___ORDER__05D8E0BE",
                        column: x => x.ORDERING_ID,
                        principalTable: "ORDERING",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK__ORDERING___PRODU__06CD04F7",
                        column: x => x.PRODUCT_ID,
                        principalTable: "PRODUCT",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_DELIVERY_ADDRESS_USERNAME",
                table: "DELIVERY_ADDRESS",
                column: "USERNAME");

            migrationBuilder.CreateIndex(
                name: "IX_FAVORITE_PRODUCT_ID",
                table: "FAVORITE",
                column: "PRODUCT_ID");

            migrationBuilder.CreateIndex(
                name: "IX_FAVORITE_USERNAME",
                table: "FAVORITE",
                column: "USERNAME");

            migrationBuilder.CreateIndex(
                name: "IX_ORDERING_SHOP_USERNAME",
                table: "ORDERING",
                column: "SHOP_USERNAME");

            migrationBuilder.CreateIndex(
                name: "IX_ORDERING_USERNAME",
                table: "ORDERING",
                column: "USERNAME");

            migrationBuilder.CreateIndex(
                name: "IX_ORDERING_DETAIL_ORDERING_ID",
                table: "ORDERING_DETAIL",
                column: "ORDERING_ID");

            migrationBuilder.CreateIndex(
                name: "IX_ORDERING_DETAIL_PRODUCT_ID",
                table: "ORDERING_DETAIL",
                column: "PRODUCT_ID");

            migrationBuilder.CreateIndex(
                name: "IX_PRODUCT_CATEGORY_ID",
                table: "PRODUCT",
                column: "CATEGORY_ID");

            migrationBuilder.CreateIndex(
                name: "IX_PRODUCT_IMAGE_PRODUCT_ID",
                table: "PRODUCT_IMAGE",
                column: "PRODUCT_ID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "DELIVERY_ADDRESS");

            migrationBuilder.DropTable(
                name: "FAVORITE");

            migrationBuilder.DropTable(
                name: "ORDERING_DETAIL");

            migrationBuilder.DropTable(
                name: "PRODUCT_IMAGE");

            migrationBuilder.DropTable(
                name: "ORDERING");

            migrationBuilder.DropTable(
                name: "PRODUCT");

            migrationBuilder.DropTable(
                name: "SHOP_ACCOUNT");

            migrationBuilder.DropTable(
                name: "ACCOUNT");

            migrationBuilder.DropTable(
                name: "CATEGORY");
        }
    }
}
