
--Create the database Bookstorage--

USE [master]
GO

/****** Object:  Database [Bookstorage]    Script Date: 09/07/2021 19:08:36 ******/
CREATE DATABASE [Bookstorage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bookstorage', FILENAME = N'E:\SQLDATA\DB\Bookstorage.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bookstorage_log', FILENAME = N'E:\SQLDATA\LOG\Bookstorage_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bookstorage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Bookstorage] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Bookstorage] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Bookstorage] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Bookstorage] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Bookstorage] SET ARITHABORT OFF 
GO

ALTER DATABASE [Bookstorage] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Bookstorage] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Bookstorage] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Bookstorage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Bookstorage] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Bookstorage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Bookstorage] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Bookstorage] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Bookstorage] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Bookstorage] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Bookstorage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Bookstorage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Bookstorage] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Bookstorage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Bookstorage] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Bookstorage] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Bookstorage] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Bookstorage] SET RECOVERY FULL 
GO

ALTER DATABASE [Bookstorage] SET  MULTI_USER 
GO

ALTER DATABASE [Bookstorage] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Bookstorage] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Bookstorage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Bookstorage] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Bookstorage] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Bookstorage] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Bookstorage] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Bookstorage] SET  READ_WRITE 
GO


--Create Schema Book--

USE [Bookstorage]
GO

/****** Object:  Schema [Book]    Script Date: 09/07/2021 19:13:49 ******/
CREATE SCHEMA [Book]
GO

--Create Schema Sales--

USE [Bookstorage]
GO

/****** Object:  Schema [Sales]    Script Date: 09/07/2021 19:14:35 ******/
CREATE SCHEMA [Sales]
GO


--Create Table Book.Authors--


USE [Bookstorage]
GO

