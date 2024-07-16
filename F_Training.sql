--create db
CREATE DATABASE F_Training;
Go

--use db
USE F_Training;

--create persons table
CREATE TABLE Persons(
	ID int NOT NULL,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	Gender varchar(50) NOT NULL,
	Email varchar(50) NOT NULL
);

--insert values in person table
insert into Persons (ID, FirstName, LastName, Gender, Email) values (1, 'Fallon', 'Bloxham', 'Female', 'fbloxham0@shutterfly.com');
insert into Persons (ID, FirstName, LastName, Gender, Email) values (2, 'Lucilia', 'Cardno', 'Female', 'lcardno1@china.com.cn');
insert into Persons (ID, FirstName, LastName, Gender, Email) values (3, 'Kennie', 'Durnford', 'Polygender', 'kdurnford2@imageshack.us');
insert into Persons (ID, FirstName, LastName, Gender, Email) values (4, 'Leanna', 'Babar', 'Female', 'lbabar3@nasa.gov');
insert into Persons (ID, FirstName, LastName, Gender, Email) values (5, 'Bartlett', 'Toll', 'Agender', 'btoll4@cocolog-nifty.com');
insert into Persons (ID, FirstName, LastName, Gender, Email) values (6, 'Zebadiah', 'Penelli', 'Male', 'zpenelli5@timesonline.co.uk');
insert into Persons (ID, FirstName, LastName, Gender, Email) values (7, 'Kimbra', 'Agney', 'Female', 'kagney6@geocities.jp');
insert into Persons (ID, FirstName, LastName, Gender, Email) values (8, 'Sada', 'Ullrich', 'Female', 'sullrich7@fastcompany.com');
insert into Persons (ID, FirstName, LastName, Gender, Email) values (9, 'Albina', 'Rittmeyer', 'Female', 'arittmeyer8@macromedia.com');
insert into Persons (ID, FirstName, LastName, Gender, Email) values (10, 'Vally', 'Grisenthwaite', 'Female', 'vgrisenthwaite9@uol.com.br');


---select the data from Person table
SELECT * FROM Persons;

--update person table
UPDATE Persons
SET Email= 'FALLON@gmail.com' WHERE ID=1
SELECT @@ROWCOUNT AS ROW_COUNT;


--SELECT THE DATA USING ID =1
SELECT * FROM Persons WHERE ID=1;

--delete the ID 4
DELETE FROM Persons
WHERE ID=4;

--remove all rows
TRUNCATE TABLE Persons;

---------------------------------------------------


--create customer table
create table Customers (
	Name VARCHAR(50),
	City VARCHAR(50),
	Country VARCHAR(50),
	PostalCode VARCHAR(50)
);

--insert the data to the customers
insert into Customers (Name, City, Country, PostalCode) values ('Heindrick', 'Lomboy', 'Philippines', '1126');
insert into Customers (Name, City, Country, PostalCode) values ('Leora', 'Balitai', 'China', null);
insert into Customers (Name, City, Country, PostalCode) values ('Kelcy', 'Hekou', 'China', null);
insert into Customers (Name, City, Country, PostalCode) values ('Ethel', 'Matayumtayum', 'Philippines', '1219');
insert into Customers (Name, City, Country, PostalCode) values ('Velma', 'Strasbourg', 'France', '67200');
insert into Customers (Name, City, Country, PostalCode) values ('Donny', 'Kashirskoye', 'Russia', '396350');
insert into Customers (Name, City, Country, PostalCode) values ('Lorelle', 'Batutulis', 'Indonesia', null);
insert into Customers (Name, City, Country, PostalCode) values ('Amy', 'Kidangbang', 'Indonesia', null);
insert into Customers (Name, City, Country, PostalCode) values ('Rhodia', 'Santo Estêvão', 'Brazil', '44190000');
insert into Customers (Name, City, Country, PostalCode) values ('Mycah', 'Rondonópolis', 'Brazil', '78700-00');

--select data from customer
SELECT * FROM Customers;

--update customers value
UPDATE Customers
SET PostalCode='2244' WHERE City='Hekou'
SELECT @@ROWCOUNT AS ROW_COUNT;

SELECT * FROM Customers WHERE City= 'Hekou';

----------------------------------------------------------------------

--create Products table
create table Products (
	ProductID INT,
	ProductName VARCHAR(50),
	Category VARCHAR(50),
	Supplier VARCHAR(50)
);


