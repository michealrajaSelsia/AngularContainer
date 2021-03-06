USE [master]
GO
/****** Object:  Database [University]    Script Date: 2/15/2019 2:12:00 AM ******/
CREATE DATABASE [University]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'University', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MICHEALKING\MSSQL\DATA\University.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'University_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MICHEALKING\MSSQL\DATA\University_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [University] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [University].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [University] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [University] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [University] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [University] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [University] SET ARITHABORT OFF 
GO
ALTER DATABASE [University] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [University] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [University] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [University] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [University] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [University] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [University] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [University] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [University] SET  ENABLE_BROKER 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [University] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [University] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [University] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [University] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [University] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [University] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [University] SET RECOVERY FULL 
GO
ALTER DATABASE [University] SET  MULTI_USER 
GO
ALTER DATABASE [University] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [University] SET DB_CHAINING OFF 
GO
ALTER DATABASE [University] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [University] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [University] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'University', N'ON'
GO
ALTER DATABASE [University] SET QUERY_STORE = OFF
GO
USE [University]
GO
/****** Object:  UserDefinedTableType [dbo].[Application]    Script Date: 2/15/2019 2:12:01 AM ******/
CREATE TYPE [dbo].[Application] AS TABLE(
	[ID] [numeric](20, 0) IDENTITY(1,1) NOT NULL,
	[ApplicationID] [nvarchar](10) NULL,
	[Course] [nvarchar](50) NULL,
	[Fname] [nvarchar](50) NULL,
	[Lname] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[DOB] [date] NULL,
	[Gender] [bit] NULL,
	[FatherName] [nvarchar](50) NULL,
	[MotherName] [nvarchar](50) NULL,
	[Religion] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MobileNo] [numeric](15, 0) NULL,
	[P_Address] [nvarchar](500) NULL,
	[C_Address] [nvarchar](500) NULL,
	[SSLCSchoolName] [nvarchar](100) NULL,
	[SSLCMark] [numeric](10, 0) NULL,
	[SSLCPercentage] [numeric](2, 0) NULL,
	[HSCSchoolName] [nvarchar](100) NULL,
	[HSCMark] [numeric](10, 0) NULL,
	[HSCPercentage] [numeric](2, 0) NULL,
	[UGSchoolName] [nvarchar](100) NULL,
	[UGMark] [numeric](10, 0) NULL,
	[UGPercentage] [numeric](2, 0) NULL,
	[PGSchoolName] [nvarchar](100) NULL,
	[PGMark] [numeric](10, 0) NULL,
	[PGPercentage] [numeric](2, 0) NULL,
	[CreateOn] [date] NULL,
	[isActive] [bit] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TypeApplication]    Script Date: 2/15/2019 2:12:01 AM ******/
CREATE TYPE [dbo].[TypeApplication] AS TABLE(
	[ApplicationID] [nvarchar](10) NULL,
	[Course] [nvarchar](50) NULL,
	[Fname] [nvarchar](50) NULL,
	[Lname] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[DOB] [date] NULL,
	[Gender] [bit] NULL,
	[FatherName] [nvarchar](50) NULL,
	[MotherName] [nvarchar](50) NULL,
	[Religion] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MobileNo] [numeric](15, 0) NULL,
	[P_Address] [nvarchar](500) NULL,
	[C_Address] [nvarchar](500) NULL,
	[SSLCSchoolName] [nvarchar](100) NULL,
	[SSLCMark] [numeric](10, 0) NULL,
	[SSLCPercentage] [numeric](2, 0) NULL,
	[HSCSchoolName] [nvarchar](100) NULL,
	[HSCMark] [numeric](10, 0) NULL,
	[HSCPercentage] [numeric](2, 0) NULL,
	[UGSchoolName] [nvarchar](100) NULL,
	[UGMark] [numeric](10, 0) NULL,
	[UGPercentage] [numeric](2, 0) NULL,
	[PGSchoolName] [nvarchar](100) NULL,
	[PGMark] [numeric](10, 0) NULL,
	[PGPercentage] [numeric](2, 0) NULL,
	[CreateOn] [date] NULL,
	[isActive] [bit] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TypeApplicationStatus]    Script Date: 2/15/2019 2:12:01 AM ******/
