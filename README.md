# MYSQL_BASICFUNCTIONS_AGGREGATEFUNCTIONS_GROUP_BY
This repository provides a comprehensive overview of basic MySQL functions, focusing on aggregate functions and the GROUP BY clause.

1.	List distinct country name from person table.
   
SELECT DISTINCT(COUNTRY_NAME) FROM PERSONS; 

![image](https://github.com/user-attachments/assets/2314faf2-dba1-4bb3-a5a5-9a038c43f790)

2.Write an SQL query to concatenate first name and last name from Persons table.

SELECT ID,FNAME,LNAME,CONCAT(FNAME," ",LNAME) AS FULL_NAME FROM PERSONS;

![image](https://github.com/user-attachments/assets/3c54013a-f548-47ff-8c06-2957300c31db)

3.Write an SQL query to count the number of unique country names from Persons table.

SELECT COUNT(DISTINCT COUNTRY_NAME) AS UNIQUE_COUNTRY_COUNT FROM PERSONS;

![image](https://github.com/user-attachments/assets/adcea93f-2d41-4c92-8795-0862da13cae3)

4.Find all person with a rating > 4.0.

SELECT ID, CONCAT(FNAME," " ,LNAME) AS FULL_NAME ,RATING FROM  PERSONS WHERE RATING > 4.0; 

![image](https://github.com/user-attachments/assets/3caf45c6-70b9-4ed8-8fae-d24a32146b51)

#5.Find countries with population > 150M.

SELECT * FROM COUNTRY WHERE POPULATION > 150000000; 

![image](https://github.com/user-attachments/assets/908d8cf0-69b8-4374-b042-79bf8760d429)

6.Find person who are from USA or rating > 4.5.

SELECT CONCAT(FNAME," ",LNAME) AS FULL_NAME,COUNTRY_NAME, RATING FROM PERSONS WHERE COUNTRY_NAME = 'USA' OR RATING > 4.5; 

![image](https://github.com/user-attachments/assets/7f07281a-a942-486a-98cc-23bf23ee36b1)

7.Find all person not from the countries India and Australia.

SELECT CONCAT(FNAME,' ',LNAME) AS FULL_NAME,COUNTRY_ID, COUNTRY_NAME FROM PERSONS 
WHERE COUNTRY_NAME NOT IN ('INDIA','AUSTRALIA') OR COUNTRY_NAME IS NULL;  

![image](https://github.com/user-attachments/assets/5e9048d1-a6d2-4350-b760-79e1b5c3660d)

8.Write a query to print the maximum population from country table

SELECT ID,COUNTRY_NAME,POPULATION AS MAXIMUM_POPULATION FROM COUNTRY WHERE POPULATION=(SELECT MAX(POPULATION) FROM COUNTRY); 

![image](https://github.com/user-attachments/assets/1e8011fd-65d4-4ee3-b4e1-5ea780f4ff70)

9.Write a query to find the no.of rows in the persons table

SELECT COUNT(*) AS TOTAL_ROWS FROM PERSONS; 

![image](https://github.com/user-attachments/assets/b5938bb1-c249-44c9-9e23-a85d23bbc7fb)


10.List all persons ordered by their rating in descending order.

SELECT * FROM PERSONS ORDER BY RATING DESC; 

![image](https://github.com/user-attachments/assets/2713cefc-3988-401d-aa88-47ae852cfa90)

11.Find the total population for each country in the persons table.

SELECT COUNTRY_NAME,SUM(POPULATION) AS TOTAL_POPULATION FROM PERSONS GROUP BY COUNTRY_NAME; 

![image](https://github.com/user-attachments/assets/a02f6123-eb3d-43e1-bfe1-7212772b2ed7)

12. Find countries in the persons table with a total population > 150M
    
SELECT COUNTRY_NAME,SUM(POPULATION) AS TOTAL_POPULATION FROM PERSONS GROUP BY COUNTRY_NAME HAVING TOTAL_POPULATION > 150000000;

![image](https://github.com/user-attachments/assets/86d746a7-2fc4-4678-a919-ee662906bd0c)

13. List the total no.of persons and average rating for each country,but only for countries with more than 2 persons, ordered by the average rating in ascending order.
    
SELECT COUNTRY_NAME, COUNT(*) AS TOTAL_PERSON, ROUND(AVG(RATING),1) AS AVERAGE_RATING
		FROM PERSONS GROUP BY COUNTRY_NAME HAVING TOTAL_PERSON > 2 ORDER BY AVERAGE_RATING ASC;

![image](https://github.com/user-attachments/assets/e7ccb79d-4e88-48ff-b04f-7cf4e09fc7cd)