/****** Object:  Table [Book].[Authors]    Script Date: 09/07/2021 19:26:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Book].[Authors](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Book].[Authors] ADD  DEFAULT (NULL) FOR [FirstName]
GO


--Create Table Book.Publishers--


USE [Bookstorage]
GO

/****** Object:  Table [Book].[Publishers]    Script Date: 11/07/2021 11:01:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Book].[Publishers](
	[PublisherID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[PublishedDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


--Create Table Book.Categories--


USE [Bookstorage]
GO

/****** Object:  Table [Book].[Categories]    Script Date: 09/07/2021 19:57:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Book].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](40) NOT NULL,
	[ParentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Book].[Categories]  WITH CHECK ADD  CONSTRAINT [fk_parent] FOREIGN KEY([ParentID])
REFERENCES [Book].[Categories] ([CategoryID])
GO

ALTER TABLE [Book].[Categories] CHECK CONSTRAINT [fk_parent]
GO


--Create Table Book.Books--


USE [Bookstorage]
GO

/****** Object:  Table [Book].[Books]    Script Date: 11/07/2021 10:58:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Book].[Books](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[BookTitle] [nvarchar](255) NOT NULL,
	[ISBN] [varchar](14) NOT NULL,
	[ListPrice] [decimal](10, 2) NOT NULL,
	[TotalPages] [int] NULL,
	[AuthorID] [int] NOT NULL,
	[PublisherID] [int] NOT NULL,
	[StockInTrade] [int] NULL,
	[Description] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_isbn] UNIQUE NONCLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Book].[Books]  WITH CHECK ADD  CONSTRAINT [fk_author] FOREIGN KEY([AuthorID])
REFERENCES [Book].[Authors] ([AuthorID])
GO

ALTER TABLE [Book].[Books] CHECK CONSTRAINT [fk_author]
GO

ALTER TABLE [Book].[Books]  WITH CHECK ADD  CONSTRAINT [fk_publisher] FOREIGN KEY([PublisherID])
REFERENCES [Book].[Publishers] ([PublisherID])
GO

ALTER TABLE [Book].[Books] CHECK CONSTRAINT [fk_publisher]
GO

ALTER TABLE [Book].[Books]  WITH CHECK ADD  CONSTRAINT [pos_price] CHECK  (([ListPrice]>(0)))
GO

ALTER TABLE [Book].[Books] CHECK CONSTRAINT [pos_price]
GO


--Create Table Book.Books_Categories--


USE [Bookstorage]
GO

/****** Object:  Table [Book].[Books_Categories]    Script Date: 09/07/2021 21:11:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Book].[Books_Categories](
	[BookID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Book].[Books_Categories]  WITH CHECK ADD  CONSTRAINT [fk_book] FOREIGN KEY([BookID])
REFERENCES [Book].[Books] ([BookID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [Book].[Books_Categories] CHECK CONSTRAINT [fk_book]
GO

ALTER TABLE [Book].[Books_Categories]  WITH CHECK ADD  CONSTRAINT [fk_category] FOREIGN KEY([CategoryID])
REFERENCES [Book].[Categories] ([CategoryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [Book].[Books_Categories] CHECK CONSTRAINT [fk_category]
GO

--Create Table Book.Reviews--


USE [Bookstorage]
GO

/****** Object:  Table [Book].[Reviews]    Script Date: 11/07/2021 11:13:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Book].[Reviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[ReviewerName] [nvarchar](100) NULL,
	[Content] [nvarchar](255) NULL,
	[Rating] [decimal](4, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Book].[Reviews]  WITH CHECK ADD  CONSTRAINT [fk_review] FOREIGN KEY([BookID])
REFERENCES [Book].[Books] ([BookID])
ON DELETE CASCADE
GO

ALTER TABLE [Book].[Reviews] CHECK CONSTRAINT [fk_review]
GO


--Create table Book.Photo--


USE [Bookstorage]
GO

/****** Object:  Table [Book].[Photo]    Script Date: 11/07/2021 10:39:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Book].[Photo](
	[PhotoID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[PATH] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[PhotoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Book].[Photo]  WITH CHECK ADD  CONSTRAINT [fk_book_photo] FOREIGN KEY([BookID])
REFERENCES [Book].[Books] ([BookID])
GO

ALTER TABLE [Book].[Photo] CHECK CONSTRAINT [fk_book_photo]
GO


--Create Table Sales.Customers--


USE [Bookstorage]
GO

/****** Object:  Table [Sales].[Customers]    Script Date: 11/07/2021 01:07:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Sales].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Phone] [varchar](25) NULL,
	[Email] [varchar](255) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[StateProvince] [nvarchar](50) NOT NULL,
	[PostalAddress] [nvarchar](100) NOT NULL,
	[PostalCode] [nvarchar](10) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_username] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Sales].[Customers] ADD  DEFAULT (NULL) FOR [Phone]
GO


--Create Table Sales.Staffs--


USE [Bookstorage]
GO

/****** Object:  Table [Sales].[Staffs]    Script Date: 11/07/2021 10:28:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Sales].[Staffs](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Phone] [varchar](25) NOT NULL,
	[Active] [bit] NOT NULL,
	[LogonName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_email_staff] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_logon] UNIQUE NONCLUSTERED 
(
	[LogonName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


--Create Table Sales.Orders--


USE [Bookstorage]
GO

/****** Object:  Table [Sales].[Orders]    Script Date: 11/07/2021 10:21:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Sales].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderStatus] [tinyint] NOT NULL,
	--OrderStatus: 1 = Pending; 2 = Processing; 3 = Completed; 4 = Cancelled--
	[OrderDate] [date] NOT NULL,
	[ShippingDate] [date] NOT NULL,
	[StaffId] [int] NOT NULL,
	[TotalNum] [int] NULL,
	[TotalPrice] [decimal](10, 2) NULL,
	[Delivery] [nvarchar](50) NOT NULL,
	[Payment] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Sales].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_customer] FOREIGN KEY([CustomerID])
REFERENCES [Sales].[Customers] ([CustomerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [Sales].[Orders] CHECK CONSTRAINT [fk_customer]
GO

ALTER TABLE [Sales].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_staff] FOREIGN KEY([StaffId])
REFERENCES [Sales].[Staffs] ([StaffID])
ON UPDATE CASCADE
GO

ALTER TABLE [Sales].[Orders] CHECK CONSTRAINT [fk_staff]
GO

ALTER TABLE [Sales].[Orders]  WITH CHECK ADD  CONSTRAINT [restrict_orderstatus] CHECK  (([OrderStatus]=(1) OR [OrderStatus]=(2) OR [OrderStatus]=(3) OR [OrderStatus]=(4)))
GO

ALTER TABLE [Sales].[Orders] CHECK CONSTRAINT [restrict_orderstatus]
GO


--Create Table Sales.OrderItems--


USE [Bookstorage]
GO

/****** Object:  Table [Sales].[OrderItems]    Script Date: 11/07/2021 02:00:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Sales].[OrderItems](
	[OrderItemID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](10, 2) NOT NULL,
	[Discount] [decimal](4, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Sales].[OrderItems] ADD  DEFAULT (NULL) FOR [Discount]
GO

ALTER TABLE [Sales].[OrderItems]  WITH CHECK ADD  CONSTRAINT [fk_book_orders] FOREIGN KEY([BookID])
REFERENCES [Book].[Books] ([BookID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [Sales].[OrderItems] CHECK CONSTRAINT [fk_book_orders]
GO

ALTER TABLE [Sales].[OrderItems]  WITH CHECK ADD  CONSTRAINT [fk_orders] FOREIGN KEY([OrderID])
REFERENCES [Sales].[Orders] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [Sales].[OrderItems] CHECK CONSTRAINT [fk_orders]
GO

ALTER TABLE [Sales].[OrderItems]  WITH CHECK ADD CHECK  (([UnitPrice]>(0)))
GO























