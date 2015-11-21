[Schema Designer](schema_screenshot.png)


What are databases for?

To store a lot of data and create an ease of access to that information through unique keys.

What is a one-to-many relationship?

In a one-to-many relationship, each row in the related to table can be related to many rows in the relating table. This allows frequently used information to be saved only once in a table and referenced many times in all other tables.

What is a primary key? What is a foreign key?

The primary key is a unique id which could be for example a drivers licence. Foreign keys are used to reference unique columns in another table with the use of the primary key. It makes sense to use a foreign key if they have a relationship between columns in two different tables.

How can you determine which is which?

When a primary key is composed of multiple columns, the data from each column is used to determine whether a row is unique. When defining a table you specify the primary key. A table has just one primary key, and its definition is mandatory.

A foreign key is a set of one or more columns in a table that refers to the primary key in another table. There isn’t any special code, configurations, or table definitions you need to place to officially “designate” a foreign key.

How can you select information out of a SQL database? What are some general guidelines for that?

SELECT column_2 FROM table1

_______________________________________________


1 SELECT * FROM states;
2 SELECT * FROM regions;

3 sqlite> SELECT state_name, population
   ...> FROM states;

4 sqlite> SELECT state_name, population
   ...> FROM states
   ...> ORDER BY population DESC;

5 sqlite> SELECT state_name FROM states
   ...> WHERE region_id=7;
state_name
----------
Arkansas
Louisiana
Oklahoma
Texas

6 sqlite> SELECT state_name, population_density FROM states
   ...> WHERE population_density > 50
   ...> GROUP BY population_density;

7 sqlite> SELECT state_name, population FROM states
   ...> WHERE population BETWEEN 1000000 AND 1500000;

8 sqlite> SELECT state_name, region_id
   ...> FROM states
   ...> ORDER BY region_id ASC;

9 sqlite> SELECT * FROM regions
   ...> WHERE region_name LIKE "%Central%";

10 sqlite> SELECT region_name, state_name FROM regions, states
   ...> ORDER BY region_id;