# Cost_of_living_across_countries
The project aims to analyze the cost of living in different countries based on various factors, such as food, housing, transportation, and other living expenses. The project uses publicly available datasets to create visualizations and insights on the relative cost of living in different cities around the world.

In the original data source there were 4898 rows that were represented by a city taken from www.numbeo.com and valid as for the date of 03.12.2022.
After cleansing and filtering data using Excel and Power Query, only 923 records of cities from 146 different countries were chosen for futher analysis due to the fact that data quality of the rest was 0, thus Numbeo considers that more contributors are needed to increase data quality. 
Original sourse of data is taken from Kaggle: https://www.kaggle.com/datasets/mvieira101/global-cost-of-living?select=cost-of-living_v2.csv.

###For this data analysis I have to:

--Clean the data: with the help of Excel or PowerQuery I remove any duplicates, missing values, or irrelevant data.<br />
--Import data into SQL: I used SQL Server Management Studio to create a new SQL database cost_of_living and import the cleaned data into it.<br />
--Analyze the data using SQL. With the help of aggregation functions, partitioning, filtering, CTE and joins I analyzed the data to get the insights of cost of living in terms of basic product basket, public transport, rent and ability to buy a flat, as well as net salaries. (The SQL code is attached to the repository)<br />
--Create visualizations in Tableau: for this I imported the data from csv file with cleaned dataset into Tableau Public and created visualizations to explore the data.

###**After conducting a thorough analysis, I have come to some fascinating findings**:

--Top countries that perform highest income are Bermuda, Switzerland, Isle Of Man, Singapore, United States with salaries from 4500$ up till 6000$net/monthwhereas in countries like Cuba and Siria net montly income is not higher than 50$.

--Average cost of rent 1bedroom apartment in the city centre with utilities and internet ranges from 145$ in Bangladesh to 3663$ in Bermuda.

--At the same time the percentage in net salary which each person should give for paying utilities for ~40-45m2 flat varies from 1% in Fiji to 51% in Cuba, which means
that countries with higher salaries pay less in percentage for utilities than those who earn less.

--It is interesting fact that people in South Africa can save up for 2 years to buy a 40m2 flat outside the centre if they put all they monthly salary to flat savings.

-Concerning the cost of food the best destinations for buying vegetables and fruits are Egypt and Afganistan, mostly all the countries from the north of Africa and Centre of Asia while in Somalia and Bermuda you will find the most expensive bottle of wine in the supermarket.

--The cheapest fast food we can find in Afganistan and Bhutan while the most expensive is in Switzerland.

--It is intriguing to find out that countries for no-smokers where the package of cigarretes costs on average around 25$ are Australia and New Zealand.

--Analyzing correlation between cost of oneway public transport ticket and price for 1km on taxi: The R-squared value is 0.177291, suggesting that approximately 17.73% of the variation in the average cost of a one-way ticket can be explained by the linear relationship with the average cost of a taxi per kilometer.Overall, these results indicate that there is a significant linear relationship between the average cost of a one-way ticket for local transport and the average cost of a taxi per kilometer, with the latter influencing the predicted values of the former.

###Tableau vizz: https://public.tableau.com/app/profile/lizaveta3622/viz/Costoflivingacrosstheglobe/Story1
