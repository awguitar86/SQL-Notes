/*** SQL ***/

/* Relational Database */
// A database which is structured to show the relationships between data. They are like giant connected excel spreadsheets.
// Uses tables with columns and rows which relate to one another.

/* Primary Keys */
// Any one column assigned to identity each row; must be unique and constant.
// Using an ID column is a very common solution - makes it easy to connecy with other tables.
// The email or username can also be used as the primary key, but there can be problems with that. 
// Using an ID as the primary key allows other columns to be the same, while having a unique key for each item.

/* Schemas */
// Is a vocab word referencing the set of instructions on how to build the tables we're going to use in our database.
// The layout of a table; includes column names, data types, and modifiers (like primary key and foreign keys).

/* Select Statments */
// Are our primary mecanism to help us pull information out of databases. 
// Another term for select statments is query. Always terminate statments with semi-colons.

SELECT * FROM [table]; // !!be sure to end each query with a semicolon!!
// * stands for all columns
SELECT [column] FROM [table];
// You can select a column by name
SELECT [column], [column] FROM [table];
// Capitilaztion is an industry standard to make queries easier to read.
// Seperate column names with a comma when selecting multiple.

/* WHERE Keyword for Conditional Selects */
SELECT * FROM [table] WHERE [column] < [number];
SELECT * FROM cities WHERE population < 1000000; 
SELECT * FROM cities WHERE name = 'Chicago'; // a property in database has to be rapped in single quotes only. And properties are case sensitive.
/* Logical Operators */
//      >       Greater Than
//      <       Less Than
//      >=      Greater than or Equal to
//      <=      Less than or Equal to
//      =       Equals
//   != or <>   Does Not Equal
/* AND/OR operators */
SELECT * FROM cities WHERE population > 1000000 AND name = 'San Diego' OR state_id = 5; //Evaluates WHERE and AND first then the OR
/* LIKE operator */
SELECT * FROM cities WHERE name LIKE 'chicago'; //use LIKE keyword instead of operator to do kind of a search where the property is not case sensitive.
/* IS NULL and IS NOT NULL */
SELECT * FROM cities WHERE name IS NULL;    //must use IS instead of a logical operator when using NULL or NOT NULL
SELECT * FROM cities WHERE name IS NOT NULL; 
/* BETWEEN */
SELECT * FROM cities WHERE founded BETWEEN 1800 AND 1900; //finds the rows that are between those years in column founded
/* IN/NOT IN */
SELECT * FROM cities WHERE state_id IN (3, 4); //this is kind of like an array, where it will only return the rows in the table that have the state_id of 3 or 4 or whatever other numbers are in there. 
SELECT * FROM cities WHERE state_id NOT IN (3, 4); //this returns all the rows in the table that do not have the numbers in the parenthesis.

/* Adding, Updating, and Removing */


