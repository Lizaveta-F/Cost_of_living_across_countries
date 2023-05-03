--What is the cost of living in each country in terms of basic expenses for renting for a family(renting a 1room flat in the outskirts with utilities and internet ?
SELECT country,AVG(index44+index55+index42) AS cost_of_renting
FROM cost_of_living.dbo.[cost-of-living]
GROUP BY country
ORDER BY cost_of_renting DESC;

--What is the average cost of basic products busket by each country?
SELECT country, AVG(index22+index27+index18+index17+index16+index15+index14+index28) AS product_busket
FROM cost_of_living.dbo.[cost-of-living]
GROUP BY country
ORDER BY product_busket DESC;

--What is the percentage from average net salary will go for basic products busket?
SELECT country, ROUND(AVG((index22+index27+index18+index17+index16+index15+index14+index28)/index60),2)*100 AS percent_for_product_busket_in_salary
FROM cost_of_living.dbo.[cost-of-living]
WHERE index27<>0 AND index60<>0 AND index22<>0 AND index18<>0 AND index17<>0 AND index16<>0 AND index15<>0 AND index14<>0 AND index28<>0
GROUP BY country
ORDER BY percent_for_product_busket_in_salary DESC;

--What are the top 5 most expensive countries for eating out?
SELECT country, AVG(index4) AS avg_eating_out_withou_drinks
FROM cost_of_living.dbo.[cost-of-living]
GROUP BY country
ORDER by avg_eating_out_withou_drinks DESC;

--What are top 5 most expensive and cheapest cities for buying a flat in the city centre?
SELECT country,city, index58 AS max_flat_price_per_m2
FROM cost_of_living.dbo.[cost-of-living]
ORDER BY index58 DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

SELECT country,city, index58 AS min_flat_price_per_m2
FROM cost_of_living.dbo.[cost-of-living]
WHERE index58 <> 0
ORDER BY index58 ASC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;


--What are the top cities by each country with the lowest cost of gasoline and public transport?
SELECT TOP 10 country, city, index39 AS gasoline_cost
FROM (
  SELECT country, city, index39, 
    ROW_NUMBER() OVER (PARTITION BY country ORDER BY index39 ASC) AS row_num
  FROM cost_of_living.dbo.[cost-of-living]
) AS subquery
WHERE row_num = 1 AND index39<>0
ORDER BY gasoline_cost ;

SELECT TOP 10 country, city, index35 AS monthly_pass_public_transport 
FROM (
  SELECT country, city, index35, 
    ROW_NUMBER() OVER (PARTITION BY country ORDER BY index39 ASC) AS row_num
  FROM cost_of_living.dbo.[cost-of-living]
) AS subquery
WHERE row_num = 1 AND index35<>0
ORDER BY monthly_pass_public_transport;


--WHAT are top 5 biggest and lowest average mortgage rates among all countries?
SELECT TOP 10 country, MIN(index61) AS min_mortgage_rate
FROM cost_of_living.dbo.[cost-of-living]
GROUP BY country
HAVING MIN(index61)<>0
ORDER BY min_mortgage_rate;

SELECT TOP 10 country, MAX(index61) AS max_mortgage_rate
FROM cost_of_living.dbo.[cost-of-living]
GROUP BY country
HAVING MAX(index61)<>0
ORDER BY max_mortgage_rate DESC;


--What is average net salary across the countries?
SELECT country, AVG(index60) AS net_salary
FROM cost_of_living.dbo.[cost-of-living]
GROUP BY country
ORDER BY net_salary DESC;


--What is the percentage from average net salary will go for fitness club?
SELECT country, ROUND(AVG(index45/index60),2)*100 AS percent_for_fitness_in_salary
FROM cost_of_living.dbo.[cost-of-living]
WHERE index45<>0 AND index60<>0
GROUP BY country
ORDER BY percent_for_fitness_in_salary DESC;

--How many monthly salaries would go to buy a car (ex.Volkswagen Golf 1.4 90 KW Trendline (Or Equivalent New Car))?
SELECT country, ROUND(AVG(index40/index60),2) AS num_salaries_tobuycar
FROM cost_of_living.dbo.[cost-of-living]
WHERE index40<>0 AND index60<>0
GROUP BY country
ORDER BY num_salaries_tobuycar DESC;




