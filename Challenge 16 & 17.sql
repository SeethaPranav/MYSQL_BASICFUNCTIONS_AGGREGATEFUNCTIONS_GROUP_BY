# BASIC SQL FUNCTIONS AND AGGREGATE FUNCTIONS
#SELECT, WHERE, ORDER BY,GROUP BY

USE COUNTRY_DB;
SELECT * FROM PERSONS;
SELECT * FROM COUNTRY;

#1.	List distinct country name from person table.
SELECT DISTINCT(COUNTRY_NAME) FROM PERSONS; 

#2.Write an SQL query to concatenate first name and last name from Persons table.
SELECT ID, CONCAT(Fname,' ',Lname) AS Full_Name FROM Persons;

#3.Write an SQL query to count the number of unique country names from Persons table.
SELECT Country_Name, COUNT(DISTINCT Country_Name) AS UniqueCountry FROM Persons GROUP BY Country_Name;

#4.Find all person with a rating > 4.0.
SELECT ID, CONCAT(FNAME," " ,LNAME) AS FULL_NAME ,RATING FROM  PERSONS WHERE RATING > 4.0; 

#5.Find countries with population > 150M.
SELECT * FROM COUNTRY WHERE POPULATION > 150000000; 

#6.Find person who are from USA or rating > 4.5.
SELECT CONCAT(FNAME," ",LNAME) AS FULL_NAME,COUNTRY_NAME, RATING FROM PERSONS WHERE COUNTRY_NAME = 'USA' OR RATING > 4.5; 

#7.Find all person not from the countries India and Australia.
SELECT CONCAT(FNAME,' ',LNAME) AS FULL_NAME,COUNTRY_ID, COUNTRY_NAME FROM PERSONS 
WHERE COUNTRY_NAME NOT IN ('INDIA','AUSTRALIA') OR COUNTRY_NAME IS NULL;  

#8.Write a query to print the maximum population from country table
SELECT ID,COUNTRY_NAME,POPULATION AS MAXIMUM_POPULATION FROM COUNTRY WHERE POPULATION=(SELECT MAX(POPULATION) FROM COUNTRY); 

#9.Write a query to find the no.of rows in the persons table
SELECT COUNT(*) AS TOTAL_ROWS FROM PERSONS; 

#10.List all persons ordered by their rating in descending order.
SELECT * FROM PERSONS ORDER BY RATING DESC; 

#11.Find the total population for each country in the persons table.
SELECT COUNTRY_NAME,SUM(POPULATION) AS TOTAL_POPULATION FROM PERSONS GROUP BY COUNTRY_NAME; 

#12. Find countries in the persons table with a total population > 150M
SELECT COUNTRY_NAME,SUM(POPULATION) AS TOTAL_POPULATION FROM PERSONS GROUP BY COUNTRY_NAME HAVING TOTAL_POPULATION > 150000000; 

#13. List the total no.of persons and average rating for each country, 
#but only for countries with more than 2 persons, ordered by the average rating in ascending order.
SELECT COUNTRY_NAME, COUNT(*) AS TOTAL_PERSON, ROUND(AVG(RATING),1) AS AVERAGE_RATING
		FROM PERSONS GROUP BY COUNTRY_NAME HAVING TOTAL_PERSON > 2 ORDER BY AVERAGE_RATING ASC;

