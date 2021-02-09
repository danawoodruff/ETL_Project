-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/DK2yeX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "school_rating" (
    "campus_number" int,
    "school" varchar(50),
    "district" varchar(50),
    "yrs_unacceptable" int,
    "rating" varchar(20),
    "rating_yr" varchar(4),
    CONSTRAINT "pk_school_rating" PRIMARY KEY (
        "campus_number","school"
    )
);

CREATE TABLE "mls" (
    "mls" int,
    "street_number" varchar(6),
    "street_name" varchar(50),
    "city" varchar(25),
    "zip" int,
    "county" varchar(20),
    "subdivision" varchar(25),
    "home_type" varchar(250),
    "year_built" int,
    "bedrooms" int,
    "full_baths" int,
    "half_baths" int,
    "total_baths" float,
    "room_count" int,
    "fireplaces" int,
    "stories" int,
    "pool_private" varchar(5),
    "garages" int,
    "style" varchar(25),
    "list_price" int,
    "market_area" varchar(25),
    "area" int,
    "dom" int,
    "cdom" int,
    "list_date" varchar(25),
    "school_district" int,
    "elementary" varchar(25),
    "high_school" varchar(25),
    CONSTRAINT "pk_mls" PRIMARY KEY (
        "mls"
    )
);


ALTER TABLE "mls" ADD CONSTRAINT "fk_mls_elementary" FOREIGN KEY("elementary")
REFERENCES "school_rating" ("school");

ALTER TABLE "mls" ADD CONSTRAINT "fk_mls_high_school" FOREIGN KEY("high_school")
REFERENCES "school_rating" ("school");

