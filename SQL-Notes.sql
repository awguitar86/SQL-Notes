/*** SQL ***/

/* Relational Database */
-- A database which is structured to show the relationships between data. They are like giant connected excel spreadsheets.
-- Uses tables with columns and rows which relate to one another.

/* Primary Keys */
-- Any one column assigned to identity each row; must be unique and constant.
-- Using an ID column is a very common solution - makes it easy to connecy with other tables.
-- The email or username can also be used as the primary key, but there can be problems with that. 
-- Using an ID as the primary key allows other columns to be the same, while having a unique key for each item.

/* Schemas */
-- Is a vocab word referencing the set of instructions on how to build the tables we're going to use in our database.
-- The layout of a table; includes column names, data types, and modifiers (like primary key and foreign keys).

/* Select Statments */
-- Are our primary mecanism to help us pull information out of databases. 
-- Another term for select statments is query. Always terminate statments with semi-colons.

SELECT * FROM [table]; -- !!be sure to end each query with a semicolon!!
-- * stands for all columns
SELECT [column] FROM [table];
-- You can select a column by name
SELECT [column], [column] FROM [table];
-- Capitilaztion is an industry standard to make queries easier to read.
-- Seperate column names with a comma when selecting multiple.

/* WHERE Keyword for Conditional Selects */
SELECT * FROM [table] WHERE [column] < [number];
SELECT * FROM cities WHERE population < 1000000; 
SELECT * FROM cities WHERE name = 'Chicago'; -- a property in database has to be rapped in single quotes only. And properties are case sensitive.
/* Logical Operators */
--      >       Greater Than
--      <       Less Than
--      >=      Greater than or Equal to
--      <=      Less than or Equal to
--      =       Equals
--   != or <>   Does Not Equal
/* AND/OR operators */
SELECT * FROM cities WHERE population > 1000000 AND name = 'San Diego' OR state_id = 5; --Evaluates WHERE and AND first then the OR
/* LIKE operator */
SELECT * FROM cities WHERE name LIKE 'chicago'; --use LIKE keyword instead of operator to do kind of a search where the property is not case sensitive.
/* IS NULL and IS NOT NULL */
SELECT * FROM cities WHERE name IS NULL;    --must use IS instead of a logical operator when using NULL or NOT NULL
SELECT * FROM cities WHERE name IS NOT NULL; 
/* BETWEEN */
SELECT * FROM cities WHERE founded BETWEEN 1800 AND 1900; --finds the rows that are between those years in column founded
/* IN/NOT IN */
SELECT * FROM cities WHERE state_id IN (3, 4); --this is kind of like an array, where it will only return the rows in the table that have the state_id of 3 or 4 or whatever other numbers are in there. 
SELECT * FROM cities WHERE state_id NOT IN (3, 4); --this returns all the rows in the table that do not have the numbers in the parenthesis.

/* Adding, Updating, and Removing */
/* ADDING */
INSERT INTO table_name (name, family); --This is how you add to a table. Inside the parenthisis is what the column names will be.
VALUES ('Berber', 'Afroasiatic'); --This will be the actual values we will want to put inside that row.
/* UPDATING */
UPDATE table_name SET column = 'value'; --Be sure to include a WHERE statement; otherwise all rows will be updated.
UPDATE table_name SET column = 'value' WHERE id = 5; --To only update a value in a column you use the WHERE statment. 
UPDATE table_name SET column = 'value' WHERE username = 'darkblade01'; --there could be two of the same usernames in the table, so it's alwasy best to use the primary key in the WHERE statment to update.
/* DELETE */
DELETE FROM table_name WHERE column = 'value';
DELETE FROM scores WHERE score < 1000; --Be sure to have a WHERE statement on DELETE FROM; otherwise all rows will be deleted from the table.


/* 1. Find the average length of all tracks in Milliseconds */
SELECT AVG(milliseconds) FROM TRACK; --We can use the AVG keyword in order to find the average of a given value.

/* 2. Find the number of invoices in the USA */
SELECT COUNT(*) FROM Invoice WHERE BillingCountry = 'USA';

/* 3. Make a list of all the First Names of Customers that contain an 'a' */
SELECT FirstName FROM Customer WHERE FirstName LIKE '%a%'; --The LIKE command does a search in the text, and the % on both sides of the value searches for that value in the text.

/* 4. Make a list of the 10 longest tracks */
SELECT * FROM Track ORDER BY Milliseconds DESC LIMIT 10;  --If you want to sort the rows by some kind of attribute, you can use the ORDER BY keyword. In order to put the names in descending order, you would add a DESC at the end of the query.

/* 5. Make a list of the 20 shortest tracks */
SELECT * FROM Track ORDER BY Milliseconds LIMIT 20; --The ORDER BY keyword by default is ina ascending order. 

/* 6. Find all the customers that live in California or Washington */
SELECT * FROM Customer WHERE State = 'CA' OR State = 'WA';
SELECT * FROM Customer WHERE State IN ('CA', 'WA'); --Using the WHERE clause, we can find rows where a value is IN a list of several possible values. 

/* 7. Find all the customers that live in California, Washington, Utah, Florida, or Arizona (Use IN keyword) */
SELECT * FROM Customer WHERE State IN ('CA', 'WA', 'UT', 'FL', 'AZ');

/* 8. Insert an artist to the database */


/* 9. Insert yourself as a customer to the database */


/* 10. Find a list of all Playlists that start with Classical */

