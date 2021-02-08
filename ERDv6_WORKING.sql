DROP TABLE IF EXISTS mls;
DROP TABLE IF EXISTS school_rating;

CREATE TABLE school_rating (
    Campus_Number INT   NOT NULL,
    School  VARCHAR(50) PRIMARY KEY NOT NULL,
    District VARCHAR(50)   NOT NULL,
    Yrs_Unacceptable INT,
	Rating_2019 VARCHAR(20)
);

SELECT * FROM school_rating;

CREATE TABLE mls (
    MLS INT PRIMARY KEY NOT NULL,
    Street_Number VARCHAR(6)   NOT NULL,
    Street_Name VARCHAR(50)   NOT NULL,
    City VARCHAR(25)   NOT NULL,
    Zip INT  NOT NULL,
    County VARCHAR(20),
    Subdivision VARCHAR(50),
    Home_Type VARCHAR(50)   NOT NULL,
    Year_Built INT,
    Bedrooms INT,
    Full_Baths INT,
    Half_Baths INT,
    Total_Baths FLOAT,
    Room_Count INT,
    Fireplaces INT,
    Stories INT,
    Pool_Private VARCHAR(5),
    Garages INT NOT NULL,
    Style VARCHAR(250) NOT NULL,
    List_Price INT   NOT NULL,
    Market_Area VARCHAR(50),
    Area VARCHAR(50)   NOT NULL,
    DOM INT  NOT NULL,
    CDOM INT  NOT NULL,
    List_Date VARCHAR(25)   NOT NULL,
    School_District VARCHAR (50) NOT NULL,
    Elementary VARCHAR(50)   NOT NULL,
    High_School VARCHAR(50)   NOT NULL,
 	FOREIGN KEY (Elementary ) REFERENCES school_rating(School),
 	FOREIGN KEY (High_School) REFERENCES school_rating(School)
);

SELECT * FROM mls;

