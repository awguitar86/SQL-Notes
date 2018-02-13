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


