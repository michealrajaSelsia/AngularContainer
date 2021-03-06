USE [master]
GO
/****** Object:  Database [University]    Script Date: 2/15/2019 2:24:06 AM ******/
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
/****** Object:  UserDefinedTableType [dbo].[Application]    Script Date: 2/15/2019 2:24:06 AM ******/
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
/****** Object:  UserDefinedTableType [dbo].[TypeApplication]    Script Date: 2/15/2019 2:24:06 AM ******/
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
/****** Object:  UserDefinedTableType [dbo].[TypeApplicationStatus]    Script Date: 2/15/2019 2:24:06 AM ******/
CREATE TYPE [dbo].[TypeApplicationStatus] AS TABLE(
	[ApplicationID] [nvarchar](10) NULL,
	[ApprovedStatus] [nvarchar](50) NULL,
	[ApprovedBy] [nvarchar](50) NULL,
	[ApplicationComment] [nvarchar](200) NULL,
	[ApprovedOn] [date] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[typeContactUS]    Script Date: 2/15/2019 2:24:06 AM ******/
CREATE TYPE [dbo].[typeContactUS] AS TABLE(
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](500) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TypeUserRegistration]    Script Date: 2/15/2019 2:24:06 AM ******/
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
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/15/2019 2:24:06 AM ******/
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
/****** Object:  Table [dbo].[Admin]    Script Date: 2/15/2019 2:24:07 AM ******/
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
/****** Object:  Table [dbo].[AdminMenu]    Script Date: 2/15/2019 2:24:07 AM ******/
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
/****** Object:  Table [dbo].[Application]    Script Date: 2/15/2019 2:24:07 AM ******/
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
/****** Object:  Table [dbo].[ApplicationStatus]    Script Date: 2/15/2019 2:24:07 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/15/2019 2:24:08 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/15/2019 2:24:08 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/15/2019 2:24:08 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/15/2019 2:24:08 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/15/2019 2:24:09 AM ******/
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
/****** Object:  Table [dbo].[CommonMenu]    Script Date: 2/15/2019 2:24:09 AM ******/
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
/****** Object:  Table [dbo].[ContactUS]    Script Date: 2/15/2019 2:24:10 AM ******/
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
/****** Object:  Table [dbo].[Courses]    Script Date: 2/15/2019 2:24:10 AM ******/
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
/****** Object:  Table [dbo].[GalleryImage]    Script Date: 2/15/2019 2:24:10 AM ******/
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
/****** Object:  Table [dbo].[Religion]    Script Date: 2/15/2019 2:24:10 AM ******/
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
/****** Object:  Table [dbo].[StudentMenu]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  Table [dbo].[UserRegistration]    Script Date: 2/15/2019 2:24:11 AM ******/
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
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201901211814310_InitialCreate', N'ServiceAPI.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CD919CC1AED044EDBCE1A3BBE60DA13E46DC096D86D62244A9128C7C6225F96877C527E618B1275E345976EB9BB1D0C30B0C8E2A962B148168BC5FEF3F73FA6DF3F07BEF584E38484F4CC3E9A1CDA16A66EE811BA3AB353B6FCF683FDFD777FFFDBF4D20B9EAD9F0ABA134E072D6972663F32169D3A4EE23EE200259380B87198844B3671C3C0415EE81C1F1EFEDB393A723040D8806559D34F296524C0D9077CCE42EAE288A5C8BF093DEC27A21C6AE619AA758B029C44C8C567F61CC74FC4C5E7F7D7939CD8B6CE7D82125EE32F6D0B511A32C440CCD3CF099EB338A4AB790405C87F788930D02D919F6021FE6945DEB72787C7BC274ED5B08072D38485C140C0A313A11A476EBE9682ED5275A0BC4B50327BE1BDCE1478665F7B382BFA14FAA00099E1E9CC8F39F1997D53B2384FA25BCC2645C3490E791503DCAF61FC7552473CB07AB73B284DE97872C8FF1D58B3D467698CCF284E598CFC03EB3E5DF8C4FD2F7E7908BF627A7672B4589E7C78F71E7927EFFF854FDED57B0A7D05BA460114DDC7618463900D2FCBFEDB96D36CE7C80DCB66B536B956C0966056D8D60D7AFE88E98A3DC27C39FE605B57E4197B458930AECF94C02482462C4EE1F336F57DB4F07159EFB4F2E4FFB7703D7EF77E14AEB7E889ACB2A197F8C3C489615E7DC27E569B3C92289F5E8DF1FE22C8AEE230E0DF4DFBCA6BBFCCC3347679674223C9038A579835A59B3A95F1F632690E35BE5917A8FB6FDA5C52D5BCB5A4BC43EBCC8482C5B6674321EFEBF2ED6D71E7510483979916D7489BC1297BD5446A7C60552495E11CF5351C0A1DFA2BAF83970122FE080B610F2EE0822C491CE0B2973F846076880E96F91E2509AC03DE7F50F2D8223AFC3982E873ECA63198E79CA1207A756EF78F21C5B769B0E056BF3D5EA30DCDC3AFE1157259185F52DE6A63BC8FA1FB354CD925F52E10C39F995B00F2CF0712F40718459C73D7C5497205C68CBD59081E7601784DD9C9F16038BE3EEDDA1199F988047A4F445A49BF14A49537A2A7503C120399CE2B6913F563B822B49FA805A959D49CA25354413654540ED64F524169163423E89433A71ACDCFCB46687C472F83DD7F4F6FB3CDDBB416D4D438871512FF88298E6119F3EE116338A6D508F4593776E12C64C3C799BEFADE9471FA09F9E9D8ACD69A0DD92230FE6CC860F77F36646242F113F1B857D2E3F85310037C2F7AFDC9AA7BCE49926D7B3A34BAB96DE6DB59034CD3E53C49429764B34013F812618BA6FCE0C359DD310C71A893E220D0313074C2B73C2881BED9B251DDD10BEC6386AD73370F0CCE50E2224F552374C81B2058B1A36A04ABE2214DE1FEA9F0044BC7316F84F8212881994A2853A705A12E8990DFA925A965CF2D8CF7BDE421D75CE00853CEB053137D98EBC31F5C80928F34285D1A9A3A358B6B374483D76A1AF32E17B61A77252AB1159BECF09D0D7629FCB75731CC768D6DC138DB55D2470063286F17062ACE2A7D0D403EB8EC9B814A272683810A976A2B06DAD4D80E0CB4A9923767A0F911B5EFF84BE7D57D33CFE64179FBDB7AABBA76609B0D7DEC9969E6BE27B461D002C7AA795E2C78257E669AC319C829CE678970756513E1E073CC9A219BCADFD5FAA14E3B886C446D8095A175808A4B400548995003842B6279ADD2092F62006C11776B85156BBF045BB30115BB7E195A23345F99CAC6D9EBF451F6ACB406C5C87B1D166A381A839017AF66C77B28C514975515D3C7171EE20DD73A2606A345411D9EAB4149456746D752619ADD5AD23964435CB28DB424B94F062D159D195D4BC246BB95A4710A06B8051BA9A8B9858F34D98A4847B9DB947553274F91120553C7904B35BD415144E8AA965B254AAC799E5835FB763E3CE528C8311C37D1641E95D2969C5818A315966A8135487A45E2845D20861688C779665EA09069F756C3F25FB0AC6F9FEA2016FB4041CDFF2E6E56E5ABFBC656ABFA2202E20A3A187087268BA26B865FDFDCE2A96EC847B126703F0BFD34A066FFCADC3ABFBEABB7CF4B5484A923C9AFF84F8AB2142FB7A9F95EE3A2CE8971C6A8F45ED61F27338449DB85EF59D7B7C91F35A314E1A93A8A2964B5B37133B93143C64A7610870F5527C2EBCC2A91955207104503316A890D0A58ADAE3F6A33F7A48ED9ACE98F282598D421A5AA0152D6D3481A42D62BD6C23368544FD19F839A385247576BFB236B5248EAD09AEA35B03532CB75FD5135592675604D757FEC2AE5445E43F778DF321E5BD6DDB8F283ED663B9701E37516C47136BEDAFD7D1DA8563C104BDCD02B60A27C2F8DC978BA5BD798F270C666C664C030AF3B8D8BEFE6B2D37A5B6FC66CDC663796F6B6DB7C33DE30937D55C350CE763249C9BD3CE34967B9A93857753F9E510E5A39896D156A04737A49180E269C6032FFC59FF904F345BC20B841942C71C2F20C0EFBF8F0E8587A80B33F8F619C24F17CCDB9D4F422A639665B48C6A24F28761F51ACA6466CF060A40255A2CED7D4C3CF67F6FFB256A7590083FF95151F58D7C9674A7E49A1E2214EB1F59B9AEA394E027DFB096B4F9F3BF4D7EAF5CF5FF2A607D65D0C33E6D43A9474B9CE08371F410C92266FBA81346B3F8D78BB13AAF1F2408B2A4D88F51F1A2C081BE5914121E537017AFEC750D1B40F093642D43C16180B6F14159A1E03AC83657C08E0C127CB1E020CEBACFE61C03AA2191F05103A1C4C7E12D07F192A5AEE70ABD11C89B6B124657AEE4CA9DE28BF72D77B939279BDD14457B3AB07C06D9041BD8665BCB1E4E3D176474D6EF168D8BB34ED574F28DE971CE22ABB63B7A9C3DBCC166EB913FA4B2509EF415A9B264D67F7A9C0DBB635531877CFF3298725FCEE99B189E4ADDDA7F56EDBD84C61DE3D37B641C9BB7B666BBBDA3F776C69BDB7D09DA7E2AA594586EB185D2CB82BD5360F9CC3097F118211E41E65FE42529FDBD59697DAC1B0223133352795C98C9589A3F05528DAD90EEBABD8F05B3B2B68DAD91A5231DB788BF5BF95B7A069E76D4870DC4592B036C55097B8DDB18EB56540BDA5A4E0464F3A72D0BB7CD6D6BBF5B794033C8A521AB3C77047FC76527E4751C9985367408AAF7ADD0B7B67ED171561FF4EC8AA82E0BFAF48B1DBD8354B9A6BBA0C8BCD5B92A8209122343798210FB6D4F3989125721954F31873F6C43B8BDBF19B8E05F6AEE95DCAA294419771B0F01B012FEE04B4F1CFF2989B324FEFA2ECD74AC6E8028849786CFE8EFE9012DF2BE5BED2C4840C10DCBB10115D3E968C4776572F25D26D487B0209F5954ED1030E221FC0923B3A474F781DD9C0FC3EE215725FAA08A009A47B209A6A9F5E10B48A5190088CAA3D7C820D7BC1F377FF0704D3059B58540000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([ID], [Username], [Password], [isActive]) VALUES (CAST(1 AS Numeric(12, 0)), N'Raja', N'Raja', 1)
INSERT [dbo].[Admin] ([ID], [Username], [Password], [isActive]) VALUES (CAST(2 AS Numeric(12, 0)), N'Micheal', N'1234', 1)
INSERT [dbo].[Admin] ([ID], [Username], [Password], [isActive]) VALUES (CAST(3 AS Numeric(12, 0)), N'Admin', N'Admin', 1)
INSERT [dbo].[Admin] ([ID], [Username], [Password], [isActive]) VALUES (CAST(4 AS Numeric(12, 0)), N'Admin', N'123', 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Application] ON 

