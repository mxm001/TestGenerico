USE [master]
GO

/****** Object:  Database [TestGenericoDB]    Script Date: 28/11/2018 4:45:05 ******/
CREATE DATABASE [TestGenericoDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestGenericoDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TestGenericoDB2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestGenericoDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TestGenericoDB2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [TestGenericoDB] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestGenericoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [TestGenericoDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [TestGenericoDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [TestGenericoDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [TestGenericoDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [TestGenericoDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [TestGenericoDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [TestGenericoDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [TestGenericoDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [TestGenericoDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [TestGenericoDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [TestGenericoDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [TestGenericoDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [TestGenericoDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [TestGenericoDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [TestGenericoDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [TestGenericoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [TestGenericoDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [TestGenericoDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [TestGenericoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [TestGenericoDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [TestGenericoDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [TestGenericoDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [TestGenericoDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [TestGenericoDB] SET  MULTI_USER 
GO

ALTER DATABASE [TestGenericoDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [TestGenericoDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [TestGenericoDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [TestGenericoDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [TestGenericoDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [TestGenericoDB] SET QUERY_STORE = OFF
GO

ALTER DATABASE [TestGenericoDB] SET  READ_WRITE 
GO


USE [TestGenericoDB]
GO

/****** Object:  Table [dbo].[User]    Script Date: 28/11/2018 4:50:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](60) NULL,
	[Apellido] [nchar](60) NULL,
	[Email] [nchar](100) NULL,
	[Password] [nchar](400) NULL
) ON [PRIMARY]
GO

insert into  [dbo].[User] ([Nombre],[Apellido],[Email],[Password]) values ('alan','aronowitz','alan_aronowitz@gmail.com','123456')
insert into  [dbo].[User] ([Nombre],[Apellido],[Email],[Password]) values ('joe','gordon','joe_gordon@gmail.com','Password ')
insert into  [dbo].[User] ([Nombre],[Apellido],[Email],[Password]) values ('thomas','gros','thomas_gros@gmail.com'	,'qwerty')
insert into  [dbo].[User] ([Nombre],[Apellido],[Email],[Password]) values ('mark','powell','mark_powell@gmail.com','12345'	)
insert into  [dbo].[User] ([Nombre],[Apellido],[Email],[Password]) values ('christian','yoder','christian_yoder@gmail.com','123456789'	)
insert into  [dbo].[User] ([Nombre],[Apellido],[Email],[Password]) values ('james','steffes','james_steffes@gmail.com','letmein'	)
insert into  [dbo].[User] ([Nombre],[Apellido],[Email],[Password]) values ('bonnie','white','bonnie_white@gmail.com','1234567'	)
insert into  [dbo].[User] ([Nombre],[Apellido],[Email],[Password]) values ('james','keller','james_keller@gmail.com','football'	)
insert into  [dbo].[User] ([Nombre],[Apellido],[Email],[Password]) values ('steve','hall','steve_hall@gmail.com','iloveyou'	)
insert into  [dbo].[User] ([Nombre],[Apellido],[Email],[Password]) values ('genia','fitzgerald','genia_fitzgerald@gmail.com','welcome')
insert into  [dbo].[User] ([Nombre],[Apellido],[Email],[Password]) values ('david','portz','david_portz@gmail.com','monkey')

