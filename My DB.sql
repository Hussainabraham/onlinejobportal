USE [master]
GO
/****** Object:  Database [JobPortal]    Script Date: 1/29/2015 3:37:43 PM ******/
CREATE DATABASE [JobPortal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JobPortal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\JobPortal.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JobPortal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\JobPortal_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JobPortal] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JobPortal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JobPortal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JobPortal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JobPortal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JobPortal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JobPortal] SET ARITHABORT OFF 
GO
ALTER DATABASE [JobPortal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JobPortal] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [JobPortal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JobPortal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JobPortal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JobPortal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JobPortal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JobPortal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JobPortal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JobPortal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JobPortal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JobPortal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JobPortal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JobPortal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JobPortal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JobPortal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JobPortal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JobPortal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JobPortal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JobPortal] SET  MULTI_USER 
GO
ALTER DATABASE [JobPortal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JobPortal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JobPortal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JobPortal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [JobPortal]
GO
/****** Object:  Table [dbo].[Accedmic_Information]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accedmic_Information](
	[Accadmic_ID] [int] IDENTITY(1,1) NOT NULL,
	[D_Level_ID] [int] NULL,
	[D_Title_ID] [int] NULL,
	[Major_subject] [varchar](50) NULL,
	[Country_ID] [int] NULL,
	[City_ID] [int] NULL,
	[Institute_ID] [int] NULL,
	[Year_ID] [int] NULL,
	[status] [bit] NULL,
	[Description] [varchar](50) NULL,
	[Person_ID] [int] NULL,
 CONSTRAINT [PK_Accedmic_Information] PRIMARY KEY CLUSTERED 
(
	[Accadmic_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Account_Information]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account_Information](
	[Account_ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_type_ID] [int] NULL,
	[Email_ID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Discription] [varchar](50) NULL,
	[Person_ID] [int] NULL,
 CONSTRAINT [PK_Account_Information] PRIMARY KEY CLUSTERED 
(
	[Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Account_Type]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account_Type](
	[Account_type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_type] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Account_Type] PRIMARY KEY CLUSTERED 
(
	[Account_type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Area_OF_Intrst]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Area_OF_Intrst](
	[Area_INT_ID] [int] IDENTITY(1,1) NOT NULL,
	[Area_Of_Intrest] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Area_OF_Intrst] PRIMARY KEY CLUSTERED 
(
	[Area_INT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Career_Level]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Career_Level](
	[Career_Level_ID] [int] IDENTITY(1,1) NOT NULL,
	[Career_Level] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Career_Level] PRIMARY KEY CLUSTERED 
(
	[Career_Level_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[City_ID] [int] IDENTITY(1,1) NOT NULL,
	[City_Name] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
	[Country_ID] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[City_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[company]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[company](
	[Company_id] [int] IDENTITY(1,1) NOT NULL,
	[Company_name] [varchar](50) NULL,
	[Employ_id] [int] NULL,
	[status] [bit] NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED 
(
	[Company_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[Contact_ID] [int] IDENTITY(1,1) NOT NULL,
	[Contct_Number] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Contact_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[Country_ID] [int] IDENTITY(1,1) NOT NULL,
	[Country_Name] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Country_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country_Code]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country_Code](
	[Country_Code_ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Country_ID] [int] NULL,
 CONSTRAINT [PK_Country_Code] PRIMARY KEY CLUSTERED 
(
	[Country_Code_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Days]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Days](
	[Days_ID] [int] IDENTITY(1,1) NOT NULL,
	[Days] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Days] PRIMARY KEY CLUSTERED 
(
	[Days_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Degree_Level]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Degree_Level](
	[D_Level_ID] [int] IDENTITY(1,1) NOT NULL,
	[Digree_Level] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Degree_Level] PRIMARY KEY CLUSTERED 
(
	[D_Level_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Degree_Title]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Degree_Title](
	[D_Title_ID] [int] IDENTITY(1,1) NOT NULL,
	[Degree_Title] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
	[D_Level_ID] [int] NULL,
 CONSTRAINT [PK_Degree_Title] PRIMARY KEY CLUSTERED 
(
	[D_Title_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employer](
	[Employ_id] [int] IDENTITY(1,1) NOT NULL,
	[Employ_name] [varchar](50) NULL,
	[Company_name] [varchar](50) NULL,
	[First_name] [varchar](50) NULL,
	[Last_name] [varchar](50) NULL,
	[Country_ID] [int] NULL,
	[City_ID] [int] NULL,
	[Profession_Ind_ID] [int] NULL,
	[Telephone] [varchar](50) NULL,
	[Mobile_no] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Abbout_com] [varchar](50) NULL,
	[comp_Type] [bit] NULL,
	[status] [bit] NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_Employer] PRIMARY KEY CLUSTERED 
(
	[Employ_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fresh]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fresh](
	[Fresh_id] [int] IDENTITY(1,1) NOT NULL,
	[Area_INT_ID] [int] NULL,
	[Function_Area_ID] [int] NULL,
	[Career_Level_ID] [int] NULL,
	[Person_ID] [int] NULL,
	[status] [bit] NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_Fresh] PRIMARY KEY CLUSTERED 
(
	[Fresh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fuctional_Area]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fuctional_Area](
	[Function_Area_ID] [int] IDENTITY(1,1) NOT NULL,
	[Func_Name] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Fuctional_Area] PRIMARY KEY CLUSTERED 
(
	[Function_Area_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gender](
	[Gender_ID] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Gender_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Institution]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Institution](
	[Institute_ID] [int] IDENTITY(1,1) NOT NULL,
	[Institute_Name] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Country_ID] [int] NULL,
 CONSTRAINT [PK_Institution] PRIMARY KEY CLUSTERED 
(
	[Institute_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Job_apply]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_apply](
	[Job_Apply_id] [int] IDENTITY(1,1) NOT NULL,
	[job_id] [int] NULL,
	[Person_ID] [int] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Job_apply] PRIMARY KEY CLUSTERED 
(
	[Job_Apply_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[job_post]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[job_post](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[job_title] [varchar](50) NULL,
	[description] [varchar](50) NULL,
	[Work_Exp_ID] [int] NULL,
	[Function_Area_ID] [int] NULL,
	[skills] [varchar](50) NULL,
	[responsiblities] [varchar](50) NULL,
	[Career_Level_ID] [int] NULL,
	[Country_ID] [int] NULL,
	[City_ID] [int] NULL,
	[salary] [varchar](50) NULL,
	[lastdatetoapply] [varchar](50) NULL,
	[company] [varchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_job_post] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jobs]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jobs](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[job_Name] [varchar](50) NULL,
	[Employ_id] [int] NULL,
	[Company_id] [int] NULL,
	[City_ID] [int] NULL,
	[Start_Date] [date] NULL,
	[Exp_Date] [date] NULL,
	[status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_jobs] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mobile_Com_Code]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mobile_Com_Code](
	[Mobile_Com_ID] [int] IDENTITY(1,1) NOT NULL,
	[M_Code] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
	[Country_ID] [int] NULL,
 CONSTRAINT [PK_Mobile_Com_Code] PRIMARY KEY CLUSTERED 
(
	[Mobile_Com_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Month]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Month](
	[Month_ID] [int] IDENTITY(1,1) NOT NULL,
	[Month] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Month] PRIMARY KEY CLUSTERED 
(
	[Month_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nationnality]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nationnality](
	[Nation_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nationality] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Nationnality] PRIMARY KEY CLUSTERED 
(
	[Nation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person_Information]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person_Information](
	[Person_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Caste] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Gender_ID] [int] NULL,
	[Dob] [varchar](50) NULL,
	[Country_ID] [int] NULL,
	[City_ID] [int] NULL,
	[Nation_ID] [int] NULL,
	[Cnic] [varchar](50) NULL,
	[Mobile_no] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Profile_pic] [varchar](50) NULL,
	[cv] [varchar](50) NULL,
	[status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Person_Information] PRIMARY KEY CLUSTERED 
(
	[Person_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Professional_Industry]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Professional_Industry](
	[Profession_Ind_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pro_Name] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Professional_Industry] PRIMARY KEY CLUSTERED 
(
	[Profession_Ind_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Professional_Information]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Professional_Information](
	[Profession_ID] [int] IDENTITY(1,1) NOT NULL,
	[Experience] [varchar](50) NULL,
	[JobStartDate] [date] NULL,
	[Work_Exp_ID] [int] NULL,
	[Profession_Ind_ID] [int] NULL,
	[Function_Area_ID] [int] NULL,
	[Career_Level_ID] [int] NULL,
	[Area_INT_ID] [int] NULL,
	[Recent_Job] [varchar](50) NULL,
	[From] [date] NULL,
	[To] [date] NULL,
	[Company_Name] [varchar](50) NULL,
	[Country_ID] [int] NULL,
	[City_ID] [int] NULL,
	[status] [bit] NULL,
	[description] [varchar](50) NULL,
	[Person_ID] [int] NULL,
 CONSTRAINT [PK_Professional_Information] PRIMARY KEY CLUSTERED 
(
	[Profession_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registarion]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registarion](
	[reg_id] [int] IDENTITY(10,1) NOT NULL,
	[Account_type_ID] [int] NULL,
	[Email_id] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Registarion] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Work_Experience]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Work_Experience](
	[Work_Exp_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Work_Experience] PRIMARY KEY CLUSTERED 
(
	[Work_Exp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Year]    Script Date: 1/29/2015 3:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Year](
	[Year_ID] [int] IDENTITY(1,1) NOT NULL,
	[Year] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Year] PRIMARY KEY CLUSTERED 
(
	[Year_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accedmic_Information] ON 

INSERT [dbo].[Accedmic_Information] ([Accadmic_ID], [D_Level_ID], [D_Title_ID], [Major_subject], [Country_ID], [City_ID], [Institute_ID], [Year_ID], [status], [Description], [Person_ID]) VALUES (1, 2, 1, N'BCS', 1, 2, 4, 13, 1, NULL, 1)
INSERT [dbo].[Accedmic_Information] ([Accadmic_ID], [D_Level_ID], [D_Title_ID], [Major_subject], [Country_ID], [City_ID], [Institute_ID], [Year_ID], [status], [Description], [Person_ID]) VALUES (2, 2, 1, N'BCS', 1, 2, 4, 13, 1, NULL, 1)
INSERT [dbo].[Accedmic_Information] ([Accadmic_ID], [D_Level_ID], [D_Title_ID], [Major_subject], [Country_ID], [City_ID], [Institute_ID], [Year_ID], [status], [Description], [Person_ID]) VALUES (3, 2, 1, N'BCS', 1, 2, 4, 13, 1, NULL, 1)
INSERT [dbo].[Accedmic_Information] ([Accadmic_ID], [D_Level_ID], [D_Title_ID], [Major_subject], [Country_ID], [City_ID], [Institute_ID], [Year_ID], [status], [Description], [Person_ID]) VALUES (4, 2, 1, N'asp.net', 1, 2, 2, 7, 1, NULL, 1)
INSERT [dbo].[Accedmic_Information] ([Accadmic_ID], [D_Level_ID], [D_Title_ID], [Major_subject], [Country_ID], [City_ID], [Institute_ID], [Year_ID], [status], [Description], [Person_ID]) VALUES (5, 1, 1, N'asp.net', 1, 2, 2, 10, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Accedmic_Information] OFF
SET IDENTITY_INSERT [dbo].[Account_Type] ON 

INSERT [dbo].[Account_Type] ([Account_type_ID], [Account_type], [Status], [Description]) VALUES (1, N'Student', 1, N'Running')
INSERT [dbo].[Account_Type] ([Account_type_ID], [Account_type], [Status], [Description]) VALUES (2, N'Professinal', 1, N'Running')
INSERT [dbo].[Account_Type] ([Account_type_ID], [Account_type], [Status], [Description]) VALUES (3, N'Graduation', 1, N'Running')
INSERT [dbo].[Account_Type] ([Account_type_ID], [Account_type], [Status], [Description]) VALUES (4, N'Fresh', 1, N'Running')
INSERT [dbo].[Account_Type] ([Account_type_ID], [Account_type], [Status], [Description]) VALUES (5, N'Employe', 1, N'Running')
SET IDENTITY_INSERT [dbo].[Account_Type] OFF
SET IDENTITY_INSERT [dbo].[Area_OF_Intrst] ON 

INSERT [dbo].[Area_OF_Intrst] ([Area_INT_ID], [Area_Of_Intrest], [Status], [Description]) VALUES (1, N'Accounting', 1, N'abc')
INSERT [dbo].[Area_OF_Intrst] ([Area_INT_ID], [Area_Of_Intrest], [Status], [Description]) VALUES (2, N'Managment', 1, N'abc')
INSERT [dbo].[Area_OF_Intrst] ([Area_INT_ID], [Area_Of_Intrest], [Status], [Description]) VALUES (3, N'Web Developing', 1, N'abcq')
INSERT [dbo].[Area_OF_Intrst] ([Area_INT_ID], [Area_Of_Intrest], [Status], [Description]) VALUES (4, N'Web Desing', 1, N'abc')
INSERT [dbo].[Area_OF_Intrst] ([Area_INT_ID], [Area_Of_Intrest], [Status], [Description]) VALUES (5, N'Programing', 1, N'bac')
INSERT [dbo].[Area_OF_Intrst] ([Area_INT_ID], [Area_Of_Intrest], [Status], [Description]) VALUES (6, N'data Entry', 1, N'abc')
INSERT [dbo].[Area_OF_Intrst] ([Area_INT_ID], [Area_Of_Intrest], [Status], [Description]) VALUES (7, N'Teaching', 1, NULL)
SET IDENTITY_INSERT [dbo].[Area_OF_Intrst] OFF
SET IDENTITY_INSERT [dbo].[Career_Level] ON 

INSERT [dbo].[Career_Level] ([Career_Level_ID], [Career_Level], [Status], [Description]) VALUES (1, N'Graduation', 1, N'Running')
INSERT [dbo].[Career_Level] ([Career_Level_ID], [Career_Level], [Status], [Description]) VALUES (2, N'Post Graduation', 1, N'Running')
INSERT [dbo].[Career_Level] ([Career_Level_ID], [Career_Level], [Status], [Description]) VALUES (3, N'inter', 1, N'Running')
SET IDENTITY_INSERT [dbo].[Career_Level] OFF
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([City_ID], [City_Name], [Status], [Description], [Country_ID]) VALUES (1, N'Badin', 1, N'Running', 1)
INSERT [dbo].[City] ([City_ID], [City_Name], [Status], [Description], [Country_ID]) VALUES (2, N'hyderabad', 1, N'Running', 1)
INSERT [dbo].[City] ([City_ID], [City_Name], [Status], [Description], [Country_ID]) VALUES (3, N'Krachi', 1, N'Running', 1)
INSERT [dbo].[City] ([City_ID], [City_Name], [Status], [Description], [Country_ID]) VALUES (4, N'Dehli', 1, N'Running', 2)
INSERT [dbo].[City] ([City_ID], [City_Name], [Status], [Description], [Country_ID]) VALUES (5, N'Mumbai', 1, N'Running', 2)
INSERT [dbo].[City] ([City_ID], [City_Name], [Status], [Description], [Country_ID]) VALUES (6, N'merpur', 1, N'Running', 3)
INSERT [dbo].[City] ([City_ID], [City_Name], [Status], [Description], [Country_ID]) VALUES (7, N'bangloror', 1, N'Running', 3)
SET IDENTITY_INSERT [dbo].[City] OFF
SET IDENTITY_INSERT [dbo].[company] ON 

INSERT [dbo].[company] ([Company_id], [Company_name], [Employ_id], [status], [description]) VALUES (1, N'Hidaya', NULL, 1, NULL)
INSERT [dbo].[company] ([Company_id], [Company_name], [Employ_id], [status], [description]) VALUES (2, N'Aptech', NULL, 1, NULL)
INSERT [dbo].[company] ([Company_id], [Company_name], [Employ_id], [status], [description]) VALUES (3, N'Microsoft', NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[company] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Country_ID], [Country_Name], [Status], [Description]) VALUES (1, N'Pakistan', 1, N'Running')
INSERT [dbo].[Country] ([Country_ID], [Country_Name], [Status], [Description]) VALUES (2, N'india', 1, N'Running')
INSERT [dbo].[Country] ([Country_ID], [Country_Name], [Status], [Description]) VALUES (3, N'bangaladesh', 1, N'Running')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Country_Code] ON 

INSERT [dbo].[Country_Code] ([Country_Code_ID], [Code], [Status], [Description], [Country_ID]) VALUES (1, N'+92', N'1', N'Running', 1)
INSERT [dbo].[Country_Code] ([Country_Code_ID], [Code], [Status], [Description], [Country_ID]) VALUES (2, N'+84', N'1', N'Running', 2)
INSERT [dbo].[Country_Code] ([Country_Code_ID], [Code], [Status], [Description], [Country_ID]) VALUES (3, N'+37', N'1', N'Running', 3)
SET IDENTITY_INSERT [dbo].[Country_Code] OFF
SET IDENTITY_INSERT [dbo].[Days] ON 

INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (1, N'1', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (2, N'2', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (3, N'3', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (4, N'4', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (5, N'5', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (6, N'6', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (7, N'7', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (8, N'8', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (9, N'9', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (10, N'10', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (11, N'11', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (12, N'12', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (13, N'13', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (14, N'14', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (15, N'15', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (16, N'16', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (17, N'17', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (18, N'18', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (19, N'19', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (20, N'20', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (21, N'21', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (22, N'22', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (23, N'23', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (24, N'24', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (25, N'25', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (26, N'26', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (27, N'27', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (28, N'28', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (29, N'29', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (30, N'30', 1, N'Running')
INSERT [dbo].[Days] ([Days_ID], [Days], [Status], [Description]) VALUES (31, N'31', 1, N'Running')
SET IDENTITY_INSERT [dbo].[Days] OFF
SET IDENTITY_INSERT [dbo].[Degree_Level] ON 

INSERT [dbo].[Degree_Level] ([D_Level_ID], [Digree_Level], [Status], [Description]) VALUES (1, N'master', 1, N'Running')
INSERT [dbo].[Degree_Level] ([D_Level_ID], [Digree_Level], [Status], [Description]) VALUES (2, N'Bacholer', 1, N'Running')
INSERT [dbo].[Degree_Level] ([D_Level_ID], [Digree_Level], [Status], [Description]) VALUES (3, N'metric', 1, N'Running')
INSERT [dbo].[Degree_Level] ([D_Level_ID], [Digree_Level], [Status], [Description]) VALUES (4, N'inter', 1, N'Running')
INSERT [dbo].[Degree_Level] ([D_Level_ID], [Digree_Level], [Status], [Description]) VALUES (5, N'phd', 1, N'Running')
INSERT [dbo].[Degree_Level] ([D_Level_ID], [Digree_Level], [Status], [Description]) VALUES (6, NULL, NULL, N'')
SET IDENTITY_INSERT [dbo].[Degree_Level] OFF
SET IDENTITY_INSERT [dbo].[Degree_Title] ON 

INSERT [dbo].[Degree_Title] ([D_Title_ID], [Degree_Title], [Status], [Description], [D_Level_ID]) VALUES (1, N'BS(CS)', 1, N'Running', 2)
INSERT [dbo].[Degree_Title] ([D_Title_ID], [Degree_Title], [Status], [Description], [D_Level_ID]) VALUES (2, N'MS(CS)', 1, N'Running', 1)
INSERT [dbo].[Degree_Title] ([D_Title_ID], [Degree_Title], [Status], [Description], [D_Level_ID]) VALUES (3, N'inter', 1, N'Running', 4)
SET IDENTITY_INSERT [dbo].[Degree_Title] OFF
SET IDENTITY_INSERT [dbo].[Employer] ON 

INSERT [dbo].[Employer] ([Employ_id], [Employ_name], [Company_name], [First_name], [Last_name], [Country_ID], [City_ID], [Profession_Ind_ID], [Telephone], [Mobile_no], [Email], [Password], [Abbout_com], [comp_Type], [status], [description]) VALUES (1, NULL, N'Hidaya', N'Hussain', N'Buksh', 1, 2, 2, N'96554545', N'3363517709', N'amur@gmail.com', N'4567', N'good', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Employer] OFF
SET IDENTITY_INSERT [dbo].[Fresh] ON 

INSERT [dbo].[Fresh] ([Fresh_id], [Area_INT_ID], [Function_Area_ID], [Career_Level_ID], [Person_ID], [status], [description]) VALUES (1, 3, 2, 3, 7, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Fresh] OFF
SET IDENTITY_INSERT [dbo].[Fuctional_Area] ON 

INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (1, N'Write', 1, N'Running')
INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (2, N'Developer', 1, N'Running')
INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (3, N'Designer', 1, N'Running')
INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (4, N'web developer', 1, N'Running')
INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (5, N'programmer', 1, N'Running')
INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (6, N'admminstration', 1, N'Running')
INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (7, N'advertising', 1, N'Running')
INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (8, N'Client Sever Custemer support', 1, N'Running')
INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (9, N'Creative desgin', 1, N'Running')
INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (10, N'Data Entry', 1, N'Running')
INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (11, N'Field Operation', 1, N'Running')
INSERT [dbo].[Fuctional_Area] ([Function_Area_ID], [Func_Name], [Status], [Description]) VALUES (12, N'Hardware', 1, N'Running')
SET IDENTITY_INSERT [dbo].[Fuctional_Area] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Gender_ID], [Gender], [Status], [Description]) VALUES (1, N'male', 1, N'Running')
INSERT [dbo].[Gender] ([Gender_ID], [Gender], [Status], [Description]) VALUES (2, N'female', 1, N'Running')
INSERT [dbo].[Gender] ([Gender_ID], [Gender], [Status], [Description]) VALUES (3, N'others', 1, N'Running')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Institution] ON 

INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (1, N'Sindh University', N'Running', 1, 1)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (2, N'Mehran University', N'Running', 1, 1)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (3, N'LMC', N'Running', 1, 1)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (4, N'Air University', N'Running', 1, 1)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (5, N'ACCA Pakistan', N'Running', 1, 1)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (6, N'Allama Iqbal university', N'Running', 1, 1)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (7, N'Panjab University', N'Running', 1, 1)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (8, N'Krachi University', N'Running', 1, 1)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (9, N'Quid-e-Awam University', N'Running', 1, 1)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (10, N'Bahiria Universirty', N'Running', 1, 1)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (11, N'Gandi University', N'so', 1, 2)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (12, N'Dehli College', N'do', 1, 2)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (13, N'Banglor college', N'do', 1, 2)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (14, N'Bagali univerty', N'do', 1, 3)
INSERT [dbo].[Institution] ([Institute_ID], [Institute_Name], [Description], [Status], [Country_ID]) VALUES (15, N'lmcu college', N'fo', 1, 3)
SET IDENTITY_INSERT [dbo].[Institution] OFF
SET IDENTITY_INSERT [dbo].[job_post] ON 

INSERT [dbo].[job_post] ([job_id], [job_title], [description], [Work_Exp_ID], [Function_Area_ID], [skills], [responsiblities], [Career_Level_ID], [Country_ID], [City_ID], [salary], [lastdatetoapply], [company], [status]) VALUES (2, N'Asp.net', N'sfsdfds', 1, 1, N'sdfsdf', N'fdsdsfdsa', 1, 1, 1, N'20000', N'Oct  5 2014 12:00AM', N'Hidaya', 1)
INSERT [dbo].[job_post] ([job_id], [job_title], [description], [Work_Exp_ID], [Function_Area_ID], [skills], [responsiblities], [Career_Level_ID], [Country_ID], [City_ID], [salary], [lastdatetoapply], [company], [status]) VALUES (3, N'php', N'fdsvfmdfb', 1, 2, N'fhfhjdjhdsfh', N'bbfdbf', 1, 1, 3, N'20000', N'Oct  5 2014 12:00AM', N'Hidaya', 1)
SET IDENTITY_INSERT [dbo].[job_post] OFF
SET IDENTITY_INSERT [dbo].[jobs] ON 

INSERT [dbo].[jobs] ([job_id], [job_Name], [Employ_id], [Company_id], [City_ID], [Start_Date], [Exp_Date], [status], [Description]) VALUES (1, N'Asp.net', NULL, 3, 2, NULL, NULL, 1, NULL)
INSERT [dbo].[jobs] ([job_id], [job_Name], [Employ_id], [Company_id], [City_ID], [Start_Date], [Exp_Date], [status], [Description]) VALUES (2, N'PHP', NULL, 2, 2, NULL, NULL, 1, NULL)
INSERT [dbo].[jobs] ([job_id], [job_Name], [Employ_id], [Company_id], [City_ID], [Start_Date], [Exp_Date], [status], [Description]) VALUES (3, N'Java', NULL, 1, 3, NULL, NULL, 1, NULL)
INSERT [dbo].[jobs] ([job_id], [job_Name], [Employ_id], [Company_id], [City_ID], [Start_Date], [Exp_Date], [status], [Description]) VALUES (4, N'Accounting', NULL, 1, 1, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[jobs] OFF
SET IDENTITY_INSERT [dbo].[Mobile_Com_Code] ON 

INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (1, N'0332', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (2, N'0331', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (3, N'0333', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (4, N'0334', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (5, N'0335', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (6, N'0336', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (7, N'0344', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (8, N'0345', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (9, N'0300', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (10, N'0301', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (11, N'0304', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (12, N'0305', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (13, N'0311', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (14, N'0312', 1, N'Running', 1)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (15, N'0874', 1, N'Running', 2)
INSERT [dbo].[Mobile_Com_Code] ([Mobile_Com_ID], [M_Code], [Status], [Description], [Country_ID]) VALUES (16, N'0987', 1, N'bangladesh', 3)
SET IDENTITY_INSERT [dbo].[Mobile_Com_Code] OFF
SET IDENTITY_INSERT [dbo].[Month] ON 

INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (1, N'jan', 1, N'Running')
INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (2, N'feb', 1, N'Running')
INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (3, N'march', 1, N'Running')
INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (4, N'apprail', 1, N'Running')
INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (5, N'may', 1, N'Running')
INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (6, N'june', 1, N'Running')
INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (7, N'july', 1, N'Running')
INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (8, N'aug', 1, N'Running')
INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (9, N'sep', 1, N'Running')
INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (10, N'oct', 1, N'Running')
INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (11, N'nov', 1, N'Running')
INSERT [dbo].[Month] ([Month_ID], [Month], [Status], [Description]) VALUES (12, N'dec', 1, N'Running')
SET IDENTITY_INSERT [dbo].[Month] OFF
SET IDENTITY_INSERT [dbo].[Nationnality] ON 

INSERT [dbo].[Nationnality] ([Nation_ID], [Nationality], [Status], [Description]) VALUES (1, N'pakitstani', 1, N'Running')
INSERT [dbo].[Nationnality] ([Nation_ID], [Nationality], [Status], [Description]) VALUES (2, N'indian', 1, N'Running')
INSERT [dbo].[Nationnality] ([Nation_ID], [Nationality], [Status], [Description]) VALUES (3, N'bangLI', 1, N'Running')
INSERT [dbo].[Nationnality] ([Nation_ID], [Nationality], [Status], [Description]) VALUES (4, N'Birtish', 1, N'Running')
SET IDENTITY_INSERT [dbo].[Nationnality] OFF
SET IDENTITY_INSERT [dbo].[Person_Information] ON 

INSERT [dbo].[Person_Information] ([Person_ID], [Name], [Caste], [Email], [Password], [Gender_ID], [Dob], [Country_ID], [City_ID], [Nation_ID], [Cnic], [Mobile_no], [Address], [Profile_pic], [cv], [status], [Description]) VALUES (1, N'waris', N'arain', N'amur@gmail.com', N'12345', 1, N'2015-01-06', 1, 2, 1, N'4530503547906', N'03363517709', N'phatak', NULL, NULL, 1, NULL)
INSERT [dbo].[Person_Information] ([Person_ID], [Name], [Caste], [Email], [Password], [Gender_ID], [Dob], [Country_ID], [City_ID], [Nation_ID], [Cnic], [Mobile_no], [Address], [Profile_pic], [cv], [status], [Description]) VALUES (2, N'Hussain', N'Amur', N'amur_swe27@hotmail.com', N'12345', 1, N'2015-01-08', 1, 2, 1, N'4530503547907', N'163517709', N'hidaya', NULL, NULL, 1, NULL)
INSERT [dbo].[Person_Information] ([Person_ID], [Name], [Caste], [Email], [Password], [Gender_ID], [Dob], [Country_ID], [City_ID], [Nation_ID], [Cnic], [Mobile_no], [Address], [Profile_pic], [cv], [status], [Description]) VALUES (3, N'Hussain', N'Amur', N'amur_swe27@hotmail.com', N'12345', 1, N'2015-01-21', 1, 2, 1, N'4530503547907', N'163517709', N'hidaya', NULL, NULL, 1, NULL)
INSERT [dbo].[Person_Information] ([Person_ID], [Name], [Caste], [Email], [Password], [Gender_ID], [Dob], [Country_ID], [City_ID], [Nation_ID], [Cnic], [Mobile_no], [Address], [Profile_pic], [cv], [status], [Description]) VALUES (5, N'Hussain', N'Amur', N'amur_swe27@hotmail.com', N'12345', 1, N'2015-01-14', 1, 2, 1, N'4530503547907', N'163517709', N'hidaya', NULL, NULL, 1, NULL)
INSERT [dbo].[Person_Information] ([Person_ID], [Name], [Caste], [Email], [Password], [Gender_ID], [Dob], [Country_ID], [City_ID], [Nation_ID], [Cnic], [Mobile_no], [Address], [Profile_pic], [cv], [status], [Description]) VALUES (6, N'ali', N'khan', N'ali', N'123', 1, N'2015-01-17', 1, 1, 1, N'4102523', N'1212345', N'badin', NULL, NULL, 1, NULL)
INSERT [dbo].[Person_Information] ([Person_ID], [Name], [Caste], [Email], [Password], [Gender_ID], [Dob], [Country_ID], [City_ID], [Nation_ID], [Cnic], [Mobile_no], [Address], [Profile_pic], [cv], [status], [Description]) VALUES (7, N'waris', N'arain', N'Waris@ymai.com', N'waris', 1, N'2014-12-31', 1, 1, 1, N'4530503547907', N'123517709', N'badin', NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Person_Information] OFF
SET IDENTITY_INSERT [dbo].[Professional_Industry] ON 

INSERT [dbo].[Professional_Industry] ([Profession_Ind_ID], [Pro_Name], [Status], [Description]) VALUES (1, N'Accountin', 1, N'running')
INSERT [dbo].[Professional_Industry] ([Profession_Ind_ID], [Pro_Name], [Status], [Description]) VALUES (2, N'Information Technology', 1, N'running')
INSERT [dbo].[Professional_Industry] ([Profession_Ind_ID], [Pro_Name], [Status], [Description]) VALUES (3, N'Electronics', 1, N'running')
INSERT [dbo].[Professional_Industry] ([Profession_Ind_ID], [Pro_Name], [Status], [Description]) VALUES (4, N'Telecom', 1, N'running')
SET IDENTITY_INSERT [dbo].[Professional_Industry] OFF
SET IDENTITY_INSERT [dbo].[Professional_Information] ON 

INSERT [dbo].[Professional_Information] ([Profession_ID], [Experience], [JobStartDate], [Work_Exp_ID], [Profession_Ind_ID], [Function_Area_ID], [Career_Level_ID], [Area_INT_ID], [Recent_Job], [From], [To], [Company_Name], [Country_ID], [City_ID], [status], [description], [Person_ID]) VALUES (1, NULL, CAST(0x6E390B00 AS Date), 1, 2, 4, 1, NULL, N'asp.net developer', CAST(0x6E390B00 AS Date), CAST(0x77390B00 AS Date), N'hidaya', 1, 2, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Professional_Information] OFF
SET IDENTITY_INSERT [dbo].[Registarion] ON 

INSERT [dbo].[Registarion] ([reg_id], [Account_type_ID], [Email_id], [Password]) VALUES (10, 2, N'warisarain@ymail,com', N'123')
INSERT [dbo].[Registarion] ([reg_id], [Account_type_ID], [Email_id], [Password]) VALUES (11, 1, N'warisarain@ymail,com', N'1234')
INSERT [dbo].[Registarion] ([reg_id], [Account_type_ID], [Email_id], [Password]) VALUES (12, 3, N'warisarain@ymail,com', N'12345')
INSERT [dbo].[Registarion] ([reg_id], [Account_type_ID], [Email_id], [Password]) VALUES (13, 1, N'love', N'123')
SET IDENTITY_INSERT [dbo].[Registarion] OFF
SET IDENTITY_INSERT [dbo].[Work_Experience] ON 

INSERT [dbo].[Work_Experience] ([Work_Exp_ID], [Name], [Status], [Description]) VALUES (1, N'Fresh', 1, N'running')
INSERT [dbo].[Work_Experience] ([Work_Exp_ID], [Name], [Status], [Description]) VALUES (2, N'Less than 1 year', 1, N'running')
INSERT [dbo].[Work_Experience] ([Work_Exp_ID], [Name], [Status], [Description]) VALUES (3, N'1 Year', 1, N'running')
INSERT [dbo].[Work_Experience] ([Work_Exp_ID], [Name], [Status], [Description]) VALUES (4, N'2 Year', 1, N'running')
INSERT [dbo].[Work_Experience] ([Work_Exp_ID], [Name], [Status], [Description]) VALUES (5, N'More than 25 Year', 1, N'running')
SET IDENTITY_INSERT [dbo].[Work_Experience] OFF
SET IDENTITY_INSERT [dbo].[Year] ON 

INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (1, N'1990', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (2, N'1991', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (3, N'1992', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (4, N'1993', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (5, N'1994', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (6, N'1996', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (7, N'1997', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (8, N'1998', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (9, N'1999', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (10, N'2000', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (11, N'2001', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (12, N'2002', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (13, N'2003', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (14, N'2003', 1, N'Running')
INSERT [dbo].[Year] ([Year_ID], [Year], [Status], [Description]) VALUES (15, N'2004', 1, N'Running')
SET IDENTITY_INSERT [dbo].[Year] OFF
USE [master]
GO
ALTER DATABASE [JobPortal] SET  READ_WRITE 
GO