INSERT [dbo].[Application] ([ID], [ApplicationID], [Course], [Fname], [Lname], [Fullname], [DOB], [Gender], [FatherName], [MotherName], [Religion], [Nationality], [Email], [MobileNo], [P_Address], [C_Address], [SSLCSchoolName], [SSLCMark], [SSLCPercentage], [HSCSchoolName], [HSCMark], [HSCPercentage], [UGSchoolName], [UGMark], [UGPercentage], [PGSchoolName], [PGMark], [PGPercentage], [CreateOn], [isActive]) VALUES (CAST(1 AS Numeric(20, 0)), N'10001', N'en', N'Micheal Raja', N'D', N'', CAST(N'2018-12-01' AS Date), 0, N'Dominic', N'Merry', N'Christian', N'India', N'michealraja@gmail.com', CAST(0 AS Numeric(15, 0)), N'Cuddalore', N'Chennai', N'Donbosco', CAST(450 AS Numeric(10, 0)), CAST(80 AS Numeric(2, 0)), N'', CAST(950 AS Numeric(10, 0)), CAST(90 AS Numeric(2, 0)), N'Josephs', CAST(7 AS Numeric(10, 0)), CAST(60 AS Numeric(2, 0)), N'', CAST(8 AS Numeric(10, 0)), CAST(80 AS Numeric(2, 0)), CAST(N'0001-01-01' AS Date), 0)
INSERT [dbo].[Application] ([ID], [ApplicationID], [Course], [Fname], [Lname], [Fullname], [DOB], [Gender], [FatherName], [MotherName], [Religion], [Nationality], [Email], [MobileNo], [P_Address], [C_Address], [SSLCSchoolName], [SSLCMark], [SSLCPercentage], [HSCSchoolName], [HSCMark], [HSCPercentage], [UGSchoolName], [UGMark], [UGPercentage], [PGSchoolName], [PGMark], [PGPercentage], [CreateOn], [isActive]) VALUES (CAST(2 AS Numeric(20, 0)), N'8220600722', N'en', N'Karthik', N'A', N'', CAST(N'2012-12-12' AS Date), 0, N'Ravi', N'rani', N'Hindu', N'India', N'karthi@gmail.com', CAST(0 AS Numeric(15, 0)), N'Chennai', N'Chennai', N'AKT', CAST(60 AS Numeric(10, 0)), CAST(50 AS Numeric(2, 0)), N'', CAST(63 AS Numeric(10, 0)), CAST(58 AS Numeric(2, 0)), N'CG', CAST(63 AS Numeric(10, 0)), CAST(65 AS Numeric(2, 0)), N'', CAST(69 AS Numeric(10, 0)), CAST(68 AS Numeric(2, 0)), CAST(N'2018-12-29' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Application] OFF
SET IDENTITY_INSERT [dbo].[ApplicationStatus] ON 

INSERT [dbo].[ApplicationStatus] ([Id], [ApplicationID], [ApprovedStatus], [ApprovedBy], [ApplicationComment], [ApprovedOn]) VALUES (1, N'APP1000', N'Completed', N'Raja', N'Good', CAST(N'2018-11-10' AS Date))
INSERT [dbo].[ApplicationStatus] ([Id], [ApplicationID], [ApprovedStatus], [ApprovedBy], [ApplicationComment], [ApprovedOn]) VALUES (2, N'10001', N'Approved', N'Raja', N'Good', CAST(N'2018-12-12' AS Date))
SET IDENTITY_INSERT [dbo].[ApplicationStatus] OFF
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'02d16918-fe36-4fc3-b441-4a81a50c36bc', N'Michealraja23160@gmail.com', 1, N'AEgehCrukHKMUdDtbO4qemSSVhANJ02Pl+gZAaF4silEbxEhZaB2x5kmeTiPyDSIHA==', N'89d6c814-2a69-49d2-8f66-57de66437f26', N'8190074627', 1, 0, NULL, 0, 0, N'Michealraja23160@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'24bf5709-3a27-43d5-8b09-0fae803e4090', N'mvichealraja45410@gmail.com', 0, N'AGEGkqSxoApgaXYGZxcY0gNoJpFN+J9sxaxiACPXiQPSQK1ALw9ZGhIHZ1kRHFqXoQ==', N'bf5c7cda-ce8a-42bf-b664-9a987f9986e6', NULL, 0, 0, NULL, 0, 0, N'mvichealraja45410@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2bf217e3-39b4-41f0-a785-e1384ab1eacd', N'Michealraja9868@gmail.com', 1, N'AFWqex2fG0gpOAyoE1kfqQUpqeXPCd4EMFkMqprl+iRRRyMiEqNmhKF1fi6rtJCePw==', N'0684f9e3-dbd3-40c5-b787-6ac0e63d32b4', N'Michealraja9868@gmail.com', 1, 0, NULL, 0, 0, N'Michealraja9868@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'365e3361-15d2-4cdc-92e6-84944f556f58', N'mvichealraja454101@gmail.com', 0, N'ADTJ3beKNTwM7v2GpsuAKnie9dwN8NY0RoWn0Sr1ol+4zMEGmsT7CWtWDuNsNRmuPg==', N'dceca880-d320-4bfd-ad1a-bd79bd17453f', NULL, 0, 0, NULL, 0, 0, N'mvichealraja454101@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4710b125-83d5-44c3-b36f-620a7352f626', N'Michealrajaf44541254@gmail.com', 1, N'ANOLmRS8oQ1u2CfVfrQI6kBn8QIlCAao7PGucIaZanfYyDU6oRWzAN+A463w0X946A==', N'67bb2d52-827d-45cb-b704-e812109b7409', N'8998498', 1, 0, NULL, 0, 0, N'Michealrajaf44541254@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'553e10a2-e152-475f-b235-6c8d4a6e711d', N'Michealraja44541254@gmail.com', 1, N'ADMAzV290kKMIvAu0Lgx6IXgHDJ8OyK4cnWRWiairi6zvGWqpWoVJ3HtwCzJUTFgSA==', N'e1bea929-7ccd-4b25-bd5e-212e7d5d79b9', N'8190074627', 1, 0, NULL, 0, 0, N'Michealraja44541254@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5c19b89e-5ed3-4d38-b695-99dff2817072', N'Michealraja986866@gmail.com', 1, N'ALFzcrGIPRvp9w7gaXdS5jVLHrHpu6YGAP220Gi2avm0b9E/8NavNGMA2QovqCeTxA==', N'3c74d974-7bea-4ffc-a13a-9ebc4311ac9a', N'8190074627', 1, 0, NULL, 0, 0, N'Michealraja986866@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'80ac2230-b4bd-40f1-96b8-a8d730d60da0', N'michealraja1431@gmail.com', 0, N'AE5S8NeCCeczajEtaQ/pd60PkAVZ2lkUh9QDv0HXBiGUJvOn8vlGz+yHOWIESFlCmA==', N'd6524009-2029-409b-ab3c-877aeec6fbc7', NULL, 0, 0, NULL, 0, 0, N'michealraja1431@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ad52127d-68ce-4f4a-a188-144fde7d27de', N'Michealraja23@gmail.com', 0, N'AJbHWjWb/TYbCVeGfI+CnaQdY9j+MncBEg5G2KjQPtV6XJ8URphHhInop5c3UDQWRg==', N'4c2842e4-1f8e-4ca3-a596-eeb3ee2113c1', NULL, 0, 0, NULL, 0, 0, N'Michealraja23@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ba39318e-93c3-4379-a3aa-5f0a04aaa6e1', N'Michealraja231@gmail.com', 1, N'ACVN+GPukP/+6RN7FtlnPvsEbaYmU9YIJ+B1WbEDaQXL7gS7t5dIerv2NB34Y9tE7Q==', N'ec27925f-e550-4856-8a16-68a05a667e1f', N'8190074627', 1, 0, NULL, 0, 0, N'Michealraja231@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd34e9819-3791-46bd-b213-781249edc45c', N'Michealraja1500@gmail.com', 1, N'AOA2M4pfnme2jODR4neU02tXOiHWKLTUJ41/f3n6lTHK8w1uEifn/K0LIkDw3hbVvQ==', N'60e7584f-9454-4627-aedf-112b77fa095e', N'7410852963', 1, 0, NULL, 0, 0, N'Michealraja1500@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd39a9fdd-0890-452f-828b-121e061fc944', N'Michealrajaf200@gmail.com', 1, N'AJnoWNzQIpBdcJ4XAC+hvEuk1Fwy1AZcw4bnealncb2KQukay1MKUiMt9yxwBc3d4g==', N'986931bc-63e2-43b0-b918-842394750ce8', N'9894865451', 1, 0, NULL, 0, 0, N'Michealrajaf200@gmail.com')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (1, N'Home', N'/Home', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (2, N'Contactus', N'/Contactus', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (3, N'Galary', N'/Galary', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (4, N'History', N'/History', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (5, N'Registration', N'/Registration', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (5, N'adminlogin', N'/adminlogin', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (5, N'Studentlogin', N'/Studentlogin', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (1, N'Home', N'/Home', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (2, N'My Profile', N'/MyProfile', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (3, N'Application', N'/Application', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (4, N'Complaint', N'/Complaint', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (1, N'Home', N'/Home', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (2, N'My Profile', N'/MyProfile', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (3, N'New Application', N'/NewApplication', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (3, N'Edit Application', N'/EditApplication', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (3, N'Delete Application', N'/DeleteApplication', N'')
INSERT [dbo].[CommonMenu] ([id], [MenuName], [URL], [description]) VALUES (4, N'Complaint', N'/Complaint', N'')
SET IDENTITY_INSERT [dbo].[ContactUS] ON 

INSERT [dbo].[ContactUS] ([ID], [Name], [Email], [Subject], [Message]) VALUES (1, N'raja', N'ff', N'sdf', N'df')
INSERT [dbo].[ContactUS] ([ID], [Name], [Email], [Subject], [Message]) VALUES (2, N'dfg', N'dfg', N'dfg', N'dfg')
INSERT [dbo].[ContactUS] ([ID], [Name], [Email], [Subject], [Message]) VALUES (3, N'jhh', N'jhk', N'jk', N'hjk')
SET IDENTITY_INSERT [dbo].[ContactUS] OFF
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (1, N'ANE', N'AERONAUTICAL ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (2, N'ASE', N'AEROSPACE ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (3, N'AUT', N'AUTOMOBILE ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (4, N'BIO', N'BIO-TECHNOLOGY', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (5, N'BME', N'BIO-MEDICAL ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (6, N'CEE', N'CIVIL ENVIRONMENTAL ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (7, N'CER', N'CHEMICAL (CERAMIC) TECHNOLOGY', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (8, N'CHE', N'CHEMICAL ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (9, N'CIV', N'CIVIL ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (10, N'CPE', N'CHEMICAL PETRO ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (11, N'CSE', N'COMPUTER SCIENCE AND ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (12, N'CSS', N'COMPUTER SCIENCE AND SYSTEMS ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (13, N'CST', N'COMPUTER SCIENCE AND TECHNOLOGY', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (14, N'ECE', N'ELECTRONICS AND COMMUNICATION ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (15, N'ECM', N'ELECTRONICS AND COMPUTER ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (16, N'ECS', N'ELECTRONICS CONTROL SYSTEMS ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (17, N'EEE', N'ELECTRICAL AND ELECTRONICS ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (18, N'EIE', N'ELECTRONICS AND INSTRUMENTATION ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (19, N'ETM', N'ELECTRONICS AND TELEMATICS', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (20, N'GIN', N'GEO-INFORMATICS', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (21, N'INF', N'INFORMATION TECHNOLOGY', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (22, N'IPE', N'INDUSTRIAL PRODUCTION ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (23, N'IST', N'INSTRUMENTATION ENGINEERING AND TECHNOLOGY', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (24, N'MCT', N'MECHANICAL (MECHTRONICS) ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (25, N'MEC', N'MECHANICAL ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (26, N'MET', N'METALLURGICAL ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (27, N'MIN', N'MINING ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (28, N'MME', N'MINING MACHINERY ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (29, N'MMT', N'METALLURGY AND MATERIAL ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (30, N'MNT', N'MATERIAL SCIENCE AND NANO TECHNOLOGY', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (31, N'NAM', N'NAVAL ARCHITECTURE AND MARINE ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (32, N'PCT', N'PETROCHEMICAL TECHNOLOGY', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (33, N'PET', N'PETROLEUM ENGINEERING/TECHNOLOGY', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (34, N'PHM', N'B. PHARMACY', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (35, N'PWR', N'POWER ENGINEERING', NULL, 1)
INSERT [dbo].[Courses] ([ID], [CourseCode], [CourseName], [Description], [isActive]) VALUES (36, N'TEX', N'TEXTILE TECHNOLOGY', NULL, 1)
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[GalleryImage] ON 

INSERT [dbo].[GalleryImage] ([Id], [Name], [ImgPath], [Description], [Liked], [DisLiked]) VALUES (1, N'Photo1', N'../../../assets/Images/b1.jpg', NULL, NULL, NULL)
INSERT [dbo].[GalleryImage] ([Id], [Name], [ImgPath], [Description], [Liked], [DisLiked]) VALUES (2, N'Photo2', N'../../../assets/Images/b2.jpg', NULL, NULL, NULL)
INSERT [dbo].[GalleryImage] ([Id], [Name], [ImgPath], [Description], [Liked], [DisLiked]) VALUES (3, N'Photo3', N'../../../assets/Images/b3.jpg', NULL, NULL, NULL)
INSERT [dbo].[GalleryImage] ([Id], [Name], [ImgPath], [Description], [Liked], [DisLiked]) VALUES (4, N'Photo4', N'../../../assets/Images/b4.jpg', NULL, NULL, NULL)
INSERT [dbo].[GalleryImage] ([Id], [Name], [ImgPath], [Description], [Liked], [DisLiked]) VALUES (5, N'Photo1', N'../../../assets/Images/b5.png', NULL, NULL, NULL)
INSERT [dbo].[GalleryImage] ([Id], [Name], [ImgPath], [Description], [Liked], [DisLiked]) VALUES (6, N'Photo2', N'../../../assets/Images/b6.jpg', NULL, NULL, NULL)
INSERT [dbo].[GalleryImage] ([Id], [Name], [ImgPath], [Description], [Liked], [DisLiked]) VALUES (7, N'Photo3', N'../../../assets/Images/b7.jpg', NULL, NULL, NULL)
INSERT [dbo].[GalleryImage] ([Id], [Name], [ImgPath], [Description], [Liked], [DisLiked]) VALUES (8, N'Photo4', N'../../../assets/Images/b8.jpg', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[GalleryImage] OFF
SET IDENTITY_INSERT [dbo].[Religion] ON 

INSERT [dbo].[Religion] ([ID], [ReligionName], [isActive]) VALUES (1, N'Buddhism', 1)
INSERT [dbo].[Religion] ([ID], [ReligionName], [isActive]) VALUES (2, N'Christians', 1)
INSERT [dbo].[Religion] ([ID], [ReligionName], [isActive]) VALUES (3, N'Hinduism', 1)
INSERT [dbo].[Religion] ([ID], [ReligionName], [isActive]) VALUES (4, N'Islam', 1)
INSERT [dbo].[Religion] ([ID], [ReligionName], [isActive]) VALUES (5, N'Jainism', 1)
INSERT [dbo].[Religion] ([ID], [ReligionName], [isActive]) VALUES (6, N'Sikhism', 1)
INSERT [dbo].[Religion] ([ID], [ReligionName], [isActive]) VALUES (7, N'Zoroastrian', 1)
INSERT [dbo].[Religion] ([ID], [ReligionName], [isActive]) VALUES (8, N'Guru Nanak Dev', 1)
INSERT [dbo].[Religion] ([ID], [ReligionName], [isActive]) VALUES (9, N'Lord Mahavira', 1)
INSERT [dbo].[Religion] ([ID], [ReligionName], [isActive]) VALUES (10, N'Adi Shankaracharya', 1)
SET IDENTITY_INSERT [dbo].[Religion] OFF
SET IDENTITY_INSERT [dbo].[UserRegistration] ON 

INSERT [dbo].[UserRegistration] ([id], [Userid], [Name], [Username], [Password], [EmailID], [PhoneNo], [Createdon], [isActive]) VALUES (CAST(1 AS Numeric(10, 0)), N'U10000', N'Micheal', N'Micheal1', N'Micheal1', N'micheal@gmail.com', N'8190074627', CAST(N'2018-12-12' AS Date), 1)
INSERT [dbo].[UserRegistration] ([id], [Userid], [Name], [Username], [Password], [EmailID], [PhoneNo], [Createdon], [isActive]) VALUES (CAST(2 AS Numeric(10, 0)), N'', N'Micheal', N'Micheal123', N'0000252525', N'Micheal123@gmail.com', NULL, CAST(N'2018-11-25' AS Date), 1)
SET IDENTITY_INSERT [dbo].[UserRegistration] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/15/2019 2:24:11 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2/15/2019 2:24:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2/15/2019 2:24:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2/15/2019 2:24:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2/15/2019 2:24:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetApplication]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetApplicationStatus]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetCourses]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetGalleryImages]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[getNewApplicationID]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetReligion]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetUserDetails]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[saveContactUS]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateApplication]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateApplicationStatus]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[ValidateAdminLogin]    Script Date: 2/15/2019 2:24:11 AM ******/
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
/****** Object:  StoredProcedure [dbo].[ValidateUserLogin]    Script Date: 2/15/2019 2:24:11 AM ******/
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
