USE [master]
GO
/****** Object:  Database [CourtCases_Harkomal]    Script Date: 30-07-2019 01:33:05 AM ******/
CREATE DATABASE [CourtCases_Harkomal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CourtCases_Harkomal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CourtCases_Harkomal.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CourtCases_Harkomal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CourtCases_Harkomal_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CourtCases_Harkomal] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CourtCases_Harkomal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CourtCases_Harkomal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET ARITHABORT OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CourtCases_Harkomal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CourtCases_Harkomal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CourtCases_Harkomal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CourtCases_Harkomal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CourtCases_Harkomal] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CourtCases_Harkomal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CourtCases_Harkomal] SET  MULTI_USER 
GO
ALTER DATABASE [CourtCases_Harkomal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CourtCases_Harkomal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CourtCases_Harkomal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CourtCases_Harkomal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CourtCases_Harkomal] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CourtCases_Harkomal]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 30-07-2019 01:33:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 30-07-2019 01:33:05 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 30-07-2019 01:33:05 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 30-07-2019 01:33:05 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 30-07-2019 01:33:05 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 30-07-2019 01:33:05 AM ******/
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
/****** Object:  Table [dbo].[CaseMasters]    Script Date: 30-07-2019 01:33:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseMasters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JudgeMastersID] [int] NOT NULL,
	[PartiesID] [int] NOT NULL,
	[LawyerMasterID] [int] NOT NULL,
	[CaseName] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.CaseMasters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CourtRooms]    Script Date: 30-07-2019 01:33:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourtRooms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoomNo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.CourtRooms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HearingMasters]    Script Date: 30-07-2019 01:33:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HearingMasters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CaseMasterID] [int] NOT NULL,
	[CurrentDate] [datetime] NULL,
	[NextDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.HearingMasters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JudgeMasters]    Script Date: 30-07-2019 01:33:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JudgeMasters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JudgeName] [nvarchar](max) NULL,
	[Speciality] [nvarchar](max) NULL,
	[Age] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.JudgeMasters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LawyerMasters]    Script Date: 30-07-2019 01:33:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LawyerMasters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LawyerName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LawyerMasters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parties]    Script Date: 30-07-2019 01:33:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parties](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Parties] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 30-07-2019 01:33:05 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 30-07-2019 01:33:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 30-07-2019 01:33:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 30-07-2019 01:33:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 30-07-2019 01:33:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 30-07-2019 01:33:05 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_JudgeMastersID]    Script Date: 30-07-2019 01:33:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_JudgeMastersID] ON [dbo].[CaseMasters]
(
	[JudgeMastersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LawyerMasterID]    Script Date: 30-07-2019 01:33:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_LawyerMasterID] ON [dbo].[CaseMasters]
(
	[LawyerMasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PartiesID]    Script Date: 30-07-2019 01:33:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_PartiesID] ON [dbo].[CaseMasters]
(
	[PartiesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CaseMasterID]    Script Date: 30-07-2019 01:33:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_CaseMasterID] ON [dbo].[HearingMasters]
(
	[CaseMasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[CaseMasters]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CaseMasters_dbo.JudgeMasters_JudgeMastersID] FOREIGN KEY([JudgeMastersID])
REFERENCES [dbo].[JudgeMasters] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CaseMasters] CHECK CONSTRAINT [FK_dbo.CaseMasters_dbo.JudgeMasters_JudgeMastersID]
GO
ALTER TABLE [dbo].[CaseMasters]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CaseMasters_dbo.LawyerMasters_LawyerMasterID] FOREIGN KEY([LawyerMasterID])
REFERENCES [dbo].[LawyerMasters] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CaseMasters] CHECK CONSTRAINT [FK_dbo.CaseMasters_dbo.LawyerMasters_LawyerMasterID]
GO
ALTER TABLE [dbo].[CaseMasters]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CaseMasters_dbo.Parties_PartiesID] FOREIGN KEY([PartiesID])
REFERENCES [dbo].[Parties] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CaseMasters] CHECK CONSTRAINT [FK_dbo.CaseMasters_dbo.Parties_PartiesID]
GO
ALTER TABLE [dbo].[HearingMasters]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HearingMasters_dbo.CaseMasters_CaseMasterID] FOREIGN KEY([CaseMasterID])
REFERENCES [dbo].[CaseMasters] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HearingMasters] CHECK CONSTRAINT [FK_dbo.HearingMasters_dbo.CaseMasters_CaseMasterID]
GO
USE [master]
GO
ALTER DATABASE [CourtCases_Harkomal] SET  READ_WRITE 
GO
