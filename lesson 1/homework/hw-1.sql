--homework 1 SQL Murad Saidakmedov 


-- Q 1. Define the following terms: data, database, relational database, and table.

-- Data is collection of raw, unprocessed informaiton, facts, figures (numbers, dates, words, images). It provodes no meaning, 
-- until connected with other data in a table. 

-- Database is an organized, electronically stored collection of data that can be efficiently accessed, managed, and updated. 
-- A database is controlled by a database management system (DBMS) software, which serves as an interface between 
-- the database and its users. 

-- Relational database is a type of database that organizes data into one or more tables (or "relations") of rows and columns 
-- with predefined relationships. This structure makes it easy to understand how different data points are connected. 
-- A key feature is the use of unique identifiers, or keys, to establish logical links between different tables. 

-- Table is a fundamental component of a relational database that organizes data in a row-and-column format. 
-- Columns define the specific type of data stored, such as "Name" or "Email Address", while rows contains a single, 
-- unique entry of data for every column. 




Q 2. List five key features of SQL Server.
-- Features of SQL server include: storing, processing, and securing data, replication, full-text search, 
-- tools for managing relational database. 

-- 
Q 3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
-- At the Microsoft SQL Server two aunthentification modes are avaialbe: 1) Windows Authentication Mode; 
-- 2) Mixed Mode (SQL Server and Windows Authentication Mode)



4-- Create a new database in SSMS named SchoolDB.

create database SchoolDB

use SchoolDB


-- 5. Write and execute a query to create a table called Students with columns: 
StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
create table Students 
(StudentID INT, 
Name VARCHAR(50), 
Age INT);

select * from Students

-- 6. Describe the differences between SQL Server, SSMS, and SQL.
-- SQL is the language you use to communicate with a database.
-- SQL Server is the database management system that understands and executes SQL commands.
-- SSMS is a graphical tool that allows you to interact with SQL Server and manage its databases. 

-- 7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
-- The Data Query Language (DQL) in SQL is primarily concerned with retrieving and querying data from a database. 
-- The core command in DQL is the SELECT statement. Select is the fundamental command used to specify which columns 
-- you want to retrieve from a table or tables


--DML - Data Manipulation Language, commands in SQL are used to manage and manipulate the data within database tables. 
--These commands enable operations such as retrieving, inserting, updating, and deleting data. 
-- Include commands like: INSERT, UPDATE, DELETE 

--DDL (Data Definition Language) commands in SQL are used to define, modify, and delete database structures or schemas. 
--These commands manage the structure of database objects, rather than the data itself. 
--Examples are: CREATE, DROP, ALTER, TRUNCATE. 

-- Data Control Language (DCL) commands in SQL are used to manage access 
-- to a database and its objects, such as tables, views, and stored procedures. 
-- These commands primarily control permissions and security within the database system.
-- Examples of DCL commands are: GRANT and REVOKE 

-- TCL is Transaction Control Language, and there commands are used to manage 
-- transactions within a database, ensuring data integrity and consistency.
-- TCL has following commands: COMMIT, SAVEPOINT, ROLLBACK. 


--  Write a query to insert three records into the Students table.
insert into Students values 
(1, 'John Smith', 22, 'physics'),
(2, 'Marie Query', 23, 'math'),
(3, 'David Backham', 34, 'geology'); 

select * from Students


-- I downloaded Adventure bak file from the link, then located it in the folder: 
--C:\Program Files (x86)\Microsoft SQL Server Management Studio 20
-- after that went to Object explorer, right clicked Databases, choose restore database, 
-- under the "Source" section, selected "Device" and then clicked the dots, selected file, clicked Add and Ok.
-- but then it showed me error. 
