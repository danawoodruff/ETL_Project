# Extract, Transform, and Load
Objective(s)
<br>
Purchasing a home is typically one of the most important decisions a family undertakes.  In 2020 $18.4 billion in property was sold in Harris County with another $58.2 million in leases.  For many home buyers the quality of the schools is a critical aspect for home selection.  
<br>
1. Extract data from Har.com and tea.texas.gov.
   HAR.com provides data from the Houston Association of Realtors. The dataset includes homes for sale in the Houston metro area.  HAR.com provides filters for their data.  Homes were filtered using "Active" listing and "HISD (Houston Independent School District)" criteria.  Data was downloaded 06 Feb 2021 utilizing Texas real estate license #725751.<br>
   ![HAR](images/HAR_data)
<br>
   TEA.texas.gov provides data from the Texas Education Agency. Texas provides annual academic accountability ratings to its public school districts, charters and schools. The ratings are based on performance on state standardized tests; graduation rates; and college, career, and military readiness outcomes. The ratings examine student achievement, school progress, and whether districts and campuses are closing achievement gaps among various student groups. Data was filtered to include only HISD (Houston Independent School District) schools.  Data was downloaded 06 Feb 2021 from the public site.<br>
   ![TEA](images/TEA_data)
<br>
2. Transform
   HAR.com - Some columns deemed unimportant to the home buyer, e.g., columns related to listing agent and office were dropped from the dataset.  Columns formatted as currency data types were converted to float type data.
<br>
   TEA.texas.gov - The pandemic in 2020 prevented school ratings from being calculated.  This column, and ratings prior to 2019, were dropped from the dataset.  Each school has a grade given to it in 2019 for their academic performance with "A" being the highest score and an "F" as the lowest.
<br>
   Column names were altered or shortened in some cases.  Spaces between words were replaced with underscores. 
<br>
   Each dataset's .csv file was imported into a Jupyter Notebook python file. There the data was examined and transformed into pandas dataframes. 
<br>



3. Load



