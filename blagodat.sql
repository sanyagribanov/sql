USE [master]
GO

/****** Object:  Database [gornolyzhnyi_kompleks]    Script Date: 26.09.2022 9:54:35 ******/
CREATE DATABASE [gornolyzhnyi_kompleks]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gornolyzhnyi_kompleks', FILENAME = N'H:\databases\gornolyzhnyi_kompleks.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'gornolyzhnyi_kompleks_log', FILENAME = N'H:\databases\gornolyzhnyi_kompleks_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gornolyzhnyi_kompleks].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET ARITHABORT OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET  DISABLE_BROKER 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET  MULTI_USER 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET DB_CHAINING OFF 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET QUERY_STORE = OFF
GO

ALTER DATABASE [gornolyzhnyi_kompleks] SET  READ_WRITE 
GO