CREATE TYPE [dbo].[TypeApplicationStatus] AS TABLE(
	[ApplicationID] [nvarchar](10) NULL,
	[ApprovedStatus] [nvarchar](50) NULL,
	[ApprovedBy] [nvarchar](50) NULL,
	[ApplicationComment] [nvarchar](200) NULL,
	[ApprovedOn] [date] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[typeContactUS]    Script Date: 2/15/2019 2:12:01 AM ******/
CREATE TYPE [dbo].[typeContactUS] AS TABLE(
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](500) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TypeUserRegistration]    Script Date: 2/15/2019 2:12:01 AM ******/
CREATE TYPE [dbo].[TypeUserRegistration] AS TABLE(
	[Userid] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[EmailID] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Createdon] [date] NULL,
	[isActive] [int] NULL
)
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/15/2019 2:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2/15/2019 2:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [numeric](12, 0) IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[isActive] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminMenu]    Script Date: 2/15/2019 2:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminMenu](
	[id] [int] NULL,
	[MenuName] [nvarchar](50) NULL,
	[URL] [nvarchar](200) NULL,
	[description] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 2/15/2019 2:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[ID] [numeric](20, 0) IDENTITY(1,1) NOT NULL,
	[ApplicationID] [nvarchar](10) NULL,
	[Course] [nvarchar](50) NULL,
	[Fname] [nvarchar](50) NULL,
	[Lname] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[DOB] [date] NULL,
	[Gender] [bit] NULL,
	[FatherName] [nvarchar](50) NULL,
	[MotherName] [nvarchar](50) NULL,
	[Religion] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MobileNo] [numeric](15, 0) NULL,
	[P_Address] [nvarchar](500) NULL,
	[C_Address] [nvarchar](500) NULL,
	[SSLCSchoolName] [nvarchar](100) NULL,
	[SSLCMark] [numeric](10, 0) NULL,
	[SSLCPercentage] [numeric](2, 0) NULL,
	[HSCSchoolName] [nvarchar](100) NULL,
	[HSCMark] [numeric](10, 0) NULL,
	[HSCPercentage] [numeric](2, 0) NULL,
	[UGSchoolName] [nvarchar](100) NULL,
	[UGMark] [numeric](10, 0) NULL,
	[UGPercentage] [numeric](2, 0) NULL,
	[PGSchoolName] [nvarchar](100) NULL,
	[PGMark] [numeric](10, 0) NULL,
	[PGPercentage] [numeric](2, 0) NULL,
	[CreateOn] [date] NULL,
	[isActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationStatus]    Script Date: 2/15/2019 2:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [nvarchar](10) NULL,
	[ApprovedStatus] [nvarchar](50) NULL,
	[ApprovedBy] [nvarchar](50) NULL,
	[ApplicationComment] [nvarchar](200) NULL,
	[ApprovedOn] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/15/2019 2:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/15/2019 2:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/15/2019 2:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/15/2019 2:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommonMenu]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonMenu](
	[id] [int] NULL,
	[MenuName] [nvarchar](50) NULL,
	[URL] [nvarchar](200) NULL,
	[description] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUS]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseCode] [nvarchar](50) NULL,
	[CourseName] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[isActive] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GalleryImage]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GalleryImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ImgPath] [nvarchar](1000) NULL,
	[Description] [nvarchar](200) NULL,
	[Liked] [numeric](5, 1) NULL,
	[DisLiked] [numeric](5, 1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Religion]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReligionName] [nvarchar](50) NULL,
	[isActive] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentMenu]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentMenu](
	[id] [int] NULL,
	[MenuName] [nvarchar](50) NULL,
	[URL] [nvarchar](200) NULL,
	[description] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRegistration]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRegistration](
	[id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[Userid] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[EmailID] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Createdon] [date] NULL,
	[isActive] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/15/2019 2:12:02 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2/15/2019 2:12:02 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2/15/2019 2:12:02 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2/15/2019 2:12:02 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2/15/2019 2:12:02 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/15/2019 2:12:02 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[GetApplication]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetApplication]
