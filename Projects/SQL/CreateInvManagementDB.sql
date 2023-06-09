/*Create InvManagement db*/

CREATE DATABASE [InvManagment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InvManagment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\InvManagment.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InvManagment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\InvManagment_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [InvManagment] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [InvManagment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InvManagment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InvManagment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InvManagment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InvManagment] SET ARITHABORT OFF 
GO
ALTER DATABASE [InvManagment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InvManagment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InvManagment] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [InvManagment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InvManagment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InvManagment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InvManagment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InvManagment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InvManagment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InvManagment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InvManagment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InvManagment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InvManagment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InvManagment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InvManagment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InvManagment] SET  READ_WRITE 
GO
ALTER DATABASE [InvManagment] SET RECOVERY FULL 
GO
ALTER DATABASE [InvManagment] SET  MULTI_USER 
GO
ALTER DATABASE [InvManagment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InvManagment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InvManagment] SET DELAYED_DURABILITY = DISABLED 
GO
USE [InvManagment]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = On;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = Primary;
GO
USE [InvManagment]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [InvManagment] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO
