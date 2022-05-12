
## Database

* Show databases
* Create 
* Drop
* Use


show databases;
create database abc;
drop database abc;
use sakila;
show tables;


## Table

* Create
	* Constraints
    * Primary Key
    * Foreign Key
* Update
	* Add one Row at a Time
			
            
    * Add Multiple Rows at a time
            ```
            INSERT into table_name VALUES (value1, value2..);
			```

    
* Alter
	* Add New Column
		```
        ALTER TABLE table_name ADD (column_name);
		```
    
    * Add constraint
    * Drop Column

* Drop
	* Drop Table
* Delete
	* Delete Table
    * Delete entries using where statement





## Writing First Statement

* SELECT
* FROM
* WHERE
* GROUP BY
* ORDER BY
* HAVING
* LIKE
* LIMIT
* 
* 




## JOINS
```
SELECT column_name(s) 
 FROM table_name1&nbsp;
 INNER JOIN table_name2 
 ON column_name1=column_name2;
 ```
* INNER JOIN 
* LEFT JOIN
* RIGHT JOIN
* FULL JOIN






## Aggregate Function

* AVG(): Returns the average value from specified columns.
* COUNT(): Returns number of table rows.
* MAX(): Returns the largest value among the records.
* MIN(): Returns smallest value among the records.
* SUM(): Returns the sum of specified column values.
* FIRST(): Returns the first value.
* LAST(): Returns last value.






## Scalar Function

Scalar functions are used to return a single value based on the input values.

* 	UCASE(): Converts the specified field in the upper case.
* 	LCASE(): Converts the specified field in lower case.
* 	MID(): Extracts and returns character from the text field.
* 	FORMAT(): Specifies the display format.
* 	LEN(): Specifies the length of the text field.
* 	ROUND(): Rounds up the decimal field value to a number.







## Transactions

* A transaction can be defined as the sequence task that is performed on databases in a logical manner to gain certain results.
* Operations like Creating, updating, deleting records performed in the database come from transactions.
* In simple words, we can say that a transaction means a group of SQL queries executed on database records.

* There are 4 transaction controls such as
	* COMMIT: It is used to save all changes made through the transaction.
    * ROLLBACK: It is used to roll back the transaction. All changes made by the transaction are reverted back and the database remains as before.
    * SET TRANSACTION: Set the name of the transaction.
    * SAVEPOINT: It is used to set the point where the transaction is to be rolled back.


* Properties of the transaction:
		* Atomicity: Ensures the completeness of all transactions performed. Checks whether every transaction is completed successfully or not. If not, then the transaction is aborted at the failure point and the previous transaction is rolled back to its initial state as changes are undone.
        * Consistency: Ensures that all changes made through successful transactions are reflected properly on the database.
        * Isolation: Ensures that all transactions are performed independently and changes made by one transaction are not reflected on others.
        * Durability: Ensures that the changes made in the database with committed transactions persist as it is even after a system failure.





## Triggers
* Triggers in SQL is kind of stored procedures used to create a response to a specific action performed on the table such as INSERT, UPDATE or DELETE.
* You can invoke triggers explicitly on the table in the database.

Action and Event are two main components of SQL triggers. When certain actions are performed, the event occurs in response to that action.

* Syntax:
```
CREATE TRIGGER name {BEFORE|AFTER} (event [OR..]}
ON table_name [FOR [EACH] {ROW|STATEMENT}]
EXECUTE PROCEDURE functionname {arguments}
```



## View

* A View can be defined as a virtual table that contains rows and columns with fields from one or more tables.

### Create View
```
CREATE VIEW view_name AS
SELECT column_name(s) 
FROM table_name 
WHERE condition
```

### Update the view

* SQL CREATE and REPLACE can be used for updating the view.
```
CREATE OR REPLACE VIEW view_name AS
 SELECT column_name(s)
 FROM table_name
 WHERE condition
```



## Subquery

Query within another query is called as Subquery. A subquery is called inner query which returns output that is to be used by another query.




## Clustered and non-clustered indexes



## DELETE and TRUNCATE

* The basic difference in both is DELETE command is DML command and the TRUNCATE command is DDL.
* DELETE command is used to delete a specific row from the table whereas the TRUNCATE command is used to remove all rows from the table.
* We can use the DELETE command with WHERE clause but cannot use the TRUNCATE command with it.




## DROP and TRUNCATE?

* TRUNCATE removes all rows from the table which cannot be retrieved back
* DROP removes the entire table from the database and it also cannot be retrieved back.




## Normalization forms 
Normalization is used to organize the data in such a manner that data redundancy will never occur in the database and avoid insert, update and delete anomalies.

There are 5 forms of Normalization:

* First Normal Form (1NF): Removes all duplicate columns from the table. It creates a table for related data and identifies unique column values.
* Second Normal Form (2NF): Follows 1NF and creates and places data subsets in an individual table and defines the relationship between tables using the primary key.
* Third Normal Form (3NF): Follows 2NF and removes those columns which are not related through the primary key.
* Fourth Normal Form (4NF): Follows 3NF and does not define multi-valued dependencies. 4NF is also known as BCNF.





## Relationship

There are 4 types of relationships:

* One to One Relationship
* Many to One Relationship
* Many to Many Relationship
* One to Many Relationship




## Stored Procedures






## Properties of Relational databases

Properties are as follows:

* In relational databases, each column should have a unique name.
* The sequence of rows and columns in relational databases is insignificant.
* All values are atomic and each row is unique.




## UNION, MINUS, UNION ALL, INTERSECT


MINUS – returns all distinct rows selected by the first query but not by the second.
UNION – returns all distinct rows selected by either query
UNION ALL – returns all rows selected by either query, including all duplicates.
INTERSECT – returns all distinct rows selected by both queries.




## Indexes in SQL

## Case function


## CTE

* A CTE or common table expression is an expression that contains temporary result set which is defined in a SQL statement.




## Advantages of Views are:

* Views restrict access to the data because the view can display selective columns from the table.
* Views can be used to make simple queries to retrieve the results of complicated queries. For Example, views can be used to query information from multiple tables without the user knowing.

