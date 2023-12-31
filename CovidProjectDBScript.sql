USE [master]
GO
/****** Object:  Database [PortfolioCovid1]    Script Date: 28/09/2023 04:15:33 PM ******/
CREATE DATABASE [PortfolioCovid1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PortfolioCovid1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PortfolioCovid1.mdf' , SIZE = 270336KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PortfolioCovid1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PortfolioCovid1_log.ldf' , SIZE = 270336KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PortfolioCovid1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PortfolioCovid1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PortfolioCovid1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET ARITHABORT OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PortfolioCovid1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PortfolioCovid1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PortfolioCovid1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PortfolioCovid1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET RECOVERY FULL 
GO
ALTER DATABASE [PortfolioCovid1] SET  MULTI_USER 
GO
ALTER DATABASE [PortfolioCovid1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PortfolioCovid1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PortfolioCovid1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PortfolioCovid1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PortfolioCovid1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PortfolioCovid1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PortfolioCovid1', N'ON'
GO
ALTER DATABASE [PortfolioCovid1] SET QUERY_STORE = ON
GO
ALTER DATABASE [PortfolioCovid1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PortfolioCovid1]
GO
/****** Object:  Table [dbo].[CovidDeaths$]    Script Date: 28/09/2023 04:15:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CovidDeaths$](
	[iso_code] [nvarchar](255) NULL,
	[continent] [nvarchar](255) NULL,
	[location] [nvarchar](255) NULL,
	[date] [datetime] NULL,
	[population] [float] NULL,
	[total_cases] [float] NULL,
	[new_cases] [float] NULL,
	[new_cases_smoothed] [float] NULL,
	[total_deaths] [float] NULL,
	[new_deaths] [float] NULL,
	[new_deaths_smoothed] [float] NULL,
	[total_cases_per_million] [nvarchar](255) NULL,
	[new_cases_per_million] [float] NULL,
	[new_cases_smoothed_per_million] [float] NULL,
	[total_deaths_per_million] [nvarchar](255) NULL,
	[new_deaths_per_million] [float] NULL,
	[new_deaths_smoothed_per_million] [float] NULL,
	[reproduction_rate] [nvarchar](255) NULL,
	[icu_patients] [nvarchar](255) NULL,
	[icu_patients_per_million] [nvarchar](255) NULL,
	[hosp_patients] [nvarchar](255) NULL,
	[hosp_patients_per_million] [nvarchar](255) NULL,
	[weekly_icu_admissions] [nvarchar](255) NULL,
	[weekly_icu_admissions_per_million] [nvarchar](255) NULL,
	[weekly_hosp_admissions] [nvarchar](255) NULL,
	[weekly_hosp_admissions_per_million] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CovidVacinnations$]    Script Date: 28/09/2023 04:15:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CovidVacinnations$](
	[iso_code] [nvarchar](255) NULL,
	[continent] [nvarchar](255) NULL,
	[location] [nvarchar](255) NULL,
	[date] [datetime] NULL,
	[total_tests] [nvarchar](255) NULL,
	[new_tests] [nvarchar](255) NULL,
	[total_tests_per_thousand] [nvarchar](255) NULL,
	[new_tests_per_thousand] [nvarchar](255) NULL,
	[new_tests_smoothed] [nvarchar](255) NULL,
	[new_tests_smoothed_per_thousand] [nvarchar](255) NULL,
	[positive_rate] [nvarchar](255) NULL,
	[tests_per_case] [nvarchar](255) NULL,
	[tests_units] [nvarchar](255) NULL,
	[total_vaccinations] [nvarchar](255) NULL,
	[people_vaccinated] [nvarchar](255) NULL,
	[people_fully_vaccinated] [nvarchar](255) NULL,
	[total_boosters] [nvarchar](255) NULL,
	[new_vaccinations] [nvarchar](255) NULL,
	[new_vaccinations_smoothed] [nvarchar](255) NULL,
	[total_vaccinations_per_hundred] [nvarchar](255) NULL,
	[people_vaccinated_per_hundred] [nvarchar](255) NULL,
	[people_fully_vaccinated_per_hundred] [nvarchar](255) NULL,
	[total_boosters_per_hundred] [nvarchar](255) NULL,
	[new_vaccinations_smoothed_per_million] [nvarchar](255) NULL,
	[new_people_vaccinated_smoothed] [nvarchar](255) NULL,
	[new_people_vaccinated_smoothed_per_hundred] [nvarchar](255) NULL,
	[stringency_index] [float] NULL,
	[population_density] [float] NULL,
	[median_age] [float] NULL,
	[aged_65_older] [float] NULL,
	[aged_70_older] [float] NULL,
	[gdp_per_capita] [float] NULL,
	[extreme_poverty] [nvarchar](255) NULL,
	[cardiovasc_death_rate] [float] NULL,
	[diabetes_prevalence] [float] NULL,
	[female_smokers] [nvarchar](255) NULL,
	[male_smokers] [nvarchar](255) NULL,
	[handwashing_facilities] [float] NULL,
	[hospital_beds_per_thousand] [float] NULL,
	[life_expectancy] [float] NULL,
	[human_development_index] [float] NULL,
	[excess_mortality_cumulative_absolute] [nvarchar](255) NULL,
	[excess_mortality_cumulative] [nvarchar](255) NULL,
	[excess_mortality] [nvarchar](255) NULL,
	[excess_mortality_cumulative_per_million] [nvarchar](255) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PortfolioCovid1] SET  READ_WRITE 
GO