--insert data into the Products
insert into Products (ProductID, ProductName, Category, Supplier) values (1, 'SENSAI CELLULAR PERFORMANCE POWDER FOUNDATION', 'Construction Clean and Final Clean', 'Canada');
insert into Products (ProductID, ProductName, Category, Supplier) values (2, 'Primer', 'EIFS', 'Colombia');
insert into Products (ProductID, ProductName, Category, Supplier) values (3, 'Gemfibrozil', 'Masonry & Precast', 'China');
insert into Products (ProductID, ProductName, Category, Supplier) values (4, 'Tenzer', 'Overhead Doors', 'Mauritania');
insert into Products (ProductID, ProductName, Category, Supplier) values (5, 'equaline laxative', 'Roofing (Asphalt)', 'Poland');
insert into Products (ProductID, ProductName, Category, Supplier) values (6, 'Advanced', 'Rebar & Wire Mesh Install', 'France');
insert into Products (ProductID, ProductName, Category, Supplier) values (7, 'Isopropyl alcohol', 'Prefabricated Aluminum Metal Canopies', 'Mexico');
insert into Products (ProductID, ProductName, Category, Supplier) values (8, 'Isoniazid', 'Painting & Vinyl Wall Covering', 'Brazil');
insert into Products (ProductID, ProductName, Category, Supplier) values (9, 'Sunscreen Mango and Coconut', 'RF Shielding', 'Brazil');
insert into Products (ProductID, ProductName, Category, Supplier) values (10, 'Prednisone', 'Hard Tile & Stone', 'Argentina');

--select the data from Products
SELECT * FROM Products;


--create Orders table
CREATE TABLE Orders(
	OrderID int,
	ProductID int,
	Quantity int,
);


--insert the values in orders
insert into Orders (OrderID, ProductID, Quantity) values (1, 1, 24);
insert into Orders (OrderID, ProductID, Quantity) values (2, 2, 5);
insert into Orders (OrderID, ProductID, Quantity) values (3, 3, 98);
insert into Orders (OrderID, ProductID, Quantity) values (4, 4, 72);
insert into Orders (OrderID, ProductID, Quantity) values (5, 5, 68);
insert into Orders (OrderID, ProductID, Quantity) values (6, 6, 19);
insert into Orders (OrderID, ProductID, Quantity) values (7, 7, 92);
insert into Orders (OrderID, ProductID, Quantity) values (8, 8, 84);
insert into Orders (OrderID, ProductID, Quantity) values (9, 9, 62);
insert into Orders (OrderID, ProductID, Quantity) values (10, 10, 48);

--using any keyword
SELECT * 
FROM Products
WHERE ProductID = ANY (SELECT ProductID FROM Orders WHERE Quantity > 90);

--using all keyword
SELECT * 
FROM Products
WHERE ProductID = ALL (SELECT ProductID FROM Orders WHERE Quantity = 48 );

--select top 3
SELECT TOP 3 * FROM Orders;

--select distinct country 
SELECT DISTINCT Country FROM Customers;

--select productname orderby asc
SELECT ProductID, ProductName FROM Products
ORDER BY ProductID ASC;

--copy the data from one table to another
SELECT * 
INTO OrderDetails
FROM Orders

--using and operator
SELECT *
FROM Customers
WHERE Country = 'France' AND Name LIKE 'V%';

--using bet operator
SELECT * FROM OrderDetails
WHERE Quantity BETWEEN 10 AND 20;

--using exists operator
SELECT *
FROM Products
WHERE EXISTS (SELECT ProductID FROM Orders WHERE Products.ProductID = Orders.OrderID AND Quantity < 20);

--using IN operators
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');


--using LIKE 
SELECT * FROM Products
WHERE ProductName LIKE 'S%';


--using NOT
SELECT * FROM Customers
WHERE NOT Country = 'Spain';

--using OR
SELECT *
FROM Customers
WHERE Country = 'France' OR Country = 'Spain';

---using IS NULL
SELECT *
FROM Orders
WHERE OrderID IS NULL;


--using like and %
SELECT ProductName
FROM Products WHERE Category LIKE 'Cons%';

--using like and 
SELECT TOP 3 ProductName 
FROM Products WHERE ProductName LIKE 'SE[^a]%'; 

