-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/DK2yeX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "mls" (
    "mls" int   NOT NULL,
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
    "pool_private" varchar(5),
    "garages" int,
    "style" varchar(25),
    "list_price" int,
    "market_area" varchar(35),
    "area" int,
    "dom" int,
    "cdom" int,
    "list_date" varchar(25),
    "school_district" varchar(50),
    "elementary" varchar(25),
    "high_school" varchar(25),
    CONSTRAINT "pk_mls" PRIMARY KEY (
        "mls"
    )
);

CREATE TABLE "school_rating" (
    "campus_number" int   NOT NULL,
    "school" varchar(50),
    "district" varchar(50),
    "yrs_unacceptable" int,
    "rating" varchar(20),
    "rating_yr" varchar(4),
    CONSTRAINT "pk_school_rating" PRIMARY KEY (
        "campus_number","school"
    )
);

CREATE TABLE "junction_table" (
    "mls" int   NOT NULL,
    "campus_number" int   NOT NULL,
    "school_district" varchar(50),
    "school" varchar(50),
    "rating" varchar(20),
    CONSTRAINT "pk_junction_table" PRIMARY KEY (
        "school"
    )
);

ALTER TABLE "junction_table" ADD CONSTRAINT "fk_junction_table_mls" FOREIGN KEY("mls")
REFERENCES "mls" ("mls");

ALTER TABLE "junction_table" ADD CONSTRAINT "fk_junction_table_campus_number" FOREIGN KEY("campus_number")
REFERENCES "school_rating" ("campus_number");

