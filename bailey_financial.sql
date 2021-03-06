USE [master]
GO
/****** Object:  Database [bailey_financial]    Script Date: 5/12/2022 7:28:08 PM ******/
CREATE DATABASE [bailey_financial]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bailey_financial', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bailey_financial.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bailey_financial_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bailey_financial_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bailey_financial] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bailey_financial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bailey_financial] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bailey_financial] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bailey_financial] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bailey_financial] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bailey_financial] SET ARITHABORT OFF 
GO
ALTER DATABASE [bailey_financial] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bailey_financial] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bailey_financial] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bailey_financial] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bailey_financial] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bailey_financial] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bailey_financial] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bailey_financial] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bailey_financial] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bailey_financial] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bailey_financial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bailey_financial] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bailey_financial] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bailey_financial] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bailey_financial] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bailey_financial] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bailey_financial] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bailey_financial] SET RECOVERY FULL 
GO
ALTER DATABASE [bailey_financial] SET  MULTI_USER 
GO
ALTER DATABASE [bailey_financial] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bailey_financial] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bailey_financial] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bailey_financial] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bailey_financial] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bailey_financial] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bailey_financial', N'ON'
GO
ALTER DATABASE [bailey_financial] SET QUERY_STORE = OFF
GO
USE [bailey_financial]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 5/12/2022 7:28:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountNumber] [varchar](50) NOT NULL,
	[MemberID] [varchar](50) NOT NULL,
	[InstitutionID] [varchar](50) NOT NULL,
	[Value] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/12/2022 7:28:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [varchar](50) NOT NULL,
	[fName] [varchar](100) NOT NULL,
	[lName] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Institutions]    Script Date: 5/12/2022 7:28:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Institutions](
	[InstitutionID] [varchar](50) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[RoutingNumber] [varchar](100) NOT NULL,
	[Address] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InstitutionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 5/12/2022 7:28:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberID] [varchar](50) NOT NULL,
	[fName] [varchar](100) NOT NULL,
	[lName] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [bailey_financial] SET  READ_WRITE 
GO
