# Learning MySQL

This file includes the uses of SELECT Statements with Variants.
All the codes have been written in reference with SAKILA DATABASE.

A snapshot of topics covered below are:
* Using select with Static Values
* ALIAS
* DISTICT
* DATE FUNCTIONS
* BASIC STRING OPERATION
* BASIC AGGREGATIONS
* AND OR NOT Logical Operations
* FROM 
* WHERE
* ORDER BY
* LIMIT


```
show databases;
use sakila;
```

#### Static value
```
SELECT 'MyFirstValue' AS SomeValue;
SELECT 1+1 AS TWO;
```
#### Current Date and Time
```
SELECT NOW() as "Current Date and Time";
```
```
SELECT CURDATE()  as "Current Date";
```
```
SELECT CURTIME()  as "Current Time";
```

```
SELECT PI() as "Pi Value";
```
```

SELECT MOD(45,7) as "Reminder";
```
```


SELECT SQRT(25) as "Square Root";
```
```

SELECT SQRT(26) as "Square Root";
```



#### Retrieve all the data from table
```

show databases;
USE sakila;
```
```



SELECT *
FROM sakila.actor;
```
```


SELECT *
FROM sakila.city;
```
```



SELECT *
FROM city;
```



#### Retrieve all the data ordered by single column

```
SELECT *
FROM sakila.actor;
```
```


SELECT *
FROM sakila.actor
ORDER BY first_name;
```
```


SELECT *
FROM sakila.actor
ORDER BY last_name;
```
```


SELECT *
FROM sakila.actor
ORDER BY first_name DESC;
```
```


SELECT *
FROM sakila.actor
ORDER BY last_name DESC;
```


#### Retrieve selected columns from table


```

SELECT *
FROM sakila.actor;
```
```


SELECT first_name, last_name
FROM sakila.actor;
```
```


SELECT first_name, last_name
FROM sakila.actor
ORDER BY first_name DESC;
```


#### Retrieve the data with filter condition


```
SELECT *
FROM sakila.actor;
```
```


SELECT *
FROM sakila.actor
WHERE actor_id > 100;
```
```


SELECT *
FROM sakila.actor
WHERE actor_id < 100;
```
```


SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name = 'Nick';
```



#### Retrieve the data with filter condition and ordered by columns

```


SELECT *
FROM sakila.actor
WHERE first_name = 'Nick';
```
```


SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name = 'Nick'
ORDER BY actor_id DESC;
```
```


SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id > 100
ORDER BY first_name, last_name DESC;

```


#### Retrieve empty result set

```

SELECT *
FROM sakila.actor
WHERE 1 = 2;
```


#### Retrieve column names using aliases

```
SELECT rental_date, inventory_id, return_date
FROM sakila.rental;
```
```


SELECT 	rental_date AS RentalDate, 
		inventory_id AS FilmListID, 
		return_date AS ReturnDate
FROM sakila.rental;
```




#### Retrieve values based on arithmetic expressions


```
SELECT 	replacement_cost-rental_rate,
		film_id AS FilmID,
		length/60 
FROM sakila.film;
```
```


SELECT 	replacement_cost-rental_rate AS CostDiff,
		film_id AS FilmID,
		length/60 AS Time_in_Hour 
FROM sakila.film;
```
```


SELECT 	rental_rate AS RentalRate,
		rental_rate + 3 * 4 - 1 AS Result1,
		(rental_rate + 3) * 4 -1 AS Result2,
		(rental_rate + 3) * (4 -1) AS Result3,
		rental_rate + (3 * 4) -1 AS Result4
FROM sakila.film;
```
```


SELECT 	replacement_cost AS ReplacementCost,
		replacement_cost / 5 AS DecimalRentalRate,
		replacement_cost DIV 5 AS IntegerRentalRate,
		replacement_cost % 5 AS RemainderRentalRate
FROM sakila.film;
```


#### Retrieve results based on function


```

SELECT * 
FROM sakila.actor;
```
```


SELECT * 
FROM sakila.payment;

```

-- ------------------------------------
## Integer Operations
-- ------------------------------------
-- Round() : Round to the nearest Integer
-- FLOOR() : Returns the highest Integer equal to or lesser than the given number
-- Ceiling() : Returns the Lowest Integer equal to or higher than the given number



```


SELECT 	amount, 
		ROUND(amount) Amnt, ROUND(amount,1) Amnt1, 
		FLOOR(amount) FloorAmnt, CEILING(amount) CeilingAmnt
FROM sakila.payment;
```
```


SELECT ROUND(4.44,1);
```

