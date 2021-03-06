USE [master]
GO
/****** Object:  Database [College_fest]    Script Date: 25-05-2021 06:14:55 PM ******/
CREATE DATABASE [College_fest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'College_fest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\College_fest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'College_fest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\College_fest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [College_fest] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [College_fest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [College_fest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [College_fest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [College_fest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [College_fest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [College_fest] SET ARITHABORT OFF 
GO
ALTER DATABASE [College_fest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [College_fest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [College_fest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [College_fest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [College_fest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [College_fest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [College_fest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [College_fest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [College_fest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [College_fest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [College_fest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [College_fest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [College_fest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [College_fest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [College_fest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [College_fest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [College_fest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [College_fest] SET RECOVERY FULL 
GO
ALTER DATABASE [College_fest] SET  MULTI_USER 
GO
ALTER DATABASE [College_fest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [College_fest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [College_fest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [College_fest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [College_fest] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'College_fest', N'ON'
GO
ALTER DATABASE [College_fest] SET QUERY_STORE = OFF
GO
USE [College_fest]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 25-05-2021 06:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[name] [varchar](50) NOT NULL,
	[contactNo] [varchar](10) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](10) NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event]    Script Date: 25-05-2021 06:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event](
	[eventName] [varchar](20) NOT NULL,
	[eventDate] [date] NOT NULL,
 CONSTRAINT [PK_event] PRIMARY KEY CLUSTERED 
(
	[eventName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manageEvent]    Script Date: 25-05-2021 06:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manageEvent](
	[username] [varchar](20) NOT NULL,
	[eventName] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manageProgram]    Script Date: 25-05-2021 06:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manageProgram](
	[username] [varchar](20) NOT NULL,
	[programName] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[participate]    Script Date: 25-05-2021 06:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[participate](
	[enrollmentNo] [varchar](10) NOT NULL,
	[programName] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[program]    Script Date: 25-05-2021 06:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[program](
	[programName] [varchar](20) NOT NULL,
	[eventName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_program] PRIMARY KEY CLUSTERED 
(
	[programName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 25-05-2021 06:14:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[name] [varchar](50) NOT NULL,
	[enrollmentNo] [varchar](10) NOT NULL,
	[contactNo] [varchar](10) NOT NULL,
	[password] [varchar](10) NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[enrollmentNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[manageEvent]  WITH CHECK ADD FOREIGN KEY([eventName])
REFERENCES [dbo].[event] ([eventName])
GO
ALTER TABLE [dbo].[manageEvent]  WITH CHECK ADD  CONSTRAINT [FK__manageEve__usern__398D8EEE] FOREIGN KEY([username])
REFERENCES [dbo].[admin] ([username])
GO
ALTER TABLE [dbo].[manageEvent] CHECK CONSTRAINT [FK__manageEve__usern__398D8EEE]
GO
ALTER TABLE [dbo].[manageProgram]  WITH CHECK ADD FOREIGN KEY([programName])
REFERENCES [dbo].[program] ([programName])
GO
ALTER TABLE [dbo].[manageProgram]  WITH CHECK ADD  CONSTRAINT [FK__managePro__usern__3C69FB99] FOREIGN KEY([username])
REFERENCES [dbo].[admin] ([username])
GO
ALTER TABLE [dbo].[manageProgram] CHECK CONSTRAINT [FK__managePro__usern__3C69FB99]
GO
ALTER TABLE [dbo].[participate]  WITH CHECK ADD  CONSTRAINT [FK__participa__enrol__35BCFE0A] FOREIGN KEY([enrollmentNo])
REFERENCES [dbo].[student] ([enrollmentNo])
GO
ALTER TABLE [dbo].[participate] CHECK CONSTRAINT [FK__participa__enrol__35BCFE0A]
GO
ALTER TABLE [dbo].[participate]  WITH CHECK ADD FOREIGN KEY([programName])
REFERENCES [dbo].[program] ([programName])
GO
ALTER TABLE [dbo].[program]  WITH CHECK ADD FOREIGN KEY([eventName])
REFERENCES [dbo].[event] ([eventName])
GO
USE [master]
GO
ALTER DATABASE [College_fest] SET  READ_WRITE 
GO
