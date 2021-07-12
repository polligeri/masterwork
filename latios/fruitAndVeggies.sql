USE [master]
GO

-- create database

IF NOT EXISTS (SELECT * FROM sys.databases 
WHERE name = 'FruitAndVeggies')
BEGIN

  CREATE DATABASE [FruitAndVeggies];

END;

USE [FruitAndVeggies];

-- create schema

IF NOT EXISTS ( SELECT  * FROM sys.schemas  
WHERE name = N'Business' ) 
EXEC('CREATE SCHEMA Business');

-- create table: Category

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = 'Category'
   )
   CREATE TABLE Category(
        cat_id int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_Category_id PRIMARY KEY (cat_id),
        categoryName nvarchar(50) NOT NULL,
        description varchar(100) NULL,
    );

-- Table: Supplier

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = 'Supplier'
   )
   CREATE TABLE Supplier(
        sup_id int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_Supplier_id PRIMARY KEY (sup_id),
        companyName nvarchar(30) NOT NULL
		CONSTRAINT DF_Supplier_name DEFAULT 'Unknown',
		contactName nvarchar(30) NOT NULL,
        email varchar(30) NOT NULL
		CONSTRAINT UK_Supplier_email UNIQUE (email),
        phone varchar(15) NOT NULL,
		address varchar(50) NULL,
		city varchar(50) NULL,
		region varchar(50) NULL,
		country varchar(50) NULL,    
    );

-- Table: Product

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = 'Product'
   )
   CREATE TABLE Product(
        pro_id int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_Product_id PRIMARY KEY (pro_id),
		cat_id int NOT NULL
		CONSTRAINT FK_Category_id FOREIGN KEY (cat_id) REFERENCES Category (cat_id),
		sup_id int NOT NULL
		CONSTRAINT FK_Supplier_id FOREIGN KEY (sup_id) REFERENCES Supplier (sup_id),
        name nvarchar(30) NOT NULL,
		unitOfMeasure varchar(15),
        unitPrice smallint NOT NULL,
        picture varbinary(max) NULL,
        );

-- Table: ProductSupplier (switch)

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = 'ProductSupplier'
   )
   CREATE TABLE ProductSupplier(
        id int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_ProductSupplier_id PRIMARY KEY (id),
        pro_id int NOT NULL
		CONSTRAINT FK_Product_id FOREIGN KEY (pro_id) REFERENCES Product (pro_id),
		sup_id int NOT NULL
		CONSTRAINT FK_ProductSupplier_id FOREIGN KEY (sup_id) REFERENCES Supplier (sup_id),
    );

-- Table: Employee

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = 'Employee'
   )
   CREATE TABLE Employee(
        emp_id int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_Employee_id PRIMARY KEY (emp_id),
        firstName varchar(50) NOT NULL,
		lastName varchar(50) NOT NULL,
		mobile varchar(10) NOT NULL,
		address varchar(100) NOT NULL,
		email varchar(50) NOT NULL,
		designation varchar(50) NULL,
		joiningDate datetime NOT NULL,
    );

-- Table: Delivery

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = 'Delivery'
   )
   CREATE TABLE Delivery(
        del_id int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_Delivery_id PRIMARY KEY (del_id),
		companyName nvarchar(30) NOT NULL
		CONSTRAINT DF_DelCompany_name DEFAULT 'Unknown',
		delivererName nvarchar(50) NOT NULL,
		delivererId smallint NOT NULL,
		mobile varchar(10) NOT NULL,
    );

-- Table: Contact

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = 'Contact'
   )
   CREATE TABLE Contact(
        con_id int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_Contact_id PRIMARY KEY (con_id),
        firstName varchar(50) NOT NULL,
		lastName varchar(50) NOT NULL,
		mobile varchar(10) NOT NULL,
		address varchar(100) NOT NULL,
		city varchar(50) NOT NULL,
		region varchar(50) NOT NULL,
		email varchar(50) NOT NULL,
		CONSTRAINT UK_Contact_email UNIQUE (email),
		signedUpDate datetime NOT NULL,
    );

-- Table: Customer

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = 'Customer'
   )
   CREATE TABLE Customer(
        cust_id int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_Customer_id PRIMARY KEY (cust_id),
		companyName nvarchar(30) NOT NULL
		CONSTRAINT DF_Company_name DEFAULT 'Unknown',
		contactName nvarchar(30) NOT NULL,
        email varchar(30) NOT NULL
		CONSTRAINT CK_Customer_email CHECK (email LIKE '%_@_%._%'),
    );

-- Table: Order

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = 'Order'
   )
  CREATE TABLE [Order](
        ord_id int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_Order_id PRIMARY KEY (ord_id),
		cust_id int NOT NULL
		CONSTRAINT FK_Customer_id FOREIGN KEY (cust_id) REFERENCES Customer (cust_id),
		emp_id int NOT NULL
		CONSTRAINT FK_Employee_id FOREIGN KEY (emp_id) REFERENCES Employee (emp_id),
		del_id int NOT NULL
		CONSTRAINT FK_Deliverer_id FOREIGN KEY (del_id) REFERENCES Delivery (del_id),
        orderDate timestamp NOT NULL,
		orderDestination nvarchar(100) NOT NULL,
		customerName nvarchar(30) NOT NULL,
		paymentMode char(3) NOT NULL,
		paymentStatus char(3) NOT NULL,
		quantityPerKilogramm smallint NULL
		);

-- Table: OrderDetail

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = 'OrderDetail'
   )
   CREATE TABLE OrderDetail(
        det_id int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_OrderDetail_id PRIMARY KEY (det_id),
		pro_id int NOT NULL
		CONSTRAINT FK_Product_id FOREIGN KEY (pro_id) REFERENCES Product (pro_id),
		productAvailible char(3) NOT NULL,
		discountPercent tinyint NULL
        );