-- ------------------------------------
## String Operations
-- ------------------------------------

-- Concat

```
SELECT CONCAT(first_name, ' ', last_name) AS FullName
FROM sakila.actor;
```


-- LEFT function
```

SELECT 	CONCAT(first_name, ' ', last_name) AS FullName,
		CONCAT(LEFT(first_name,2),  LEFT(last_name,2)) AS FirstInitial
FROM sakila.actor;
```


-- LENGTH function

```

SELECT 	CONCAT(first_name, ' ', last_name) AS FullName,
		LENGTH(CONCAT(first_name, ' ', last_name)) AS Length,
		CONCAT(LEFT(first_name,1), ' ', LEFT(last_name,1)) AS FirstInitial
FROM sakila.actor;
```


-- Various function


```
SELECT 	CONCAT(first_name, ' ', last_name) AS FullName,
		REVERSE(CONCAT(first_name, ' ', last_name)) AS ReverseFullName,
		REPLACE(CONCAT(first_name, ' ', last_name),'S','$') AS ReplaceExample
FROM sakila.actor;
```



-- ------------------------------------
## Date Operations
-- ------------------------------------

-- DATE_FORMAT function
```

SELECT 	CONCAT(first_name, ' ', last_name) AS FullName,
		DATE_FORMAT(last_update, '%m/%d/%y') AS MMDDYY,
		DATE_FORMAT(last_update, '%d-%m-%Y') AS DDMMYYYY,
		DATE_FORMAT(last_update, '%d %b %Y %T:%f') AS "Full Date"
FROM sakila.actor
LIMIT 3;
```


-- DATE_FORMAT with GET_FORMAT function

```

SELECT 	CONCAT(first_name, ' ', last_name) AS FullName,
		DATE_FORMAT(last_update, GET_FORMAT(DATE,'EUR')) AS "European Format Date",
		DATE_FORMAT(last_update, GET_FORMAT(DATE,'ISO')) AS "ISO Format Date",
		DATE_FORMAT(last_update, GET_FORMAT(DATE,'USA')) AS "USA Format Date"
FROM sakila.actor;

```



-- Other Date function

```


SELECT 	rental_date,
		DAYOFWEEK(rental_date) AS DayOfWeek,
		QUARTER(rental_date) AS Quarter,
		WEEK(rental_date) AS Week,
		MONTHNAME(rental_date) AS MonthName		
FROM sakila.rental;
```




-- ------------------------------------
## DISTINCT Operations
-- ------------------------------------

```

SELECT first_name
FROM sakila.actor;
```
```

SELECT DISTINCT first_name
FROM sakila.actor;
```
```


SELECT last_name
FROM sakila.actor;
```
```


SELECT DISTINCT last_name
FROM sakila.actor;

```



-- WHERE clause Comparison Operators

-- Equal (=)
```

SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id = 100;
```
```


SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name = 'Nick';
```

-- Less than (<)
```
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id < 100;
```
```


SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name < 'Nick';
```

-- Greater than (>)
```
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id > 100;
```
```


SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name > 'Nick';
```


-- Less than or Equal to (<=)

```
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id <= 100;
```
```


SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name <= 'Nick';
```

-- Greater than or Equal to (>=)
```
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id >= 100;
```
```


SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name >= 'Nick';
```

-- Not equal (<> or !=)
```
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id <> 100;
```
```


SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name != 'Nick';

```


## WHERE clause
Comparison Operators

-- AND
```

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH';
```
```


SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' AND actor_id < 100;
```
```


SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' AND actor_id < 100 AND last_name = 'TORN';
```




-- OR
```

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH';
```
```


SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' OR actor_id < 100; 
```
```


SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' OR actor_id < 100 OR last_name = 'TEMPLE';

```


-- NOT

```

SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE NOT actor_id = 5;
```
```


SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id <> 5;

```

#### Combine Conditions
```

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' AND actor_id < 100 OR last_name = 'TEMPLE';
```
```


SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' OR last_name = 'TEMPLE' AND actor_id < 100;
```
```


SELECT *
FROM sakila.actor
WHERE (first_name = 'KENNETH' AND actor_id < 100) OR last_name = 'TEMPLE';
```
```


SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' AND (actor_id < 100 OR last_name = 'TEMPLE');
```
```


SELECT *
FROM sakila.actor
WHERE (first_name = 'KENNETH' OR last_name = 'TEMPLE') AND actor_id < 100;
```
```


SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' OR (last_name = 'TEMPLE' AND actor_id < 100);
```
```


SELECT *
FROM sakila.actor
WHERE NOT (first_name = 'KENNETH' OR (last_name = 'TEMPLE' AND actor_id < 100));
```
```


SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' OR NOT(last_name = 'TEMPLE' AND actor_id < 100);
```




