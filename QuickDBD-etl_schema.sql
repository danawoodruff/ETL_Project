-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/DK2yeX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE IF EXISTS House_Location;
-- DROP TABLE House_Location CASCADE;
DROP TABLE IF EXISTS Schools;
-- DROP TABLE schools CASCADE;
DROP TABLE IF EXISTS Home_Features;
-- DROP TABLE Home_Features CASCADE;
DROP TABLE IF EXISTS Sales_Data;
-- DROP TABLE Sales_Data CASCADE;
DROP TABLE IF EXISTS School_Rating;
-- DROP TABLE School_Rating CASCADE;



CREATE TABLE House_Location (
    "MLS" INT NOT NULL,
    "Street_Number" VARCHAR(6)   NOT NULL,
    "Street_Name" VARCHAR(50)   NOT NULL,
    "Unit" VARCHAR(6)   NOT NULL,
    "City" VARCHAR(25)   NOT NULL,
    "Zip" VARCHAR(5)   NOT NULL,
    "County" VARCHAR(20)   NOT NULL,
    "Subdivision" VARCHAR(25)   NOT NULL,
    CONSTRAINT "pk_house_location" PRIMARY KEY (
        "MLS"
     )
);

CREATE TABLE "Schools" (
    "MLS" int(8)   NOT NULL,
    "School_District" int(6)   NOT NULL,
    "Elementary" varchar(25)   NOT NULL,
    "High_School" varchar(25)   NOT NULL,
    CONSTRAINT "pk_schools" PRIMARY KEY (
        "MLS"
     )
);

CREATE TABLE "Home_Features" (
    "MLS" int(8)   NOT NULL,
    "Home_Type" varchar(25)   NOT NULL,
    "Year_Built" int(4)   NOT NULL,
    "Bedrooms" int(2)   NOT NULL,
    "Full_Baths" int(2)   NOT NULL,
    "Half_Baths" int(2)   NOT NULL,
    "Total_Baths" float   NOT NULL,
    "Room_Count" int(2)   NOT NULL,
    "Fireplaces" int(2)   NOT NULL,
    "Stories" int(2)   NOT NULL,
    "Pool_Private" varchar(5)   NOT NULL,
    "Garages" int(2)   NOT NULL,
    "Style" varchar(25)   NOT NULL,
    CONSTRAINT "pk_Home_Features" PRIMARY KEY (
        "MLS"
     )
);

CREATE TABLE "Sales_Data" (
    "MLS" int(8)   NOT NULL,
    "List_Price" int(9)   NOT NULL,
    "Market_Area" varchar(25)   NOT NULL,
    "Area" int(2)   NOT NULL,
    "DOM" int(5)   NOT NULL,
    "CDOM" int(5)   NOT NULL,
    "List_Date" varchar(25)   NOT NULL,
    CONSTRAINT "pk_Sales_Data" PRIMARY KEY (
        "MLS"
     )
);

CREATE TABLE "School_Rating" (
    "Campus_Number" int(9)   NOT NULL,
    "School" varchar(50)   NOT NULL,
    "District" varchar(50)   NOT NULL,
    "2019_Rating" varchar(2)   NOT NULL,
    "Yrs_Unacceptable" int(2)   NOT NULL,
    CONSTRAINT "pk_School_Rating" PRIMARY KEY (
        "School"
     )
);

ALTER TABLE "House_Location" ADD CONSTRAINT "fk_Location_MLS" FOREIGN KEY("MLS")
REFERENCES "Schools" ("MLS");

ALTER TABLE "Schools" ADD CONSTRAINT "fk_Schools_Elementary" FOREIGN KEY("Elementary")
REFERENCES "School_Rating" ("School");

ALTER TABLE "Schools" ADD CONSTRAINT "fk_Schools_High_School" FOREIGN KEY("High_School")
REFERENCES "School_Rating" ("School");

ALTER TABLE "Home_Features" ADD CONSTRAINT "fk_Home_Features_MLS" FOREIGN KEY("MLS")
REFERENCES "House_Location" ("MLS");

ALTER TABLE "Sales_Data" ADD CONSTRAINT "fk_Sales_Data_MLS" FOREIGN KEY("MLS")
REFERENCES "House_Location" ("MLS");

