-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/DK2yeX
-- db name is etl_team5
DROP TABLE IF EXISTS "mls"

CREATE TABLE "mls" (
    "mls" int NOT NULL,
    "street_number" varchar(6),
    "street_name" varchar(50),
    "city" varchar(25),
    "zip" int,
    "county" varchar(20),
    "subdivision" varchar(250),
    "home_type" varchar(250),
    "year_built" int,
    "bedrooms" int,
    "full_baths" int,
    "half_baths" int,
    "total_baths" float,
    "room_count" int,
    "fireplaces" int,
    "stories" int,
    "pool_private" varchar(50),
    "garages" int,
    "style" varchar(50),
    "list_price" int   NOT NULL,
    "market_area" varchar(50),
    "area" int,
    "dom" int,
    "cdom" int,
    "list_date" varchar(50),
    "school_district" int,
    "elementary" varchar(50),
    "high_school" varchar(50),
    CONSTRAINT "pk_MLS" PRIMARY KEY (
        "mls"
    )
);

CREATE TABLE "school_rating" (
    "campus_number" int   NOT NULL,
    "school" varchar(50),
    "district" varchar(50),
    "yrs_unacceptable" int,
    "rating" varchar(50),
    "rating_yr" varchar(4),
    CONSTRAINT "pk_School_Rating" PRIMARY KEY (
        "campus_number","school"
    )
);

ALTER TABLE "MLS" ADD CONSTRAINT "fk_MLS_elementary" FOREIGN KEY("elementary")
REFERENCES "School_Rating" ("school");

ALTER TABLE "MLS" ADD CONSTRAINT "fk_MLS_high_school" FOREIGN KEY("high_school")
REFERENCES "School_Rating" ("school");