#### WHERE clause in Comparison Operators

-- IN

```

SELECT *
FROM sakila.actor
WHERE first_name IN ('NICK','JOHNNY','JOE','VIVIEN');
```
```


SELECT *
FROM sakila.actor
WHERE actor_id IN (1,2,3,4,5,6,7,8);
```
```


SELECT *
FROM sakila.actor
WHERE (actor_id = 1 OR 
		actor_id = 2 OR 
		actor_id = 3 OR 
		actor_id = 4 OR 
		actor_id = 5 OR 
		actor_id = 6 OR 
		actor_id = 7 OR 
		actor_id = 8);
```


-- NOT IN
```

SELECT *
FROM sakila.actor
WHERE actor_id NOT IN (1,2,3,4,5,6,7);
```

-- In Subquery

```

SELECT *
FROM sakila.actor
WHERE first_name IN ('NICK','JOHNNY','JOE','VIVIEN')
-- 		OR actor_id IN (41, 107, 166)
		AND actor_id IN 
					(SELECT actor_id 
					FROM sakila.actor
					WHERE last_name = 'DEGENERES');

```

-- BETWEEN

```

SELECT *
FROM sakila.actor
WHERE actor_id >= 10 AND actor_id <= 20;
```
```


SELECT *
FROM sakila.actor
WHERE actor_id BETWEEN 10 AND 20;
```
```


SELECT *
FROM sakila.actor
WHERE actor_id BETWEEN 11 AND 19;
```
```


SELECT *
FROM sakila.actor
WHERE actor_id NOT BETWEEN 11 AND 19;
```



## LIKE
```

SELECT *
FROM sakila.actor
WHERE first_name LIKE 'A%';
```
```


SELECT *
FROM sakila.actor
WHERE first_name LIKE 'AL%';
```
```


SELECT *
FROM sakila.actor
WHERE first_name LIKE 'A__E';
```
```


SELECT *
FROM sakila.actor
WHERE first_name LIKE 'A__E%';
```
```


SELECT *
FROM sakila.actor
WHERE first_name LIKE 'A%E%';
```
```


SELECT *
FROM sakila.actor
WHERE NOT (first_name LIKE 'A%E%' AND first_name LIKE 'A%');
```


-- -----------------------------------------------------
## NULL 
-- -----------------------------------------------------
```

SELECT * 
FROM sakila.address;
```
```


SELECT * 
FROM sakila.address
WHERE address2 IS NULL;
```
```


SELECT * 
FROM sakila.address
WHERE address2 IS NOT NULL;

```


## ORDER BY clause
```


SELECT *
FROM sakila.address
ORDER BY district;
```
```


SELECT *
FROM sakila.address
ORDER BY district DESC;
```
```


SELECT *
FROM sakila.address
ORDER BY district, postal_code DESC;
```
```


SELECT actor_id, CONCAT(first_name, ' ', last_name) AS FullName
FROM sakila.actor
ORDER BY CONCAT(first_name, ' ', last_name);
```
```


SELECT actor_id, CONCAT(first_name, ' ', last_name) AS FullName
FROM sakila.actor
ORDER BY FullName;
```
```


SELECT actor_id, CONCAT(first_name, ' ', last_name) AS FullName
FROM sakila.actor
ORDER BY 1;
```



## Limit Keyword

```
SELECT *
FROM sakila.actor
ORDER BY actor_id;
```
```


SELECT *
FROM sakila.actor
ORDER BY actor_id
LIMIT 12;
```

#### 2nd ranking
```


SELECT *
FROM sakila.actor
ORDER BY actor_id
LIMIT 1, 1;
```
```
SELECT *
FROM sakila.actor
ORDER BY actor_id
LIMIT 25, 5;
```



-- ---------------------------------------------------------
## RUNNING TOTAL & MOVING AVERAGE
-- ---------------------------------------------------------

```
use myemployees;
```

