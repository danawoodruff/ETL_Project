
<div style="background-image: url('images/background.png');">
<p align="center"><img width="100%" height="144" src="images/header.png"></p>
<h1>Extract, Transform, and Load</h1>
<h2>Objective(s)</h2>
<br>
Purchasing a home is typically one of the most important decisions a family undertakes.  In 2020 $18.4 billion in property was sold in Harris County with another $58.2 million in leases.  For many home buyers the quality of the schools is a critical aspect for home selection. 
<br>
<h2>1. Extract data from Har.com and tea.texas.gov.</h2><br>
   HAR.com (https://www.har.com/) provides data from the Houston Association of Realtors. The dataset includes homes for sale in the Houston metro area.  HAR.com provides filters for their data.  Homes were filtered using "Active" listing and "HISD (Houston Independent School District)" criteria.  Data was downloaded 06 Feb 2021 utilizing Texas real estate license #725751.<br>
<br>
   <p align="center"><img width="562" height="450" src="images/HAR_data.PNG"></p><br>
<br>
   TEA.texas.gov (https://tea.texas.gov/) provides data from the Texas Education Agency. Texas provides annual academic accountability ratings to its public school districts, charters and schools. The ratings are based on performance on state standardized tests; graduation rates; and college, career, and military readiness outcomes. The ratings examine student achievement, school progress, and whether districts and campuses are closing achievement gaps among various student groups. Data was filtered to include only HISD (Houston Independent School District) schools.[TEA.texas.gov]  Data was downloaded 06 Feb 2021 from the public site.<br>
   <br>
   <p align="center"><img width="562" height="450" src="images/TEA_data.PNG"></p><br>
<h2>2. Transform</h2>
   HAR.com - Some columns deemed unimportant to the home buyer, e.g., columns related to listing agent and office, were dropped from the dataset.  Columns formatted as currency data types were converted to float data type.<br>
<br>
   TEA.texas.gov - The pandemic in 2020 prevented school ratings from being calculated.  This column, and ratings prior to 2019, were dropped from the dataset.  Each school has a grade given to it in 2019 for their academic performance with "A" being the highest score and an "F" as the lowest.<br>

Each dataset's .csv file was imported into a Jupyter Notebook python file. There the data was transformed into pandas dataframes for examination.<br>
<br>
The HAR data is an entity of homes for sale.  The raw dataset has twenty-eight columns with the MLS(Multiple Listing Service) number as an unique ID. In examining the data each field is independent from the others. As example, the number of garages does not depend on the number of bedrooms or the home type. The subdivision is not dependent on the street name or number of fireplaces. A high school can serve multiple market areas and can be paired with different elementary schools. Every home is in Harris County but the team kept that field in the event MLS dataset from other counties were included into the dataset as additional tables. No entities could be identified in the table. Each field is a characteristic of the home represented by the MLS number.<br>
<br>
The TEA data is an entity of schools. The campus number is the table's unique ID. Examination reveals no independent entities within the table. The ratings are typically scored by year but the raw data included a note that 2020 could not be scored due to the pandemic. The 2019 year data was selected.  The raw data labels each column with year and rating.  These two characteristics were split into separate columns.<br>
<br>
After cleaning the data was saved to a clean csv intended for export to POSTGRES.<br>
   - Column names were altered or shortened in some cases.  Spaces between words were replaced with underscores. <br>
   - Null values were managed by either replacing with zero or accepting the null values. <br>
   - Cleaned data is saved as a new .csv file and saved to the Resources folder.<br>
   - Column  <br>
<br>
<h2>3. Load</h2><br>
   The ETL Pipeline is drawn using smart art and Microsoft Word.  References were made to online examples.
   <br>
   <p align="center"><img width="650" height="408" src="images/pipeline.png"></p><br>
<br>
   The ERD is created using free a QuickDBD template. This file was saved in .sql and as .png format. <br> 
   <br>
   <p align="center"><img width="524" height="612" src="images/ERDv9.png"></p><br>
<br>
   From Juypter Notebook, we created a connection to load the tables into Postgres for table creation and population. <br>
   <br>
   <p align="center"><img width="821" height="607" src="images/load.PNG"></p><br>
   <br>
   View in PGAdmin4:<br>
   <br>
   <p align="center"><img width="829" height="649" src="images/SQLTable.PNG"></p><br>
<p align="center"><img width="100%" height="100" src="images/background.png"></p><br>
</div>   


   



