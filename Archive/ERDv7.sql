-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/DK2yeX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "MLS" (
    "MLS" int,
    "street_number" varchar(6),
    "street_name" varchar(50),
    "city" varchar(25),
    "zip" int,
    "county" varchar(20),
    "subdivision" varchar(25),
    "home_type" varchar(25),
    "year_built" int,
    "bedrooms" int   NOT NULL,
    "full_baths" int   NOT NULL,
    "half_baths" int   NOT NULL,
    "total_baths" float   NOT NULL,
    "room_count" int   NOT NULL,
    "fireplaces" int   NOT NULL,
    "stories" int   NOT NULL,
    "pool_private" varchar(5)   NOT NULL,
    "garages" int   NOT NULL,
    "style" varchar(25)   NOT NULL,
    "list_price" int   NOT NULL,
    "market_area" varchar(25)   NOT NULL,
    "area" int   NOT NULL,
    "dom" int   NOT NULL,
    "cdom" int   NOT NULL,
    "list_date" varchar(25)   NOT NULL,
    "school_district" int   NOT NULL,
    "elementary" varchar(25)   NOT NULL,
    "high_school" varchar(25)   NOT NULL,
    CONSTRAINT "pk_MLS" PRIMARY KEY (
        "MLS"
     )
);

CREATE TABLE "School_Rating" (
    "Campus_Number" int   NOT NULL,
    "School" varchar(50)   NOT NULL,
    "District" varchar(50)   NOT NULL,
    "Yrs_Unacceptable" int   NOT NULL,
    "Rating" varchar(2)   NOT NULL,
    "Rating_Yr" varchar(4)   NOT NULL,
    CONSTRAINT "pk_School_Rating" PRIMARY KEY (
        "Campus_Number","School"
     )
);

ALTER TABLE "MLS" ADD CONSTRAINT "fk_MLS_Elementary" FOREIGN KEY("Elementary")
REFERENCES "School_Rating" ("School");

ALTER TABLE "MLS" ADD CONSTRAINT "fk_MLS_High_School" FOREIGN KEY("High_School")
REFERENCES "School_Rating" ("School");