```
Select *, 
	SUM(price) OVER (ORDER BY Date_of_record) as "Running_Total",
    AVG(price) OVER (ORDER BY Date_of_record) as "Running_Average"
From stock; 

Select *, 
	SUM(price) OVER w as "Running_Total",
    AVG(price) OVER w as "Running_Average"
From stock
Window w as (ORDER BY Date_of_record); 
```


 
 ```
select *,
avg(Price) 
	OVER(
		ORDER BY Date_of_record 
			ROWS BETWEEN 1 PRECEDING AND CURRENT ROW ) as 2day_moving_average,
avg(Price) 
	OVER(
		ORDER BY Date_of_record 
			ROWS BETWEEN 2 PRECEDING AND CURRENT ROW ) as 3day_moving_average,
avg(Price) 
	OVER(
		ORDER BY Date_of_record 
			ROWS BETWEEN 6 PRECEDING AND CURRENT ROW ) as 7day_moving_average,
avg(Price) 
	OVER(
		ORDER BY Date_of_record 
			ROWS BETWEEN 29 PRECEDING AND CURRENT ROW ) as 30day_moving_average
            
FROM stock;
 ```


-- ---------------------------------------------------------
## Stored Procedure
-- ---------------------------------------------------------


```
Use myemployees;
```

###   Creating Stored Procedure

```
delimiter //
Create Procedure Top_Salaried_Employees(IN var INT)
BEGIN
select EMP_NAME, SALARY from employees
order by salary desc
limit var;
END //
delimiter ;
```

###  Using Stored Procedure

#### Find top 3 salaried employees
```
call Top_Salaried_Employees(3);
```

#### Find Highest Salaried Employee
```
call Top_Salaried_Employees(1);
```


--  =================================
##   Creating Update Stored Procedure - Update tables
--  =================================

```
delimiter ..
create procedure update_Salary ( IN 
				temp_Name VARCHAR(25), 
				new_salary int)
begin 
update employees
set salary = new_salary
where emp_name = temp_Name;
end..
delimiter ;
```


```
Call update_Salary("Kitti",650000);
```








1. **DATE**: Extracts the date part from a timestamp.

   ```sql
   SELECT DATE(CURRENT_TIMESTAMP) AS current_date;
   -- Output: 2023-08-31
   ```

2. **TIME**: Extracts the time part from a timestamp.

   ```sql
   SELECT TIME(CURRENT_TIMESTAMP) AS current_time;
   -- Output: 13:45:00
   ```

3. **YEAR**: Extracts the year from a timestamp.

   ```sql
   SELECT YEAR(CURRENT_TIMESTAMP) AS current_year;
   -- Output: 2023
   ```

4. **MONTH**: Extracts the month from a timestamp.

   ```sql
   SELECT MONTH(CURRENT_TIMESTAMP) AS current_month;
   -- Output: 8
   ```

5. **DAY**: Extracts the day of the month from a timestamp.

   ```sql
   SELECT DAY(CURRENT_TIMESTAMP) AS current_day;
   -- Output: 31
   ```

6. **HOUR**: Extracts the hour from a timestamp.

   ```sql
   SELECT HOUR(CURRENT_TIMESTAMP) AS current_hour;
   -- Output: 13
   ```

7. **MINUTE**: Extracts the minute from a timestamp.

   ```sql
   SELECT MINUTE(CURRENT_TIMESTAMP) AS current_minute;
   -- Output: 45
   ```

8. **SECOND**: Extracts the second from a timestamp.

   ```sql
   SELECT SECOND(CURRENT_TIMESTAMP) AS current_second;
   -- Output: 00
   ```

9. **DAYOFWEEK**: Returns the day of the week as a number (1 for Sunday, 2 for Monday, and so on).

   ```sql
   SELECT DAYOFWEEK(CURRENT_TIMESTAMP) AS current_day_of_week;
   -- Output: 4 (Wednesday)
   ```

10. **DATE_ADD**: Adds a specified number of days to a date.

    ```sql
    SELECT DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 7 DAY) AS seven_days_later;
    -- Output: 2023-09-07 13:45:00
    ```

11. **DATE_SUB**: Subtracts a specified number of days from a date.

    ```sql
    SELECT DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 3 DAY) AS three_days_ago;
    -- Output: 2023-08-28 13:45:00
    ```

12. **DATEDIFF**: Calculates the difference between two dates in days.

    ```sql
    SELECT DATEDIFF('2023-09-05', CURRENT_DATE) AS days_until_september_5;
    -- Output: 5
    ```

These are some of the common date-related SQL functions with examples based on `CURRENT_TIMESTAMP`. Depending on your database system, some function names or syntax may vary, but the concepts are generally consistent across different SQL database systems.
