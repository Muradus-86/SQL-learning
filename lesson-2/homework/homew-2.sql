
--SQL, Murod Saidaxmedov, homework-2
--1. Create a table `Employees` with columns: `EmpID` INT, `Name` (VARCHAR(50)), and `Salary` (DECIMAL(10,2)).  
CREATE DATABASE EMPLOYEES_2

use Employees_2

create table Employees (
	EmpID INT identity (1,1) primary key, 
	name varchar (50) not null, 
	Salary DECIMAL(10,2));
	
select * from Employees

-- 2. Insert three records into the `Employees` table using different 
--    INSERT INTO approaches (single-row insert and multiple-row insert). 
insert into Employees values ('John', 5400);

Insert Into Employees (name, Salary)
	values ('Mike', 4890),
		   ('David', 6800);
		   ('Josh', 7800) 
-- 3. Update the `Salary` of an employee to `7000` where `EmpID = 1`.
update Employees 
set Salary = 7000
where EmpID = 1; 

-- 4. Delete a record from the `Employees` table where `EmpID = 2`. 

Delete from Employees
Where EmpID = 2

-- 5. Give a brief definition for difference between `DELETE`, `TRUNCATE`, and `DROP`.

-- the command Delete is used to delete specific/selected rows based on condition, and has following 
-- syntax DELETE FROM table_name WHERE condition; the command can be rolled back. 

-- the command Truncate deletes all rows but retains table structure. Has syntax TRUNCATE TABLE table_name;
-- it cannot be rolled back. 

-- the command Drop deletes the entire table or database; the syntax is following: 
-- DROP TABLE table_name; it removes table and data completely, cannot be rolled back. 

-- 6.Modify the `Name` column in the `Employees` table to `VARCHAR(100)`.
Alter table Employees
	alter column name varchar (100) not null;

-- 7. Add a new column `Department` (`VARCHAR(50)`) to the `Employees` table.  
Alter Table Employees
ADD Department varchar (50); 

-- 8. Change the data type of the `Salary` column to `FLOAT`. 
Alter Table Employees 
Alter Column Salary Float 

select * from Employees

-- 9. Create another table `Departments` with columns `DepartmentID` (INT, PRIMARY KEY) and `DepartmentName` (VARCHAR(50)). 

create table Departments (
	DepartmentID INT primary key, 
	DepartmentName varchar (50)
    );

select * from Departments

-- 10. Remove all records from the `Employees` table without deleting its structure. 
TRUNCATE TABLE Employees 


-- **Intermediate-Level Tasks (6)**

--11. Insert five records into the `Departments` table using `INSERT INTO SELECT` 
-- method(you can write anything you want as data).  


INSERT INTO Departments (DepartmentID, DepartmentName)
	SELECT 1, 'Korzinka' 
	union all
	SELECT 2, 'Makro'
	union all
	SELECT 3, 'Arzontrade' 
	union all
	SELECT 4, 'Havas'
	union all
	SELECT 5, 'CityMall' 


select * from Departments


--12. Update the `Department` of all employees where `Salary > 5000` to 'Management'.  
select * from Employees


update Employees
set Department = 'Management'
where Salary > 5000;


--13. Write a query that removes all employees but keeps the table structure intact.   

TRUNCATE TABLE Employees
 
--14. Drop the `Department` column from the `Employees` table.   

ALTER TABLE Employees 
DROP COLUMN Department;


--15. Rename the `Employees` table to `StaffMembers` using SQL commands.  

EXEC sp_rename 'Employees', 'StaffMembers';

select * from StaffMembers

--16. Write a query to completely remove the `Departments` table from the database. 

DROP TABLE Departments

### **Advanced-Level Tasks (9)**        
--17. Create a table named Products with at least 5 columns, including: ProductID (Primary Key), 
--ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)

CREATE TABLE Products (
	ProductID integer primary key,
	ProductName varchar (50), 
	Category varchar (60), 
	Price decimal (10,2)); 


select * from Products

--18. Add a CHECK constraint to ensure Price is always greater than 0.

ALTER TABLE Products
ADD CHECK (Price>0);

--19. Modify the table to add a StockQuantity column with a DEFAULT value of 50.

ALTER TABLE Products
ADD StockQuantity integer 
DEFAULT 50;

Select * from Products

--20. Rename Category to ProductCategory


EXEC sp_rename 'Products.Category', 'ProductCategory', 'column';


--21. Insert 5 records into the Products table using standard INSERT INTO queries.

INSERT INTO Products(ProductID, ProductName, ProductCategory, Price)
	VALUES 
		(1, 'phone', 'electronics',1200),
		(2, 'TVset', 'electronics', 400),
		(3, 'vacuum_cleaner', 'appliances', 500),
		(4, 'electric_saw', 'tools', 340),
		(5, 'chair', 'furniture', 36),
		(6, 'shirt', 'textile', 45);

select * from Products

--22. Use SELECT INTO to create a backup table called Products_Backup containing all Products data.
SELECT *
INTO Products_Backup
FROM Products;


--23. Rename the Products table to Inventory.

EXEC sp_rename 'Products', 'Inventory';


--24. Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.

Alter Table Inventory  
Alter Column Price Float
--command above shows error due to Price having CHECK > 0, thus it was not possible 
-- to change data type from DECIMAL to FLOAT 

select * from Inventory


--25. Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to `Inventory` table.

ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000, 5) NOT NULL;