AS 
Begin

begin try
	select * from Application;
end try
begin catch 
select 'Faild' as status
end catch

end
GO
/****** Object:  StoredProcedure [dbo].[GetApplicationStatus]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetApplicationStatus]
As
Begin
 select * from ApplicationStatus
End
GO
/****** Object:  StoredProcedure [dbo].[GetCourses]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetCourses]
As
Begin
	SELECT * FROM Courses
End
GO
/****** Object:  StoredProcedure [dbo].[GetGalleryImages]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetGalleryImages]
AS 
Begin

begin try
	select * from GalleryImage;
end try
begin catch 
	select 'Faild' as status
end catch

end
GO
/****** Object:  StoredProcedure [dbo].[getNewApplicationID]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getNewApplicationID]
As
Begin
Declare @idLength int=0;
Declare @idtxt nvarchar(10);

select @idLength= LEN( CAST(max(id)+1 as nvarchar(200))), 
@idtxt=CAST(max(id)+1 as nvarchar(200))
from application

	select 
		Case 
		When @idLength=1 then 'ACE0000'+ @idtxt
		When @idLength=2 then 'ACE000'+ @idtxt
		When @idLength=3 then 'ACE00'+ @idtxt
		When @idLength=4 then 'ACE0'+ @idtxt
		When @idLength=5 then 'ACE'+ @idtxt
		ELSE 'ACE'+ @idtxt
	End As ApplicationID
End
GO
/****** Object:  StoredProcedure [dbo].[GetReligion]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetReligion]
As
Begin
	SELECT * FROM Religion
End
GO
/****** Object:  StoredProcedure [dbo].[GetUserDetails]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetUserDetails]
AS 
Begin
	--Insert into UserRegistration(Userid,Name, Username,EmailID, PhoneNo, Createdon, isActive) select * from @UserRegistration;	
    Select * from UserRegistration;

End

GO
/****** Object:  StoredProcedure [dbo].[saveContactUS]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[saveContactUS](@ContactUStbl typeContactUS readonly)
As
Begin
insert into ContactUS select Name,Email,Subject,Message from @ContactUStbl
End
GO
/****** Object:  StoredProcedure [dbo].[UpdateApplication]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[UpdateApplication](@Application1 [TypeApplication] readonly)
AS 
Begin

insert into Application select * from @Application1

--IF exists(select * from Application where ApplicationID <>(select ApplicationID from @Application1))
--Begin

--Insert into Application(ApplicationID,Course ,Fname ,Lname,Fullname,DOB,Gender,FatherName,MotherName,Religion,Nationality,
--Email,MobileNo,P_Address,C_Address,SSLCSchoolName,SSLCMark,SSLCPercentage,HSCSchoolName,HSCMark,HSCPercentage,
--UGSchoolName,UGMark,UGPercentage,PGSchoolName,PGMark,PGPercentage,CreateOn,isActive)

--select
--l.ApplicationID,l.Course,l.Fname ,l.Lname ,l.Fullname,l.DOB,l.Gender,l.FatherName,l.MotherName,l.Religion,l.Nationality,
--l.Email,l.MobileNo,l.P_Address,l.C_Address,l.SSLCSchoolName,l.SSLCMark,l.SSLCPercentage,l.HSCSchoolName,l.HSCMark,
--l.HSCPercentage,l.UGSchoolName,l.UGMark,l.UGPercentage,l.PGSchoolName,l.PGMark,l.PGPercentage,l.CreateOn,l.isActive	
--from Application as l
-- left outer join @Application1 as r on l.ApplicationID=r.ApplicationID 
--END

--IF exists(select * from Application where ApplicationID =(select ApplicationID from @Application1))
--Begin
--update a set 
--a.ApplicationID=b.ApplicationID,
--a.Course=b.Course,
--a.Fname=b.Fname,
--a.Lname=b.Lname,
--a.Fullname=b.Fullname,
--a.DOB=b.DOB,
--a.Gender=b.Gender,
--a.FatherName=b.FatherName,
--a.MotherName=b.MotherName,
--a.Religion=b.Religion,
--a.Nationality =b.Nationality,
--a.Email=b.Email,
--a.MobileNo=b.MobileNo,
--a.P_Address=b.P_Address,
--a.C_Address=b.C_Address,
--a.SSLCSchoolName=b.SSLCSchoolName,
--a.SSLCMark=b.SSLCMark,
--a.SSLCPercentage=b.SSLCPercentage,
--a.HSCSchoolName=b.HSCSchoolName ,
--a.HSCMark=b.HSCMark,
--a.HSCPercentage=b.HSCPercentage ,
--a.UGSchoolName=b.UGSchoolName,
--a.UGMark=b.UGMark,
--a.UGPercentage=b.UGPercentage,
--a.PGSchoolName=b.PGSchoolName,
--a.PGMark=b.PGMark,
--a.PGPercentage=b.PGPercentage,
--a.CreateOn=b.CreateOn,
--a.isActive=b.isActive from application as a 
--inner join @Application1 as b on a.ApplicationID = b.ApplicationID
--End
End

GO
/****** Object:  StoredProcedure [dbo].[UpdateApplicationStatus]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[UpdateApplicationStatus](@ApplicationStatus as TypeApplicationStatus Readonly)
As
Begin
 insert into ApplicationStatus(ApplicationID , ApprovedStatus, ApprovedBy, ApplicationComment,ApprovedOn) select * from  @ApplicationStatus
End

GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[UpdateUser](@UserRegistration TypeUserRegistration readonly)
AS 
Begin
	--Insert into UserRegistration(Userid,Name, Username,EmailID, PhoneNo, Createdon, isActive) select * from @UserRegistration;	

	insert into UserRegistration(Userid,Name, Username,Password,EmailID, PhoneNo, Createdon, isActive)
	select a.Userid, a.Name, a.Username,a.Password, a.EmailID, a.PhoneNo, a.Createdon, a.isActive from @UserRegistration as a left join UserRegistration as b on a.Userid= b.Userid where b.Userid is null

	update a set a.Name=b.Name, a.Username=b.Username,
	a.EmailID=b.EmailID, a.PhoneNo=a.PhoneNo, a.Createdon=b.Createdon, a.isActive=b.isActive
	 from  UserRegistration as a inner join @UserRegistration as b on a.Userid =b.Userid;

End
GO
/****** Object:  StoredProcedure [dbo].[ValidateAdminLogin]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ValidateAdminLogin](@Username nvarchar(50), @Password nvarchar(50))
As
Begin
	IF exists( SELECT * FROM Admin WHERE Username = @Username AND Password = @Password AND isActive=1)
	Begin
		Select 'True'  as Result;
		SELECT * FROM Admin WHERE Username = @Username AND Password = @Password AND isActive=1
	End
	Else
	Begin
		Select 'False'  as Result;
	End
End
GO
/****** Object:  StoredProcedure [dbo].[ValidateUserLogin]    Script Date: 2/15/2019 2:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ValidateUserLogin](@Username nvarchar(50), @Password nvarchar(50))
As
Begin
	IF exists( SELECT * FROM [dbo].[UserRegistration] WHERE Username = @Username AND Password = @Password AND isActive=1)
	Begin
		Select 'True' as Result;
	End
	Else
	Begin
		Select 'False' as Result;
	End
End
GO
USE [master]
GO
ALTER DATABASE [University] SET  READ_WRITE 
GO
