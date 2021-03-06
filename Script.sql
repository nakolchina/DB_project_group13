﻿USE [master]
GO
/****** Object:  Database [Project]    Script Date: 14.06.2020 15:00:31 ******/
CREATE DATABASE [Project]
GO
ALTER DATABASE [Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Project] SET  MULTI_USER 
GO
ALTER DATABASE [Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project] SET QUERY_STORE = OFF
GO
USE [Project]
GO
/****** Object:  Table [dbo].[Additiomal_services_price]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Additiomal_services_price](
	[AS_id] [int] NOT NULL,
	[AS_price] [money] NULL,
 CONSTRAINT [PK_Additiomal_services_price] PRIMARY KEY CLUSTERED 
(
	[AS_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Additional_Services]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Additional_Services](
	[AS_id] [int] NOT NULL,
	[Restaurants] [bit] NULL,
	[Car_booking] [bit] NULL,
	[Airlines] [bit] NULL,
 CONSTRAINT [XPKAdditional_Services] PRIMARY KEY CLUSTERED 
(
	[AS_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[Booking_id] [int] NOT NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[days] [int] NULL,
	[number_of_people] [int] NULL,
	[Destination_id] [int] NULL,
	[AS_id] [int] NULL,
	[Room_id] [int] NULL,
	[Relationship_ID] [int] NULL,
	[Client_id] [int] NULL,
 CONSTRAINT [XPKBookings] PRIMARY KEY CLUSTERED 
(
	[Booking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Client_id] [int] NOT NULL,
	[client_name] [nvarchar](50) NULL,
	[date_of_birth] [datetime] NULL,
	[address] [nvarchar](70) NULL,
	[email] [nvarchar](100) NULL,
 CONSTRAINT [XPKClient] PRIMARY KEY CLUSTERED 
(
	[Client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client_manager]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_manager](
	[Manager_id] [int] NOT NULL,
	[manager_name] [nvarchar](50) NULL,
	[date_of_birth] [date] NULL,
 CONSTRAINT [XPKclient_manager] PRIMARY KEY CLUSTERED 
(
	[Manager_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client_Manager_relationships]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client_Manager_relationships](
	[Relationship_ID] [int] NOT NULL,
	[Manager_id] [int] NULL,
	[date] [date] NULL,
 CONSTRAINT [XPKClient_Manager_relationships] PRIMARY KEY CLUSTERED 
(
	[Relationship_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destination]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destination](
	[Destination_id] [int] NOT NULL,
	[city] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[required_visa] [bit] NULL,
 CONSTRAINT [XPKdestination] PRIMARY KEY CLUSTERED 
(
	[Destination_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Hotel_id] [int] NOT NULL,
	[Hotel_name] [nvarchar](70) NULL,
	[address] [nvarchar](70) NULL,
	[Stars] [int] NULL,
	[Destination_id] [int] NULL,
 CONSTRAINT [XPKHotels] PRIMARY KEY CLUSTERED 
(
	[Hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] NOT NULL,
	[payment_amount] [money] NULL,
	[payment_status_id] [int] NULL,
	[Date] [date] NULL,
	[Booking_id] [int] NULL,
 CONSTRAINT [XPKPayment] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment method]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment method](
	[payment_status_id] [int] NOT NULL,
	[payment_status_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Payment Status] PRIMARY KEY CLUSTERED 
(
	[payment_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[Room_id] [int] NOT NULL,
	[Hotel_id] [int] NOT NULL,
	[Room_type] [nvarchar](50) NULL,
	[Room_price] [money] NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[Room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Additiomal_services_price] ([AS_id], [AS_price]) VALUES (1, 50.0000)
INSERT [dbo].[Additiomal_services_price] ([AS_id], [AS_price]) VALUES (2, 150.0000)
INSERT [dbo].[Additiomal_services_price] ([AS_id], [AS_price]) VALUES (3, 250.0000)
INSERT [dbo].[Additiomal_services_price] ([AS_id], [AS_price]) VALUES (4, 200.0000)
INSERT [dbo].[Additiomal_services_price] ([AS_id], [AS_price]) VALUES (5, 300.0000)
INSERT [dbo].[Additiomal_services_price] ([AS_id], [AS_price]) VALUES (6, 400.0000)
INSERT [dbo].[Additiomal_services_price] ([AS_id], [AS_price]) VALUES (7, 450.0000)
INSERT [dbo].[Additiomal_services_price] ([AS_id], [AS_price]) VALUES (8, 0.0000)
GO
INSERT [dbo].[Additional_Services] ([AS_id], [Restaurants], [Car_booking], [Airlines]) VALUES (1, 1, 0, 0)
INSERT [dbo].[Additional_Services] ([AS_id], [Restaurants], [Car_booking], [Airlines]) VALUES (2, 0, 1, 0)
INSERT [dbo].[Additional_Services] ([AS_id], [Restaurants], [Car_booking], [Airlines]) VALUES (3, 0, 0, 1)
INSERT [dbo].[Additional_Services] ([AS_id], [Restaurants], [Car_booking], [Airlines]) VALUES (4, 1, 1, 0)
INSERT [dbo].[Additional_Services] ([AS_id], [Restaurants], [Car_booking], [Airlines]) VALUES (5, 1, 0, 1)
INSERT [dbo].[Additional_Services] ([AS_id], [Restaurants], [Car_booking], [Airlines]) VALUES (6, 0, 1, 1)
INSERT [dbo].[Additional_Services] ([AS_id], [Restaurants], [Car_booking], [Airlines]) VALUES (7, 1, 1, 1)
INSERT [dbo].[Additional_Services] ([AS_id], [Restaurants], [Car_booking], [Airlines]) VALUES (8, 0, 0, 0)
GO
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (1, CAST(N'2019-01-23' AS Date), CAST(N'2019-01-28' AS Date), 5, 1, 60, 3, 58, 22, 166)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (2, CAST(N'2019-09-17' AS Date), CAST(N'2019-10-02' AS Date), 15, 4, 78, 7, 4, 20, 160)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (3, CAST(N'2019-12-17' AS Date), CAST(N'2019-12-26' AS Date), 9, 1, 83, 2, 45, 16, 197)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (4, CAST(N'2019-09-25' AS Date), CAST(N'2019-09-30' AS Date), 5, 5, 55, 8, 58, 31, 99)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (5, CAST(N'2019-06-06' AS Date), CAST(N'2019-06-18' AS Date), 12, 5, 96, 1, 31, 34, 105)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (6, CAST(N'2019-03-27' AS Date), CAST(N'2019-04-03' AS Date), 7, 3, 77, 5, 19, 41, 66)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (7, CAST(N'2019-06-03' AS Date), CAST(N'2019-06-14' AS Date), 11, 2, 17, 2, 14, 30, 85)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (8, CAST(N'2019-10-16' AS Date), CAST(N'2019-10-18' AS Date), 2, 5, 34, 4, 35, 11, 154)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (9, CAST(N'2019-08-17' AS Date), CAST(N'2019-08-26' AS Date), 9, 5, 60, 1, 52, 50, 101)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (10, CAST(N'2019-05-29' AS Date), CAST(N'2019-06-04' AS Date), 6, 5, 35, 5, 59, 12, 133)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (11, CAST(N'2019-09-09' AS Date), CAST(N'2019-09-12' AS Date), 3, 2, 13, 5, 53, 44, 14)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (12, CAST(N'2019-09-23' AS Date), CAST(N'2019-09-29' AS Date), 6, 5, 63, 4, 9, 23, 41)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (13, CAST(N'2019-06-18' AS Date), CAST(N'2019-06-26' AS Date), 8, 4, 19, 1, 23, 11, 166)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (14, CAST(N'2019-07-08' AS Date), CAST(N'2019-07-18' AS Date), 10, 2, 48, 3, 40, 32, 33)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (15, CAST(N'2019-09-14' AS Date), CAST(N'2019-09-21' AS Date), 7, 4, 30, 7, 49, 35, 10)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (16, CAST(N'2019-10-18' AS Date), CAST(N'2019-10-30' AS Date), 12, 3, 39, 6, 47, 36, 153)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (17, CAST(N'2019-09-23' AS Date), CAST(N'2019-10-01' AS Date), 8, 5, 1, 3, 18, 38, 187)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (18, CAST(N'2019-01-15' AS Date), CAST(N'2019-01-24' AS Date), 9, 5, 47, 2, 53, 28, 72)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (19, CAST(N'2019-09-08' AS Date), CAST(N'2019-09-18' AS Date), 10, 3, 56, 5, 37, 43, 186)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (20, CAST(N'2019-01-15' AS Date), CAST(N'2019-01-31' AS Date), 16, 5, 9, 2, 57, 21, 126)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (21, CAST(N'2019-11-18' AS Date), CAST(N'2019-11-23' AS Date), 5, 2, 65, 5, 22, 42, 23)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (22, CAST(N'2019-01-11' AS Date), CAST(N'2019-02-02' AS Date), 22, 2, 56, 8, 40, 39, 178)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (23, CAST(N'2019-11-20' AS Date), CAST(N'2019-11-29' AS Date), 9, 1, 61, 6, 49, 49, 94)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (24, CAST(N'2019-10-10' AS Date), CAST(N'2019-10-20' AS Date), 10, 1, 48, 1, 33, 29, 99)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (25, CAST(N'2019-06-14' AS Date), CAST(N'2019-06-21' AS Date), 7, 2, 75, 2, 2, 48, 48)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (26, CAST(N'2019-10-15' AS Date), CAST(N'2019-10-20' AS Date), 5, 1, 76, 1, 34, 29, 177)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (27, CAST(N'2019-03-05' AS Date), CAST(N'2019-03-12' AS Date), 7, 4, 22, 7, 12, 18, 15)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (28, CAST(N'2019-03-01' AS Date), CAST(N'2019-03-19' AS Date), 18, 1, 95, 6, 17, 14, 114)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (29, CAST(N'2019-05-11' AS Date), CAST(N'2019-05-13' AS Date), 2, 1, 22, 5, 14, 18, 197)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (30, CAST(N'2019-07-07' AS Date), CAST(N'2019-07-14' AS Date), 7, 1, 57, 4, 60, 40, 174)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (31, CAST(N'2019-10-10' AS Date), CAST(N'2019-10-17' AS Date), 7, 5, 56, 6, 26, 42, 63)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (32, CAST(N'2019-10-12' AS Date), CAST(N'2019-10-18' AS Date), 6, 2, 46, 5, 41, 25, 53)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (33, CAST(N'2019-10-20' AS Date), CAST(N'2019-10-25' AS Date), 5, 4, 51, 7, 41, 16, 66)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (34, CAST(N'2019-03-22' AS Date), CAST(N'2019-03-30' AS Date), 8, 2, 12, 8, 18, 29, 29)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (35, CAST(N'2019-01-14' AS Date), CAST(N'2019-01-29' AS Date), 15, 3, 22, 3, 31, 29, 138)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (36, CAST(N'2019-03-30' AS Date), CAST(N'2019-04-06' AS Date), 7, 3, 4, 8, 55, 27, 85)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (37, CAST(N'2019-05-29' AS Date), CAST(N'2019-06-12' AS Date), 14, 4, 40, 7, 46, 48, 6)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (38, CAST(N'2019-01-06' AS Date), CAST(N'2019-01-15' AS Date), 9, 3, 37, 2, 38, 9, 63)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (39, CAST(N'2019-09-15' AS Date), CAST(N'2019-09-22' AS Date), 7, 4, 36, 7, 59, 13, 53)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (40, CAST(N'2019-12-08' AS Date), CAST(N'2019-12-14' AS Date), 6, 1, 85, 2, 28, 47, 97)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (41, CAST(N'2019-05-17' AS Date), CAST(N'2019-05-27' AS Date), 10, 1, 23, 7, 45, 36, 98)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (42, CAST(N'2019-05-01' AS Date), CAST(N'2019-05-18' AS Date), 17, 3, 70, 5, 29, 16, 156)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (43, CAST(N'2019-07-06' AS Date), CAST(N'2019-07-14' AS Date), 8, 2, 10, 5, 21, 29, 115)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (44, CAST(N'2019-12-14' AS Date), CAST(N'2019-12-28' AS Date), 14, 2, 3, 3, 37, 26, 198)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (45, CAST(N'2019-12-18' AS Date), CAST(N'2019-12-28' AS Date), 10, 3, 24, 1, 11, 16, 166)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (46, CAST(N'2019-06-18' AS Date), CAST(N'2019-06-30' AS Date), 12, 5, 24, 7, 27, 36, 169)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (47, CAST(N'2019-06-21' AS Date), CAST(N'2019-06-26' AS Date), 5, 3, 39, 2, 23, 2, 50)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (48, CAST(N'2019-07-05' AS Date), CAST(N'2019-07-07' AS Date), 2, 5, 20, 7, 2, 31, 123)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (49, CAST(N'2019-03-16' AS Date), CAST(N'2019-03-27' AS Date), 11, 1, 70, 4, 59, 42, 30)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (50, CAST(N'2019-02-04' AS Date), CAST(N'2019-02-18' AS Date), 14, 2, 82, 5, 17, 11, 31)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (51, CAST(N'2019-08-15' AS Date), CAST(N'2019-08-17' AS Date), 2, 5, 22, 8, 11, 40, 180)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (52, CAST(N'2019-05-22' AS Date), CAST(N'2019-05-26' AS Date), 4, 4, 80, 4, 47, 3, 86)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (53, CAST(N'2019-11-28' AS Date), CAST(N'2019-12-06' AS Date), 8, 5, 67, 6, 24, 41, 165)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (54, CAST(N'2019-04-14' AS Date), CAST(N'2019-04-26' AS Date), 12, 2, 47, 1, 25, 10, 26)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (55, CAST(N'2019-11-29' AS Date), CAST(N'2019-12-06' AS Date), 7, 5, 45, 1, 44, 4, 64)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (56, CAST(N'2019-03-17' AS Date), CAST(N'2019-03-22' AS Date), 5, 1, 71, 5, 20, 20, 142)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (57, CAST(N'2019-06-14' AS Date), CAST(N'2019-06-20' AS Date), 6, 5, 68, 2, 5, 28, 147)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (58, CAST(N'2019-10-18' AS Date), CAST(N'2019-11-08' AS Date), 21, 5, 27, 5, 19, 17, 34)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (59, CAST(N'2019-10-14' AS Date), CAST(N'2019-10-29' AS Date), 15, 1, 98, 4, 3, 1, 1)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (60, CAST(N'2019-07-18' AS Date), CAST(N'2019-07-23' AS Date), 5, 2, 69, 2, 43, 29, 99)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (61, CAST(N'2019-02-26' AS Date), CAST(N'2019-03-07' AS Date), 9, 2, 67, 4, 44, 20, 7)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (62, CAST(N'2019-09-21' AS Date), CAST(N'2019-09-23' AS Date), 2, 4, 55, 3, 32, 6, 100)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (63, CAST(N'2019-02-02' AS Date), CAST(N'2019-02-16' AS Date), 14, 2, 59, 2, 43, 4, 157)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (64, CAST(N'2019-06-04' AS Date), CAST(N'2019-06-09' AS Date), 5, 2, 10, 2, 30, 32, 13)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (65, CAST(N'2019-12-16' AS Date), CAST(N'2019-12-18' AS Date), 2, 2, 92, 8, 60, 6, 137)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (66, CAST(N'2019-01-02' AS Date), CAST(N'2019-01-12' AS Date), 10, 2, 41, 5, 27, 2, 200)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (67, CAST(N'2019-05-17' AS Date), CAST(N'2019-06-02' AS Date), 16, 5, 60, 7, 15, 11, 51)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (68, CAST(N'2019-11-01' AS Date), CAST(N'2019-11-11' AS Date), 10, 4, 8, 2, 15, 32, 58)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (69, CAST(N'2019-08-03' AS Date), CAST(N'2019-08-06' AS Date), 3, 4, 55, 7, 50, 17, 183)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (70, CAST(N'2019-02-02' AS Date), CAST(N'2019-02-12' AS Date), 10, 3, 29, 6, 21, 38, 12)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (71, CAST(N'2019-04-05' AS Date), CAST(N'2019-04-09' AS Date), 4, 5, 97, 3, 46, 26, 23)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (72, CAST(N'2019-07-10' AS Date), CAST(N'2019-07-17' AS Date), 7, 5, 52, 7, 19, 6, 14)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (73, CAST(N'2019-07-24' AS Date), CAST(N'2019-07-27' AS Date), 3, 3, 24, 2, 35, 36, 101)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (74, CAST(N'2019-04-03' AS Date), CAST(N'2019-04-08' AS Date), 5, 5, 98, 6, 11, 40, 24)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (75, CAST(N'2019-03-10' AS Date), CAST(N'2019-03-21' AS Date), 11, 4, 36, 1, 24, 17, 130)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (76, CAST(N'2019-11-13' AS Date), CAST(N'2019-11-19' AS Date), 6, 1, 14, 2, 8, 8, 54)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (77, CAST(N'2019-10-01' AS Date), CAST(N'2019-10-07' AS Date), 6, 4, 60, 2, 3, 34, 195)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (78, CAST(N'2019-05-30' AS Date), CAST(N'2019-06-03' AS Date), 4, 5, 5, 7, 37, 13, 53)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (79, CAST(N'2019-01-02' AS Date), CAST(N'2019-01-08' AS Date), 6, 2, 13, 5, 22, 24, 118)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (80, CAST(N'2019-06-15' AS Date), CAST(N'2019-06-27' AS Date), 12, 4, 36, 8, 26, 46, 15)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (81, CAST(N'2019-05-16' AS Date), CAST(N'2019-05-05' AS Date), -11, 2, 93, 1, 12, 48, 145)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (82, CAST(N'2019-04-05' AS Date), CAST(N'2019-04-07' AS Date), 2, 3, 89, 5, 7, 22, 142)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (83, CAST(N'2019-07-16' AS Date), CAST(N'2019-07-28' AS Date), 12, 1, 40, 7, 19, 16, 100)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (84, CAST(N'2019-06-11' AS Date), CAST(N'2019-06-20' AS Date), 9, 3, 16, 1, 45, 36, 151)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (85, CAST(N'2019-08-13' AS Date), CAST(N'2019-08-23' AS Date), 10, 4, 36, 2, 55, 41, 169)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (86, CAST(N'2019-10-12' AS Date), CAST(N'2019-10-13' AS Date), 1, 1, 8, 1, 46, 9, 44)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (87, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-17' AS Date), 8, 2, 76, 6, 17, 26, 159)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (88, CAST(N'2019-01-17' AS Date), CAST(N'2019-01-19' AS Date), 2, 4, 28, 6, 57, 34, 3)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (89, CAST(N'2019-11-08' AS Date), CAST(N'2019-11-14' AS Date), 6, 2, 27, 4, 28, 49, 158)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (90, CAST(N'2019-04-12' AS Date), CAST(N'2019-04-14' AS Date), 2, 2, 97, 7, 53, 11, 147)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (91, CAST(N'2019-11-11' AS Date), CAST(N'2019-11-27' AS Date), 16, 2, 59, 5, 34, 27, 188)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (92, CAST(N'2019-04-06' AS Date), CAST(N'2019-04-11' AS Date), 5, 4, 5, 1, 22, 27, 195)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (93, CAST(N'2019-10-21' AS Date), CAST(N'2019-11-02' AS Date), 12, 2, 34, 4, 45, 32, 197)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (94, CAST(N'2019-08-16' AS Date), CAST(N'2019-08-26' AS Date), 10, 1, 26, 8, 14, 6, 184)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (95, CAST(N'2019-02-18' AS Date), CAST(N'2019-02-27' AS Date), 9, 3, 31, 3, 15, 14, 79)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (96, CAST(N'2019-06-22' AS Date), CAST(N'2019-06-28' AS Date), 6, 3, 78, 6, 36, 47, 69)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (97, CAST(N'2019-07-21' AS Date), CAST(N'2019-07-26' AS Date), 5, 4, 8, 3, 40, 48, 48)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (98, CAST(N'2019-07-15' AS Date), CAST(N'2019-08-08' AS Date), 24, 5, 8, 2, 53, 9, 145)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (99, CAST(N'2019-02-12' AS Date), CAST(N'2019-02-18' AS Date), 6, 1, 92, 3, 33, 2, 61)
INSERT [dbo].[Bookings] ([Booking_id], [start_date], [end_date], [days], [number_of_people], [Destination_id], [AS_id], [Room_id], [Relationship_ID], [Client_id]) VALUES (100, CAST(N'2019-05-01' AS Date), CAST(N'2019-05-13' AS Date), 12, 4, 10, 3, 30, 43, 74)
GO
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (1, N'Benedidick', CAST(N'1978-02-15T00:00:00.000' AS DateTime), N'75 Utah Place', N'dbenedidick0@w3.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (2, N'Kilbride', CAST(N'1957-05-23T00:00:00.000' AS DateTime), N'1 Swallow Pass', N'bkilbride1@wufoo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (3, N'Kiff', CAST(N'1995-06-19T00:00:00.000' AS DateTime), N'997 Straubel Circle', N'rkiff2@youku.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (4, N'Gemmill', CAST(N'1952-05-17T00:00:00.000' AS DateTime), N'5 Clemons Hill', N'agemmill3@kickstarter.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (5, N'Snadden', CAST(N'1978-03-31T00:00:00.000' AS DateTime), N'6 Novick Parkway', N'dsnadden4@livejournal.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (6, N'Eady', CAST(N'1982-08-02T00:00:00.000' AS DateTime), N'04700 Derek Lane', N'seady5@blog.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (7, N'Glendenning', CAST(N'1970-08-08T00:00:00.000' AS DateTime), N'75 Columbus Hill', N'nglendenning6@themeforest.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (8, N'Alp', CAST(N'1973-08-02T00:00:00.000' AS DateTime), N'214 Pennsylvania Crossing', N'dalp7@dedecms.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (9, N'Gallico', CAST(N'1979-08-04T00:00:00.000' AS DateTime), N'17609 Summerview Junction', N'dgallico8@pen.io')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (10, N'Chaney', CAST(N'1963-07-03T00:00:00.000' AS DateTime), N'0178 Ilene Point', N'schaney9@tumblr.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (11, N'Hyde', CAST(N'1963-06-21T00:00:00.000' AS DateTime), N'994 Dixon Avenue', N'khydea@surveymonkey.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (12, N'Jaques', CAST(N'1950-11-20T00:00:00.000' AS DateTime), N'114 Killdeer Terrace', N'fjaquesb@jigsy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (13, N'Langabeer', CAST(N'1995-05-18T00:00:00.000' AS DateTime), N'734 Haas Point', N'rlangabeerc@aol.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (14, N'Dillow', CAST(N'1982-05-12T00:00:00.000' AS DateTime), N'9025 Merry Place', N'ddillowd@wisc.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (15, N'Lanchberry', CAST(N'1984-04-07T00:00:00.000' AS DateTime), N'5 Butterfield Drive', N'rlanchberrye@salon.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (16, N'Sich', CAST(N'1972-05-03T00:00:00.000' AS DateTime), N'80267 Jay Circle', N'tsichf@hao123.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (17, N'Bickell', CAST(N'1968-02-03T00:00:00.000' AS DateTime), N'9 Alpine Circle', N'abickellg@yelp.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (18, N'Vickerman', CAST(N'1959-05-06T00:00:00.000' AS DateTime), N'1 Melody Point', N'evickermanh@360.cn')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (19, N'Spelling', CAST(N'1960-08-25T00:00:00.000' AS DateTime), N'014 Rockefeller Trail', N'sspellingi@jigsy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (20, N'Giamo', CAST(N'1993-08-14T00:00:00.000' AS DateTime), N'323 Macpherson Junction', N'zgiamoj@usatoday.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (21, N'Duffet', CAST(N'1956-03-07T00:00:00.000' AS DateTime), N'46 Northview Terrace', N'cduffetk@free.fr')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (22, N'Gueste', CAST(N'1985-10-28T00:00:00.000' AS DateTime), N'1 Clarendon Point', N'wguestel@artisteer.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (23, N'Prettyman', CAST(N'1988-12-09T00:00:00.000' AS DateTime), N'176 Doe Crossing Place', N'wprettymanm@answers.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (24, N'Toffaloni', CAST(N'1976-12-03T00:00:00.000' AS DateTime), N'812 Darwin Terrace', N'atoffalonin@google.cn')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (25, N'Ivantyev', CAST(N'1986-09-06T00:00:00.000' AS DateTime), N'424 Fallview Circle', N'fivantyevo@meetup.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (26, N'Swayte', CAST(N'1981-05-02T00:00:00.000' AS DateTime), N'61 Orin Center', N'rswaytep@ucoz.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (27, N'Dalgety', CAST(N'1989-02-09T00:00:00.000' AS DateTime), N'7 Hansons Circle', N'hdalgetyq@sbwire.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (28, N'Sidlow', CAST(N'1991-01-14T00:00:00.000' AS DateTime), N'87217 Dapin Pass', N'fsidlowr@timesonline.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (29, N'MacGahy', CAST(N'1995-09-04T00:00:00.000' AS DateTime), N'918 Fallview Point', N'emacgahys@163.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (30, N'Eastwood', CAST(N'1989-04-07T00:00:00.000' AS DateTime), N'11 Dakota Avenue', N'ceastwoodt@alibaba.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (31, N'O''Nolan', CAST(N'1986-04-10T00:00:00.000' AS DateTime), N'80 Onsgard Drive', N'wonolanu@cmu.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (32, N'Buntain', CAST(N'1970-05-12T00:00:00.000' AS DateTime), N'11425 Mayer Terrace', N'nbuntainv@bravesites.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (33, N'Morphey', CAST(N'1953-08-28T00:00:00.000' AS DateTime), N'49 Farmco Crossing', N'bmorpheyw@usda.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (34, N'Gantlett', CAST(N'1978-04-14T00:00:00.000' AS DateTime), N'92922 Dottie Park', N'cgantlettx@weebly.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (35, N'Kenwood', CAST(N'1992-08-06T00:00:00.000' AS DateTime), N'10 John Wall Lane', N'lkenwoody@nytimes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (36, N'Francois', CAST(N'1983-03-06T00:00:00.000' AS DateTime), N'39 Crescent Oaks Plaza', N'tfrancoisz@so-net.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (37, N'Pester', CAST(N'1972-10-19T00:00:00.000' AS DateTime), N'72 Scofield Point', N'lpester10@about.me')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (38, N'Ommundsen', CAST(N'1980-07-08T00:00:00.000' AS DateTime), N'0 Rutledge Lane', N'bommundsen11@adobe.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (39, N'Dayment', CAST(N'1972-03-21T00:00:00.000' AS DateTime), N'538 Summerview Parkway', N'rdayment12@mapy.cz')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (40, N'Friend', CAST(N'1956-05-18T00:00:00.000' AS DateTime), N'3 Straubel Place', N'sfriend13@godaddy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (41, N'Chesterman', CAST(N'1987-01-07T00:00:00.000' AS DateTime), N'5 Hauk Way', N'nchesterman14@google.com.hk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (42, N'Spier', CAST(N'1962-04-05T00:00:00.000' AS DateTime), N'884 Forster Pass', N'nspier15@rakuten.co.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (43, N'Blewmen', CAST(N'1983-09-03T00:00:00.000' AS DateTime), N'48953 Macpherson Place', N'bblewmen16@amazon.co.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (44, N'Wellbank', CAST(N'1977-01-09T00:00:00.000' AS DateTime), N'29895 Spenser Hill', N'awellbank17@163.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (45, N'Dorman', CAST(N'1956-01-06T00:00:00.000' AS DateTime), N'22892 Kropf Place', N'adorman18@irs.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (46, N'Neighbour', CAST(N'1976-10-06T00:00:00.000' AS DateTime), N'7 Fremont Avenue', N'gneighbour19@gizmodo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (47, N'Ranger', CAST(N'1975-01-06T00:00:00.000' AS DateTime), N'6043 Ridge Oak Terrace', N'sranger1a@google.ca')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (48, N'Dobbie', CAST(N'1986-06-17T00:00:00.000' AS DateTime), N'0 Ilene Park', N'tdobbie1b@prnewswire.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (49, N'Riccardelli', CAST(N'1975-11-01T00:00:00.000' AS DateTime), N'6311 Park Meadow Way', N'ericcardelli1c@disqus.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (50, N'Muggleston', CAST(N'1972-01-26T00:00:00.000' AS DateTime), N'26069 Burrows Street', N'pmuggleston1d@utexas.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (51, N'Nutten', CAST(N'1974-01-02T00:00:00.000' AS DateTime), N'21 Autumn Leaf Way', N'gnutten1e@whitehouse.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (52, N'Ditchburn', CAST(N'1951-08-06T00:00:00.000' AS DateTime), N'61184 Ruskin Plaza', N'aditchburn1f@reference.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (53, N'Beauman', CAST(N'1978-10-19T00:00:00.000' AS DateTime), N'4 Claremont Alley', N'tbeauman1g@bigcartel.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (54, N'Weighell', CAST(N'1999-05-12T00:00:00.000' AS DateTime), N'90 Basil Road', N'jweighell1h@networkadvertising.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (55, N'Caveau', CAST(N'1997-03-30T00:00:00.000' AS DateTime), N'34109 Petterle Park', N'acaveau1i@dagondesign.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (56, N'Prynne', CAST(N'1984-08-17T00:00:00.000' AS DateTime), N'878 Debra Circle', N'pprynne1j@google.com.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (57, N'Felix', CAST(N'1986-12-18T00:00:00.000' AS DateTime), N'9 Petterle Plaza', N'mfelix1k@wsj.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (58, N'Menco', CAST(N'1956-08-13T00:00:00.000' AS DateTime), N'79470 Eggendart Point', N'dmenco1l@scribd.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (59, N'Muslim', CAST(N'1979-01-08T00:00:00.000' AS DateTime), N'295 Del Sol Parkway', N'smuslim1m@symantec.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (60, N'Isac', CAST(N'1962-09-10T00:00:00.000' AS DateTime), N'40 Pond Court', N'bisac1n@dailymail.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (61, N'Hubbucke', CAST(N'1976-12-08T00:00:00.000' AS DateTime), N'8 Dorton Junction', N'lhubbucke1o@wikia.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (62, N'Rottger', CAST(N'1992-09-11T00:00:00.000' AS DateTime), N'00078 Old Shore Alley', N'arottger1p@hexun.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (63, N'Noods', CAST(N'1980-11-08T00:00:00.000' AS DateTime), N'358 Corry Drive', N'enoods1q@virginia.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (64, N'LAbbet', CAST(N'1973-06-12T00:00:00.000' AS DateTime), N'6 Blackbird Junction', N'glabbet1r@hugedomains.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (65, N'Mace', CAST(N'1997-09-11T00:00:00.000' AS DateTime), N'857 Commercial Trail', N'gmace1s@foxnews.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (66, N'McConnel', CAST(N'1975-11-02T00:00:00.000' AS DateTime), N'69357 Jenna Hill', N'rmcconnel1t@posterous.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (67, N'Gliddon', CAST(N'1992-01-27T00:00:00.000' AS DateTime), N'799 Brickson Park Parkway', N'mgliddon1u@uol.com.br')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (68, N'Massy', CAST(N'1965-01-02T00:00:00.000' AS DateTime), N'56702 Banding Way', N'rmassy1v@latimes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (69, N'Lysons', CAST(N'1986-12-30T00:00:00.000' AS DateTime), N'4062 Lawn Parkway', N'mlysons1w@smh.com.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (70, N'Moulin', CAST(N'1990-07-27T00:00:00.000' AS DateTime), N'9 Dunning Alley', N'lmoulin1x@naver.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (71, N'Siemens', CAST(N'1975-01-18T00:00:00.000' AS DateTime), N'2395 American Lane', N'ssiemens1y@msu.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (72, N'Olsen', CAST(N'1963-08-25T00:00:00.000' AS DateTime), N'15 Hazelcrest Plaza', N'tolsen1z@altervista.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (73, N'Wardhough', CAST(N'1978-09-08T00:00:00.000' AS DateTime), N'149 Huxley Point', N'swardhough20@guardian.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (74, N'Uebel', CAST(N'1985-03-23T00:00:00.000' AS DateTime), N'8944 Redwing Court', N'cuebel21@amazon.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (75, N'Storrier', CAST(N'1987-02-08T00:00:00.000' AS DateTime), N'06 Prairie Rose Circle', N'hstorrier22@illinois.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (76, N'Morgan', CAST(N'1974-08-08T00:00:00.000' AS DateTime), N'259 Spaight Circle', N'kmorgan23@1688.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (77, N'Lilie', CAST(N'1998-07-07T00:00:00.000' AS DateTime), N'18 Sommers Court', N'alilie24@cnet.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (78, N'Kahane', CAST(N'1958-01-08T00:00:00.000' AS DateTime), N'5 Spenser Street', N'hkahane25@harvard.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (79, N'Priestland', CAST(N'1995-08-04T00:00:00.000' AS DateTime), N'2970 Lerdahl Avenue', N'fpriestland26@youku.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (80, N'McLucky', CAST(N'1967-05-03T00:00:00.000' AS DateTime), N'6 Westend Lane', N'kmclucky27@smh.com.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (81, N'Pioli', CAST(N'1986-03-01T00:00:00.000' AS DateTime), N'59521 Green Center', N'mpioli28@huffingtonpost.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (82, N'Labbett', CAST(N'1954-03-05T00:00:00.000' AS DateTime), N'2937 Fremont Parkway', N'clabbett29@shinystat.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (83, N'Odger', CAST(N'2000-10-07T00:00:00.000' AS DateTime), N'88 Shoshone Circle', N'dodger2a@joomla.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (84, N'Whickman', CAST(N'1969-07-16T00:00:00.000' AS DateTime), N'811 Lotheville Point', N'twhickman2b@livejournal.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (85, N'Hearnshaw', CAST(N'1995-09-07T00:00:00.000' AS DateTime), N'516 Carey Circle', N'ohearnshaw2c@histats.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (86, N'Norcliffe', CAST(N'1989-07-10T00:00:00.000' AS DateTime), N'30 Delladonna Trail', N'snorcliffe2d@discuz.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (87, N'Richemont', CAST(N'1976-09-12T00:00:00.000' AS DateTime), N'05 Fairview Avenue', N'grichemont2e@apache.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (88, N'Chrippes', CAST(N'1986-04-09T00:00:00.000' AS DateTime), N'020 Elmside Center', N'bchrippes2f@adobe.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (89, N'Grent', CAST(N'1957-01-10T00:00:00.000' AS DateTime), N'628 Graceland Center', N'cgrent2g@aol.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (90, N'McTavish', CAST(N'1957-02-21T00:00:00.000' AS DateTime), N'556 Sycamore Hill', N'cmctavish2h@diigo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (91, N'Jaye', CAST(N'1972-06-11T00:00:00.000' AS DateTime), N'6208 Morningstar Street', N'ejaye2i@wsj.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (92, N'Gandey', CAST(N'1980-06-23T00:00:00.000' AS DateTime), N'0026 Fairfield Trail', N'ogandey2j@bing.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (93, N'Kensit', CAST(N'1965-02-01T00:00:00.000' AS DateTime), N'4220 Memorial Street', N'okensit2k@about.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (94, N'O''Fallone', CAST(N'1980-10-07T00:00:00.000' AS DateTime), N'56 Veith Road', N'lofallone2l@rakuten.co.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (95, N'Graveston', CAST(N'1986-09-25T00:00:00.000' AS DateTime), N'08110 Arrowood Hill', N'cgraveston2m@noaa.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (96, N'Growcock', CAST(N'1975-10-12T00:00:00.000' AS DateTime), N'4350 Bashford Crossing', N'dgrowcock2n@photobucket.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (97, N'Treasure', CAST(N'1951-11-04T00:00:00.000' AS DateTime), N'3515 Debra Hill', N'gtreasure2o@wikipedia.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (98, N'Fratczak', CAST(N'1969-04-13T00:00:00.000' AS DateTime), N'1334 Bonner Pass', N'cfratczak2p@washingtonpost.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (99, N'Stean', CAST(N'1973-12-24T00:00:00.000' AS DateTime), N'0567 Hollow Ridge Place', N'bstean2q@arizona.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (100, N'Favill', CAST(N'1966-06-11T00:00:00.000' AS DateTime), N'06 Hintze Circle', N'hfavill2r@clickbank.net')
GO
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (101, N'Message', CAST(N'1981-03-08T00:00:00.000' AS DateTime), N'8674 Hoepker Place', N'dmessage2s@desdev.cn')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (102, N'Bartozzi', CAST(N'1953-06-09T00:00:00.000' AS DateTime), N'882 Commercial Lane', N'lbartozzi2t@cornell.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (103, N'Eighteen', CAST(N'1988-08-18T00:00:00.000' AS DateTime), N'2 Old Shore Place', N'ceighteen2u@zimbio.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (104, N'Casali', CAST(N'1995-12-09T00:00:00.000' AS DateTime), N'977 Elgar Trail', N'acasali2v@delicious.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (105, N'Ingamells', CAST(N'1995-11-07T00:00:00.000' AS DateTime), N'12233 School Road', N'jingamells2w@cbslocal.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (106, N'Pothergill', CAST(N'1959-07-11T00:00:00.000' AS DateTime), N'221 Coolidge Alley', N'cpothergill2x@google.ca')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (107, N'Maryska', CAST(N'1956-02-21T00:00:00.000' AS DateTime), N'51074 Northview Crossing', N'hmaryska2y@zdnet.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (108, N'Damiata', CAST(N'1959-02-11T00:00:00.000' AS DateTime), N'8 Claremont Court', N'cdamiata2z@jigsy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (109, N'Janatka', CAST(N'1988-12-05T00:00:00.000' AS DateTime), N'18 Sloan Drive', N'cjanatka30@irs.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (110, N'Vinall', CAST(N'1961-04-04T00:00:00.000' AS DateTime), N'4 Myrtle Court', N'cvinall31@prnewswire.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (111, N'Halleday', CAST(N'1964-05-06T00:00:00.000' AS DateTime), N'52 Amoth Trail', N'khalleday32@bloglines.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (112, N'Robichon', CAST(N'1991-12-09T00:00:00.000' AS DateTime), N'32 Cambridge Crossing', N'brobichon33@t.co')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (113, N'Colchett', CAST(N'1967-07-08T00:00:00.000' AS DateTime), N'4066 Springview Crossing', N'ccolchett34@1und1.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (114, N'Yakovich', CAST(N'1998-02-25T00:00:00.000' AS DateTime), N'47511 Toban Drive', N'syakovich35@yahoo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (115, N'McCurtain', CAST(N'1998-09-29T00:00:00.000' AS DateTime), N'3 Vera Street', N'lmccurtain36@un.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (116, N'Fretter', CAST(N'1969-01-01T00:00:00.000' AS DateTime), N'6 Forest Dale Center', N'tfretter37@dell.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (117, N'Craiker', CAST(N'1990-05-05T00:00:00.000' AS DateTime), N'4821 Forster Park', N'ncraiker38@altervista.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (118, N'Crosoer', CAST(N'1986-04-17T00:00:00.000' AS DateTime), N'5364 Badeau Street', N'mcrosoer39@telegraph.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (119, N'Alphonso', CAST(N'1981-11-03T00:00:00.000' AS DateTime), N'14125 Randy Junction', N'malphonso3a@accuweather.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (120, N'Fillingham', CAST(N'1997-09-08T00:00:00.000' AS DateTime), N'565 American Court', N'pfillingham3b@ustream.tv')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (121, N'Hedaux', CAST(N'1972-05-14T00:00:00.000' AS DateTime), N'4771 Linden Trail', N'mhedaux3c@nhs.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (122, N'Bridgens', CAST(N'1985-04-03T00:00:00.000' AS DateTime), N'64568 Old Shore Way', N'vbridgens3d@blog.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (123, N'Stimpson', CAST(N'1985-09-06T00:00:00.000' AS DateTime), N'5 Oxford Junction', N'astimpson3e@salon.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (124, N'Gilchrest', CAST(N'1995-12-09T00:00:00.000' AS DateTime), N'90 Parkside Street', N'sgilchrest3f@blog.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (125, N'Tebbit', CAST(N'1950-09-09T00:00:00.000' AS DateTime), N'27804 Fair Oaks Plaza', N'atebbit3g@yale.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (126, N'Schankelborg', CAST(N'1961-01-10T00:00:00.000' AS DateTime), N'667 Dunning Drive', N'mschankelborg3h@google.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (127, N'Gothrup', CAST(N'1993-07-14T00:00:00.000' AS DateTime), N'44487 Del Mar Trail', N'mgothrup3i@mail.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (128, N'Clive', CAST(N'1979-08-07T00:00:00.000' AS DateTime), N'44562 Vernon Court', N'pclive3j@mozilla.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (129, N'McLukie', CAST(N'1973-08-10T00:00:00.000' AS DateTime), N'554 Barnett Way', N'dmclukie3k@tripod.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (130, N'Crecy', CAST(N'1976-08-22T00:00:00.000' AS DateTime), N'985 Judy Crossing', N'bcrecy3l@google.it')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (131, N'Chesters', CAST(N'1981-04-21T00:00:00.000' AS DateTime), N'8 Tennyson Road', N'fchesters3m@qq.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (132, N'Upwood', CAST(N'1984-09-01T00:00:00.000' AS DateTime), N'21958 Karstens Road', N'kupwood3n@ifeng.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (133, N'Willshear', CAST(N'1974-01-04T00:00:00.000' AS DateTime), N'65 Mandrake Park', N'wwillshear3o@typepad.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (134, N'Sambrok', CAST(N'1963-03-08T00:00:00.000' AS DateTime), N'290 Mosinee Point', N'msambrok3p@woothemes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (135, N'Balshen', CAST(N'1957-02-01T00:00:00.000' AS DateTime), N'746 Sutherland Trail', N'sbalshen3q@wikia.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (136, N'Zoren', CAST(N'1977-06-24T00:00:00.000' AS DateTime), N'1085 Oak Avenue', N'dzoren3r@ihg.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (137, N'Caldwall', CAST(N'1989-02-04T00:00:00.000' AS DateTime), N'63641 Glendale Street', N'tcaldwall3s@va.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (138, N'Seabrocke', CAST(N'1973-11-08T00:00:00.000' AS DateTime), N'21648 Sommers Plaza', N'cseabrocke3t@hubpages.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (139, N'Dykas', CAST(N'1973-09-03T00:00:00.000' AS DateTime), N'4 Sunnyside Crossing', N'cdykas3u@army.mil')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (140, N'Britney', CAST(N'1979-06-19T00:00:00.000' AS DateTime), N'149 Mesta Terrace', N'cbritney3v@blinklist.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (141, N'Gasgarth', CAST(N'1992-04-04T00:00:00.000' AS DateTime), N'3604 Kensington Road', N'agasgarth3w@tamu.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (142, N'Dufore', CAST(N'1982-11-11T00:00:00.000' AS DateTime), N'2 Evergreen Court', N'jdufore3x@state.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (143, N'Inold', CAST(N'1963-04-09T00:00:00.000' AS DateTime), N'9909 Ohio Circle', N'sinold3y@disqus.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (144, N'Baugham', CAST(N'1980-09-15T00:00:00.000' AS DateTime), N'7 High Crossing Junction', N'sbaugham3z@de.vu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (145, N'Scargle', CAST(N'1960-05-14T00:00:00.000' AS DateTime), N'36 Coolidge Way', N'nscargle40@microsoft.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (146, N'Coopland', CAST(N'1966-03-01T00:00:00.000' AS DateTime), N'779 4th Parkway', N'fcoopland41@constantcontact.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (147, N'Oxlee', CAST(N'1975-05-13T00:00:00.000' AS DateTime), N'155 Barnett Junction', N'eoxlee42@house.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (148, N'Henden', CAST(N'1957-03-26T00:00:00.000' AS DateTime), N'9 Homewood Alley', N'rhenden43@wikispaces.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (149, N'Boutton', CAST(N'1992-07-16T00:00:00.000' AS DateTime), N'09 Goodland Road', N'jboutton44@mozilla.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (150, N'Inderwick', CAST(N'1960-12-29T00:00:00.000' AS DateTime), N'465 Nevada Crossing', N'sinderwick45@ocn.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (151, N'Maisey', CAST(N'1950-08-12T00:00:00.000' AS DateTime), N'182 Lyons Drive', N'cmaisey46@acquirethisname.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (152, N'Pawelek', CAST(N'1961-07-08T00:00:00.000' AS DateTime), N'32 Sheridan Terrace', N'spawelek47@surveymonkey.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (153, N'Pantry', CAST(N'1973-07-16T00:00:00.000' AS DateTime), N'11487 Oak Circle', N'apantry48@reverbnation.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (154, N'Shipton', CAST(N'1983-05-04T00:00:00.000' AS DateTime), N'7 East Center', N'kshipton49@i2i.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (155, N'Grestie', CAST(N'1951-08-09T00:00:00.000' AS DateTime), N'182 East Parkway', N'ggrestie4a@simplemachines.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (156, N'Threader', CAST(N'1958-10-03T00:00:00.000' AS DateTime), N'4 Westend Crossing', N'tthreader4b@so-net.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (157, N'Bly', CAST(N'1995-09-13T00:00:00.000' AS DateTime), N'6187 Stoughton Plaza', N'jbly4c@jiathis.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (158, N'Leither', CAST(N'1959-03-03T00:00:00.000' AS DateTime), N'7 Mcguire Drive', N'dleither4d@vimeo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (159, N'Fantonetti', CAST(N'1974-04-25T00:00:00.000' AS DateTime), N'50 Cottonwood Trail', N'jfantonetti4e@phpbb.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (160, N'Roddick', CAST(N'1958-10-11T00:00:00.000' AS DateTime), N'287 Lyons Alley', N'nroddick4f@creativecommons.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (161, N'Keddy', CAST(N'1961-08-17T00:00:00.000' AS DateTime), N'778 Anderson Center', N'gkeddy4g@prweb.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (162, N'Agglio', CAST(N'1972-06-04T00:00:00.000' AS DateTime), N'7219 Hovde Terrace', N'cagglio4h@nymag.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (163, N'Dallison', CAST(N'1998-06-01T00:00:00.000' AS DateTime), N'7 Oriole Avenue', N'mdallison4i@scientificamerican.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (164, N'McGuff', CAST(N'1988-10-04T00:00:00.000' AS DateTime), N'2 Rieder Crossing', N'dmcguff4j@jimdo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (165, N'Braund', CAST(N'1976-10-08T00:00:00.000' AS DateTime), N'0 Grim Road', N'dbraund4k@about.me')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (166, N'Poon', CAST(N'1978-03-04T00:00:00.000' AS DateTime), N'256 Columbus Circle', N'dpoon4l@mac.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (167, N'Cartman', CAST(N'1977-04-05T00:00:00.000' AS DateTime), N'400 Rigney Point', N'lcartman4m@exblog.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (168, N'Seggie', CAST(N'1971-10-03T00:00:00.000' AS DateTime), N'6 Kim Parkway', N'kseggie4n@vimeo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (169, N'De Robertis', CAST(N'1953-11-06T00:00:00.000' AS DateTime), N'03597 Eagle Crest Crossing', N'bderobertis4o@google.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (170, N'Riply', CAST(N'1976-02-01T00:00:00.000' AS DateTime), N'12688 Veith Parkway', N'briply4p@tripod.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (171, N'Guilaem', CAST(N'1973-10-06T00:00:00.000' AS DateTime), N'6 Raven Terrace', N'dguilaem4q@bloomberg.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (172, N'Rounsefell', CAST(N'1956-12-09T00:00:00.000' AS DateTime), N'919 Summerview Alley', N'hrounsefell4r@ning.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (173, N'Czadla', CAST(N'1981-08-10T00:00:00.000' AS DateTime), N'20 Talmadge Alley', N'sczadla4s@oakley.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (174, N'Wolters', CAST(N'1992-12-04T00:00:00.000' AS DateTime), N'7548 Riverside Point', N'lwolters4t@nhs.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (175, N'Keward', CAST(N'1990-02-07T00:00:00.000' AS DateTime), N'575 Eggendart Trail', N'rkeward4u@ucsd.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (176, N'Mews', CAST(N'1954-04-04T00:00:00.000' AS DateTime), N'88489 South Crossing', N'amews4v@livejournal.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (177, N'Pavia', CAST(N'1961-07-03T00:00:00.000' AS DateTime), N'7 Logan Drive', N'ipavia4w@bloomberg.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (178, N'Furzer', CAST(N'1970-04-30T00:00:00.000' AS DateTime), N'8 Aberg Crossing', N'afurzer4x@stanford.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (179, N'Ferrie', CAST(N'1993-10-03T00:00:00.000' AS DateTime), N'6 Dahle Junction', N'rferrie4y@youku.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (180, N'Treasaden', CAST(N'1951-01-03T00:00:00.000' AS DateTime), N'74 Northport Trail', N'jtreasaden4z@fema.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (181, N'Daly', CAST(N'1951-11-03T00:00:00.000' AS DateTime), N'198 Crowley Center', N'bdaly50@nydailynews.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (182, N'Stilldale', CAST(N'1983-11-01T00:00:00.000' AS DateTime), N'61323 Fisk Place', N'bstilldale51@goodreads.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (183, N'Barwack', CAST(N'1975-11-06T00:00:00.000' AS DateTime), N'0 Jenna Trail', N'dbarwack52@europa.eu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (184, N'Vaud', CAST(N'1988-05-13T00:00:00.000' AS DateTime), N'0324 Kinsman Park', N'hvaud53@harvard.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (185, N'Bricksey', CAST(N'1967-03-14T00:00:00.000' AS DateTime), N'1799 Burrows Place', N'zbricksey54@mit.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (186, N'Gabbitis', CAST(N'1987-07-22T00:00:00.000' AS DateTime), N'79 Lake View Junction', N'bgabbitis55@exblog.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (187, N'Enright', CAST(N'1969-11-01T00:00:00.000' AS DateTime), N'4344 Ludington Drive', N'genright56@ihg.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (188, N'Couchman', CAST(N'1978-05-10T00:00:00.000' AS DateTime), N'5 Fairfield Street', N'fcouchman57@clickbank.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (189, N'Sedgebeer', CAST(N'1970-07-01T00:00:00.000' AS DateTime), N'72503 Dryden Avenue', N'qsedgebeer58@de.vu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (190, N'Muspratt', CAST(N'1993-02-06T00:00:00.000' AS DateTime), N'48895 Bonner Way', N'pmuspratt59@barnesandnoble.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (191, N'Grimsley', CAST(N'1960-08-11T00:00:00.000' AS DateTime), N'392 Glendale Point', N'dgrimsley5a@mapy.cz')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (192, N'Jerson', CAST(N'1975-05-06T00:00:00.000' AS DateTime), N'7 Vidon Street', N'kjerson5b@etsy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (193, N'Coggeshall', CAST(N'1961-09-05T00:00:00.000' AS DateTime), N'49294 Spaight Court', N'vcoggeshall5c@msn.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (194, N'Bryce', CAST(N'1974-08-05T00:00:00.000' AS DateTime), N'1596 Summer Ridge Plaza', N'ebryce5d@cbslocal.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (195, N'Pllu', CAST(N'1964-06-03T00:00:00.000' AS DateTime), N'59 Dakota Street', N'tpllu5e@pbs.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (196, N'Tumasian', CAST(N'1959-03-15T00:00:00.000' AS DateTime), N'54 Mandrake Junction', N'otumasian5f@webmd.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (197, N'McVee', CAST(N'1988-07-29T00:00:00.000' AS DateTime), N'9 Eagle Crest Lane', N'amcvee5g@imageshack.us')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (198, N'Wittke', CAST(N'1997-05-09T00:00:00.000' AS DateTime), N'3 Corben Avenue', N'kwittke5h@mtv.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (199, N'Tointon', CAST(N'1962-05-21T00:00:00.000' AS DateTime), N'903 Oriole Trail', N'ttointon5i@clickbank.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (200, N'Beeching', CAST(N'1955-02-03T00:00:00.000' AS DateTime), N'6 Gale Street', N'ibeeching5j@yale.edu')
GO
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (201, N'Buten', CAST(N'1985-11-06T00:00:00.000' AS DateTime), N'3311 Becker Terrace', N'mbuten5k@elpais.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (202, N'Saywell', CAST(N'1971-11-24T00:00:00.000' AS DateTime), N'73973 Pierstorff Circle', N'csaywell5l@weather.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (203, N'Kendall', CAST(N'1976-01-01T00:00:00.000' AS DateTime), N'960 Canary Drive', N'dkendall5m@admin.ch')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (204, N'Phipard-Shears', CAST(N'1983-05-04T00:00:00.000' AS DateTime), N'51 Troy Road', N'vphipardshears5n@typepad.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (205, N'Fockes', CAST(N'1978-12-07T00:00:00.000' AS DateTime), N'0 Dixon Crossing', N'afockes5o@rambler.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (206, N'Raye', CAST(N'1962-06-27T00:00:00.000' AS DateTime), N'826 Canary Park', N'uraye5p@gizmodo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (207, N'Pelosi', CAST(N'1968-01-11T00:00:00.000' AS DateTime), N'1755 Haas Road', N'fpelosi5q@upenn.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (208, N'Izchaki', CAST(N'1962-07-07T00:00:00.000' AS DateTime), N'2293 Bowman Alley', N'aizchaki5r@lycos.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (209, N'Grimwad', CAST(N'1995-04-04T00:00:00.000' AS DateTime), N'7565 Anhalt Park', N'ggrimwad5s@tmall.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (210, N'Rolfini', CAST(N'1991-03-09T00:00:00.000' AS DateTime), N'2 Longview Crossing', N'srolfini5t@foxnews.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (211, N'Summersett', CAST(N'1967-03-07T00:00:00.000' AS DateTime), N'2 Harper Circle', N'bsummersett5u@cornell.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (212, N'Godar', CAST(N'1968-12-27T00:00:00.000' AS DateTime), N'45 Sommers Court', N'cgodar5v@geocities.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (213, N'Gilfoyle', CAST(N'1992-03-09T00:00:00.000' AS DateTime), N'5634 Cherokee Drive', N'bgilfoyle5w@surveymonkey.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (214, N'O''Shaughnessy', CAST(N'1951-04-09T00:00:00.000' AS DateTime), N'62757 Jenifer Terrace', N'roshaughnessy5x@mapquest.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (215, N'Paylor', CAST(N'1979-02-26T00:00:00.000' AS DateTime), N'2 Helena Terrace', N'cpaylor5y@drupal.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (216, N'Hutten', CAST(N'1987-09-23T00:00:00.000' AS DateTime), N'56 Helena Point', N'bhutten5z@slideshare.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (217, N'Sugge', CAST(N'1970-11-10T00:00:00.000' AS DateTime), N'165 Shelley Road', N'lsugge60@bandcamp.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (218, N'Cornwell', CAST(N'1993-02-06T00:00:00.000' AS DateTime), N'9 Nelson Park', N'lcornwell61@spiegel.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (219, N'Kinnaird', CAST(N'1981-06-20T00:00:00.000' AS DateTime), N'56624 Northridge Alley', N'mkinnaird62@sciencedaily.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (220, N'Hutson', CAST(N'1992-03-04T00:00:00.000' AS DateTime), N'5 Ohio Drive', N'jhutson63@exblog.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (221, N'Leman', CAST(N'1970-03-07T00:00:00.000' AS DateTime), N'362 Oak Valley Pass', N'wleman64@canalblog.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (222, N'Streeting', CAST(N'1996-05-07T00:00:00.000' AS DateTime), N'52690 Park Meadow Circle', N'astreeting65@usa.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (223, N'Thoms', CAST(N'1956-12-10T00:00:00.000' AS DateTime), N'011 Morningstar Crossing', N'bthoms66@drupal.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (224, N'Rathke', CAST(N'1994-09-11T00:00:00.000' AS DateTime), N'34 Blue Bill Park Hill', N'prathke67@vk.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (225, N'Huggens', CAST(N'1994-05-12T00:00:00.000' AS DateTime), N'459 Meadow Ridge Junction', N'jhuggens68@blogspot.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (226, N'Proctor', CAST(N'1956-02-03T00:00:00.000' AS DateTime), N'6933 Elmside Avenue', N'dproctor69@tinyurl.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (227, N'McNeice', CAST(N'1968-08-08T00:00:00.000' AS DateTime), N'245 Canary Street', N'emcneice6a@umich.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (228, N'Jarrold', CAST(N'1969-01-08T00:00:00.000' AS DateTime), N'86 Sundown Avenue', N'hjarrold6b@ft.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (229, N'Vaney', CAST(N'1987-06-20T00:00:00.000' AS DateTime), N'4 Buena Vista Circle', N'fvaney6c@google.com.br')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (230, N'Bogue', CAST(N'1991-10-09T00:00:00.000' AS DateTime), N'355 Dakota Way', N'hbogue6d@army.mil')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (231, N'Longforth', CAST(N'1988-02-05T00:00:00.000' AS DateTime), N'20834 Tennyson Place', N'tlongforth6e@networksolutions.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (232, N'Rubbert', CAST(N'1995-10-04T00:00:00.000' AS DateTime), N'340 Iowa Drive', N'erubbert6f@vimeo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (233, N'Greave', CAST(N'1996-10-07T00:00:00.000' AS DateTime), N'16 Truax Point', N'mgreave6g@yahoo.co.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (234, N'Dancey', CAST(N'1970-12-08T00:00:00.000' AS DateTime), N'64688 Jackson Circle', N'jdancey6h@dailymail.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (235, N'Patington', CAST(N'1954-12-07T00:00:00.000' AS DateTime), N'9366 Hayes Parkway', N'epatington6i@yale.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (236, N'Tremouille', CAST(N'1981-11-03T00:00:00.000' AS DateTime), N'373 Mendota Crossing', N'rtremouille6j@hostgator.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (237, N'Acreman', CAST(N'1997-12-05T00:00:00.000' AS DateTime), N'6 Kinsman Point', N'aacreman6k@dailymotion.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (238, N'McMichael', CAST(N'1996-10-05T00:00:00.000' AS DateTime), N'4038 Longview Junction', N'mmcmichael6l@mac.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (239, N'Poller', CAST(N'1955-12-05T00:00:00.000' AS DateTime), N'7 Everett Street', N'lpoller6m@clickbank.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (240, N'Desvignes', CAST(N'1973-07-03T00:00:00.000' AS DateTime), N'837 Milwaukee Court', N'cdesvignes6n@google.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (241, N'Densey', CAST(N'1973-03-01T00:00:00.000' AS DateTime), N'4 Novick Crossing', N'adensey6o@microsoft.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (242, N'Nerney', CAST(N'1999-12-22T00:00:00.000' AS DateTime), N'04 Johnson Avenue', N'fnerney6p@gov.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (243, N'Hellicar', CAST(N'1982-05-24T00:00:00.000' AS DateTime), N'92 Westerfield Junction', N'ahellicar6q@gnu.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (244, N'Thumim', CAST(N'1980-08-22T00:00:00.000' AS DateTime), N'754 Red Cloud Alley', N'jthumim6r@statcounter.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (245, N'Pantry', CAST(N'1992-12-01T00:00:00.000' AS DateTime), N'92182 Thackeray Parkway', N'spantry6s@smh.com.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (246, N'Jiroutka', CAST(N'1989-06-02T00:00:00.000' AS DateTime), N'7272 Ridge Oak Place', N'sjiroutka6t@mlb.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (247, N'Anand', CAST(N'1957-06-01T00:00:00.000' AS DateTime), N'806 Schlimgen Point', N'hanand6u@scientificamerican.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (248, N'Conradie', CAST(N'1996-03-10T00:00:00.000' AS DateTime), N'49 Longview Terrace', N'dconradie6v@flickr.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (249, N'Fassmann', CAST(N'1990-04-10T00:00:00.000' AS DateTime), N'82425 Crownhardt Alley', N'sfassmann6w@pcworld.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (250, N'Quarles', CAST(N'1981-07-23T00:00:00.000' AS DateTime), N'996 Crownhardt Hill', N'tquarles6x@youtube.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (251, N'Cudbird', CAST(N'1993-02-11T00:00:00.000' AS DateTime), N'0988 Nova Drive', N'wcudbird6y@cdbaby.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (252, N'Kordas', CAST(N'1972-07-12T00:00:00.000' AS DateTime), N'848 Fallview Hill', N'wkordas6z@answers.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (253, N'Casetta', CAST(N'1950-01-08T00:00:00.000' AS DateTime), N'8 Helena Trail', N'dcasetta70@trellian.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (254, N'Martin', CAST(N'1969-07-06T00:00:00.000' AS DateTime), N'8 Russell Parkway', N'tmartin71@narod.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (255, N'Romanski', CAST(N'1953-03-04T00:00:00.000' AS DateTime), N'9669 Bashford Trail', N'jromanski72@geocities.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (256, N'Aleveque', CAST(N'1997-01-05T00:00:00.000' AS DateTime), N'6249 Hansons Way', N'waleveque73@phpbb.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (257, N'Northwood', CAST(N'1967-02-10T00:00:00.000' AS DateTime), N'84 Reindahl Lane', N'enorthwood74@accuweather.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (258, N'Stephens', CAST(N'1984-02-25T00:00:00.000' AS DateTime), N'3748 Carioca Street', N'pstephens75@zimbio.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (259, N'McCarrick', CAST(N'1977-03-15T00:00:00.000' AS DateTime), N'23489 Norway Maple Avenue', N'smccarrick76@wufoo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (260, N'Latta', CAST(N'1972-02-08T00:00:00.000' AS DateTime), N'3 Cottonwood Terrace', N'glatta77@quantcast.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (261, N'Sandom', CAST(N'1973-11-03T00:00:00.000' AS DateTime), N'86104 Redwing Plaza', N'gsandom78@huffingtonpost.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (262, N'Calven', CAST(N'1960-07-12T00:00:00.000' AS DateTime), N'8 Sherman Drive', N'bcalven79@zimbio.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (263, N'Jellett', CAST(N'1974-09-14T00:00:00.000' AS DateTime), N'44 Browning Avenue', N'ejellett7a@arizona.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (264, N'Shipp', CAST(N'1989-11-11T00:00:00.000' AS DateTime), N'55082 Dwight Plaza', N'mshipp7b@engadget.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (265, N'Culleford', CAST(N'1974-11-10T00:00:00.000' AS DateTime), N'81583 Graedel Road', N'dculleford7c@forbes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (266, N'Gayden', CAST(N'1987-07-09T00:00:00.000' AS DateTime), N'5 Melrose Place', N'agayden7d@prweb.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (267, N'Willetts', CAST(N'1965-02-02T00:00:00.000' AS DateTime), N'3 Bashford Place', N'gwilletts7e@youku.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (268, N'Epsly', CAST(N'1976-08-21T00:00:00.000' AS DateTime), N'500 Manitowish Crossing', N'bepsly7f@bravesites.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (269, N'Baudet', CAST(N'1989-01-31T00:00:00.000' AS DateTime), N'88641 Anthes Avenue', N'wbaudet7g@jigsy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (270, N'Glaysher', CAST(N'1979-12-09T00:00:00.000' AS DateTime), N'03798 Lakeland Terrace', N'tglaysher7h@gravatar.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (271, N'Killoran', CAST(N'1979-02-11T00:00:00.000' AS DateTime), N'1387 Judy Alley', N'dkilloran7i@tripadvisor.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (272, N'Van der Kruis', CAST(N'1997-04-06T00:00:00.000' AS DateTime), N'1 Daystar Pass', N'bvanderkruis7j@state.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (273, N'Brideoke', CAST(N'1962-08-18T00:00:00.000' AS DateTime), N'993 International Lane', N'rbrideoke7k@reference.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (274, N'Matzaitis', CAST(N'1960-01-30T00:00:00.000' AS DateTime), N'01485 Vidon Circle', N'tmatzaitis7l@feedburner.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (275, N'Chisnell', CAST(N'1959-05-20T00:00:00.000' AS DateTime), N'7417 Norway Maple Street', N'achisnell7m@geocities.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (276, N'Dagnan', CAST(N'1964-12-28T00:00:00.000' AS DateTime), N'490 Northridge Crossing', N'tdagnan7n@shinystat.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (277, N'Cocking', CAST(N'1960-01-05T00:00:00.000' AS DateTime), N'719 Wayridge Circle', N'ococking7o@parallels.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (278, N'Holligan', CAST(N'1984-09-02T00:00:00.000' AS DateTime), N'303 Vermont Street', N'aholligan7p@shareasale.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (279, N'von Grollmann', CAST(N'1996-07-08T00:00:00.000' AS DateTime), N'9 Cardinal Road', N'dvongrollmann7q@sakura.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (280, N'Vicker', CAST(N'1982-10-28T00:00:00.000' AS DateTime), N'5 Forster Plaza', N'evicker7r@moonfruit.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (281, N'Grigorushkin', CAST(N'1953-02-11T00:00:00.000' AS DateTime), N'88 Forest Run Park', N'cgrigorushkin7s@163.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (282, N'Cotelard', CAST(N'1966-06-10T00:00:00.000' AS DateTime), N'2 Esker Hill', N'mcotelard7t@nature.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (283, N'Najera', CAST(N'1985-08-11T00:00:00.000' AS DateTime), N'5248 Blue Bill Park Road', N'cnajera7u@hp.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (284, N'Duffrie', CAST(N'1994-04-20T00:00:00.000' AS DateTime), N'867 Cambridge Street', N'pduffrie7v@go.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (285, N'Simonato', CAST(N'1961-05-16T00:00:00.000' AS DateTime), N'347 Browning Alley', N'nsimonato7w@angelfire.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (286, N'Eayrs', CAST(N'1958-02-10T00:00:00.000' AS DateTime), N'14711 Utah Parkway', N'heayrs7x@posterous.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (287, N'Simonutti', CAST(N'1951-01-12T00:00:00.000' AS DateTime), N'3185 Fisk Place', N'rsimonutti7y@about.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (288, N'Cready', CAST(N'1956-01-10T00:00:00.000' AS DateTime), N'80406 Larry Junction', N'ccready7z@comcast.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (289, N'Colyer', CAST(N'1969-09-23T00:00:00.000' AS DateTime), N'401 Sunnyside Pass', N'fcolyer80@hubpages.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (290, N'Marriott', CAST(N'1968-05-07T00:00:00.000' AS DateTime), N'81 Sunbrook Street', N'dmarriott81@gmpg.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (291, N'Ferriere', CAST(N'1956-08-11T00:00:00.000' AS DateTime), N'68 Havey Point', N'gferriere82@salon.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (292, N'Zanazzi', CAST(N'1979-06-05T00:00:00.000' AS DateTime), N'79 Saint Paul Court', N'kzanazzi83@fema.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (293, N'Dorset', CAST(N'1990-04-02T00:00:00.000' AS DateTime), N'19 Texas Point', N'mdorset84@techcrunch.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (294, N'Malthouse', CAST(N'1974-02-14T00:00:00.000' AS DateTime), N'55 Clarendon Hill', N'vmalthouse85@sciencedirect.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (295, N'Szantho', CAST(N'1999-01-07T00:00:00.000' AS DateTime), N'58377 Fulton Terrace', N'wszantho86@usda.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (296, N'Cella', CAST(N'1958-02-05T00:00:00.000' AS DateTime), N'54025 Hanson Street', N'mcella87@hexun.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (297, N'Stidston', CAST(N'1956-07-17T00:00:00.000' AS DateTime), N'3 Havey Junction', N'lstidston88@pagesperso-orange.fr')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (298, N'Leaves', CAST(N'1969-08-03T00:00:00.000' AS DateTime), N'45 Shopko Plaza', N'hleaves89@ox.ac.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (299, N'Fiveash', CAST(N'1952-04-10T00:00:00.000' AS DateTime), N'504 Shoshone Lane', N'bfiveash8a@dailymail.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (300, N'Dowbakin', CAST(N'2000-10-09T00:00:00.000' AS DateTime), N'94632 Pepper Wood Hill', N'mdowbakin8b@yellowpages.com')
GO
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (301, N'McShirie', CAST(N'1970-09-19T00:00:00.000' AS DateTime), N'7957 Sheridan Park', N'pmcshirie8c@edublogs.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (302, N'Minister', CAST(N'2000-10-04T00:00:00.000' AS DateTime), N'041 Eastwood Road', N'cminister8d@1und1.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (303, N'Galvin', CAST(N'1968-08-19T00:00:00.000' AS DateTime), N'0 Burrows Alley', N'wgalvin8e@networkadvertising.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (304, N'Windows', CAST(N'1978-02-05T00:00:00.000' AS DateTime), N'02225 Harbort Way', N'awindows8f@paypal.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (305, N'Frobisher', CAST(N'1973-07-17T00:00:00.000' AS DateTime), N'0649 Westerfield Parkway', N'mfrobisher8g@google.it')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (306, N'Niset', CAST(N'1960-01-22T00:00:00.000' AS DateTime), N'53136 Grayhawk Circle', N'bniset8h@ovh.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (307, N'Dunbabin', CAST(N'1980-04-21T00:00:00.000' AS DateTime), N'051 Mandrake Road', N'adunbabin8i@moonfruit.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (308, N'Van Leijs', CAST(N'1979-09-06T00:00:00.000' AS DateTime), N'303 Green Ridge Road', N'gvanleijs8j@mediafire.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (309, N'Gladyer', CAST(N'1996-09-06T00:00:00.000' AS DateTime), N'8 Roxbury Avenue', N'sgladyer8k@nytimes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (310, N'Mournian', CAST(N'1964-06-06T00:00:00.000' AS DateTime), N'9688 Crescent Oaks Court', N'gmournian8l@hhs.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (311, N'Fenkel', CAST(N'1989-05-10T00:00:00.000' AS DateTime), N'5 Utah Lane', N'hfenkel8m@japanpost.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (312, N'Paddefield', CAST(N'1970-06-06T00:00:00.000' AS DateTime), N'2346 Old Shore Street', N'rpaddefield8n@desdev.cn')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (313, N'Helliker', CAST(N'1978-08-25T00:00:00.000' AS DateTime), N'685 Bunting Pass', N'ehelliker8o@forbes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (314, N'Fellows', CAST(N'1978-07-29T00:00:00.000' AS DateTime), N'79204 Caliangt Court', N'bfellows8p@hao123.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (315, N'Courage', CAST(N'1998-05-10T00:00:00.000' AS DateTime), N'85 Northwestern Trail', N'acourage8q@slashdot.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (316, N'Oglethorpe', CAST(N'1959-10-20T00:00:00.000' AS DateTime), N'721 Miller Street', N'ioglethorpe8r@ftc.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (317, N'Holdforth', CAST(N'1959-09-04T00:00:00.000' AS DateTime), N'514 Bluestem Circle', N'choldforth8s@fastcompany.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (318, N'MacNeely', CAST(N'1991-05-05T00:00:00.000' AS DateTime), N'6192 Doe Crossing Junction', N'lmacneely8t@adobe.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (319, N'McVane', CAST(N'2000-01-04T00:00:00.000' AS DateTime), N'1 Nelson Road', N'kmcvane8u@twitter.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (320, N'Osgodby', CAST(N'1997-01-08T00:00:00.000' AS DateTime), N'1897 Dapin Way', N'kosgodby8v@360.cn')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (321, N'Ickovici', CAST(N'1978-08-11T00:00:00.000' AS DateTime), N'98092 Fisk Hill', N'aickovici8w@multiply.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (322, N'Locker', CAST(N'1953-12-31T00:00:00.000' AS DateTime), N'0 Thierer Park', N'nlocker8x@redcross.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (323, N'Raynor', CAST(N'1960-12-05T00:00:00.000' AS DateTime), N'27825 Artisan Avenue', N'sraynor8y@ucla.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (324, N'Birmingham', CAST(N'1985-09-08T00:00:00.000' AS DateTime), N'02560 Center Point', N'vbirmingham8z@tamu.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (325, N'Sweetlove', CAST(N'1980-12-28T00:00:00.000' AS DateTime), N'0734 International Parkway', N'csweetlove90@vk.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (326, N'Valadez', CAST(N'1976-12-04T00:00:00.000' AS DateTime), N'10222 Atwood Avenue', N'vvaladez91@w3.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (327, N'Killik', CAST(N'1984-07-13T00:00:00.000' AS DateTime), N'20 Spaight Center', N'akillik92@ning.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (328, N'Frosdick', CAST(N'1953-01-03T00:00:00.000' AS DateTime), N'409 Macpherson Junction', N'gfrosdick93@blog.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (329, N'Kilfoyle', CAST(N'1982-03-26T00:00:00.000' AS DateTime), N'48 Cambridge Trail', N'dkilfoyle94@blogspot.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (330, N'Tindall', CAST(N'1995-04-19T00:00:00.000' AS DateTime), N'4743 Moland Crossing', N'ctindall95@noaa.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (331, N'Closs', CAST(N'1954-01-02T00:00:00.000' AS DateTime), N'5 Warrior Place', N'kcloss96@bizjournals.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (332, N'Speenden', CAST(N'1980-05-01T00:00:00.000' AS DateTime), N'35642 Forest Road', N'aspeenden97@furl.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (333, N'Simonini', CAST(N'1987-03-08T00:00:00.000' AS DateTime), N'5 Rieder Junction', N'lsimonini98@ovh.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (334, N'Daynter', CAST(N'1984-12-06T00:00:00.000' AS DateTime), N'842 Golf View Point', N'kdaynter99@list-manage.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (335, N'Stallworthy', CAST(N'1983-03-01T00:00:00.000' AS DateTime), N'3183 Fairfield Center', N'cstallworthy9a@who.int')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (336, N'Squier', CAST(N'1989-05-10T00:00:00.000' AS DateTime), N'552 Browning Lane', N'nsquier9b@blogspot.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (337, N'Krienke', CAST(N'1972-03-03T00:00:00.000' AS DateTime), N'79013 Columbus Way', N'akrienke9c@surveymonkey.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (338, N'Cockayme', CAST(N'1989-02-02T00:00:00.000' AS DateTime), N'1 Vahlen Avenue', N'scockayme9d@indiegogo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (339, N'Codeman', CAST(N'1979-08-30T00:00:00.000' AS DateTime), N'6 Havey Pass', N'icodeman9e@sphinn.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (340, N'Frankel', CAST(N'1955-02-11T00:00:00.000' AS DateTime), N'3170 Armistice Court', N'dfrankel9f@cnet.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (341, N'Hacker', CAST(N'1983-12-09T00:00:00.000' AS DateTime), N'4319 Larry Hill', N'rhacker9g@youtu.be')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (342, N'Soutar', CAST(N'1995-09-06T00:00:00.000' AS DateTime), N'06 Darwin Trail', N'jsoutar9h@list-manage.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (343, N'Guilleton', CAST(N'1959-10-17T00:00:00.000' AS DateTime), N'7 Gateway Place', N'rguilleton9i@paginegialle.it')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (344, N'McHan', CAST(N'1962-06-17T00:00:00.000' AS DateTime), N'93 Carberry Place', N'rmchan9j@webeden.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (345, N'Le feaver', CAST(N'1982-10-04T00:00:00.000' AS DateTime), N'0 Rockefeller Court', N'llefeaver9k@arizona.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (346, N'Katte', CAST(N'1986-03-11T00:00:00.000' AS DateTime), N'4862 Lake View Trail', N'skatte9l@home.pl')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (347, N'Plumb', CAST(N'1985-04-28T00:00:00.000' AS DateTime), N'236 Hooker Park', N'tplumb9m@accuweather.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (348, N'Capstick', CAST(N'1976-07-12T00:00:00.000' AS DateTime), N'02368 Buena Vista Center', N'acapstick9n@nhs.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (349, N'Donhardt', CAST(N'1968-01-23T00:00:00.000' AS DateTime), N'73 Milwaukee Court', N'ndonhardt9o@live.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (350, N'Mensler', CAST(N'1958-08-29T00:00:00.000' AS DateTime), N'9 Logan Lane', N'gmensler9p@ucoz.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (351, N'Crewdson', CAST(N'1988-02-01T00:00:00.000' AS DateTime), N'12864 Trailsway Alley', N'ccrewdson9q@chron.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (352, N'Dark', CAST(N'1989-07-04T00:00:00.000' AS DateTime), N'34 Katie Hill', N'adark9r@gmpg.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (353, N'De Laci', CAST(N'1960-08-08T00:00:00.000' AS DateTime), N'16 Cordelia Circle', N'adelaci9s@hc360.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (354, N'Munro', CAST(N'1980-12-01T00:00:00.000' AS DateTime), N'202 Oak Hill', N'cmunro9t@auda.org.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (355, N'Raittie', CAST(N'1964-08-09T00:00:00.000' AS DateTime), N'4 Harbort Junction', N'craittie9u@aboutads.info')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (356, N'Whitton', CAST(N'1965-04-28T00:00:00.000' AS DateTime), N'65525 High Crossing Alley', N'awhitton9v@chron.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (357, N'Bignall', CAST(N'1976-02-01T00:00:00.000' AS DateTime), N'4 Farmco Hill', N'mbignall9w@youtube.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (358, N'Meneyer', CAST(N'1996-03-03T00:00:00.000' AS DateTime), N'84855 Florence Terrace', N'smeneyer9x@answers.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (359, N'Cockrell', CAST(N'1970-06-12T00:00:00.000' AS DateTime), N'05312 Caliangt Circle', N'bcockrell9y@yahoo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (360, N'Dorin', CAST(N'1985-04-01T00:00:00.000' AS DateTime), N'1 Bunting Avenue', N'ldorin9z@amazon.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (361, N'Osan', CAST(N'1965-11-10T00:00:00.000' AS DateTime), N'60371 Mosinee Park', N'rosana0@buzzfeed.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (362, N'Maywood', CAST(N'1987-04-01T00:00:00.000' AS DateTime), N'3 Butternut Pass', N'emaywooda1@123-reg.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (363, N'Baudinot', CAST(N'1966-06-04T00:00:00.000' AS DateTime), N'8 Lake View Trail', N'sbaudinota2@chicagotribune.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (364, N'Runnett', CAST(N'1999-07-04T00:00:00.000' AS DateTime), N'777 Del Sol Terrace', N'arunnetta3@webmd.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (365, N'Tidd', CAST(N'2000-03-26T00:00:00.000' AS DateTime), N'69081 Burning Wood Street', N'dtidda4@netscape.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (366, N'Mate', CAST(N'1955-03-25T00:00:00.000' AS DateTime), N'78619 Russell Point', N'vmatea5@alibaba.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (367, N'Hobden', CAST(N'1958-10-09T00:00:00.000' AS DateTime), N'861 Stang Crossing', N'ghobdena6@sciencedirect.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (368, N'Dacombe', CAST(N'1976-04-26T00:00:00.000' AS DateTime), N'4293 Clove Drive', N'udacombea7@jugem.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (369, N'Bruinsma', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'5158 Carioca Court', N'nbruinsmaa8@sourceforge.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (370, N'Tungay', CAST(N'1971-05-17T00:00:00.000' AS DateTime), N'819 Warrior Parkway', N'ttungaya9@fda.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (371, N'MacSherry', CAST(N'1975-02-09T00:00:00.000' AS DateTime), N'1 Ohio Road', N'pmacsherryaa@jigsy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (372, N'Ancliffe', CAST(N'1956-04-01T00:00:00.000' AS DateTime), N'64787 Saint Paul Hill', N'oancliffeab@theatlantic.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (373, N'Pemberton', CAST(N'1962-07-12T00:00:00.000' AS DateTime), N'65 Waubesa Parkway', N'gpembertonac@sohu.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (374, N'Wilcocke', CAST(N'1955-04-24T00:00:00.000' AS DateTime), N'5530 Orin Junction', N'kwilcockead@eepurl.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (375, N'Bernhardsson', CAST(N'1985-03-01T00:00:00.000' AS DateTime), N'91792 Lawn Road', N'jbernhardssonae@gravatar.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (376, N'Klaes', CAST(N'1996-04-05T00:00:00.000' AS DateTime), N'31558 Monument Parkway', N'lklaesaf@nba.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (377, N'Creffield', CAST(N'1984-05-30T00:00:00.000' AS DateTime), N'79738 Kim Center', N'screffieldag@cam.ac.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (378, N'Dei', CAST(N'1965-04-09T00:00:00.000' AS DateTime), N'1919 Surrey Parkway', N'sdeiah@businessinsider.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (379, N'Mullally', CAST(N'1982-11-04T00:00:00.000' AS DateTime), N'9 Del Sol Way', N'vmullallyai@arizona.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (380, N'Laughtisse', CAST(N'1981-02-15T00:00:00.000' AS DateTime), N'9468 Bluestem Hill', N'glaughtisseaj@newyorker.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (381, N'Gordge', CAST(N'1958-06-10T00:00:00.000' AS DateTime), N'71122 Stang Drive', N'tgordgeak@auda.org.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (382, N'Osban', CAST(N'1998-01-12T00:00:00.000' AS DateTime), N'6224 Elmside Point', N'gosbanal@mapy.cz')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (383, N'Carlan', CAST(N'1964-10-04T00:00:00.000' AS DateTime), N'2 Hallows Place', N'kcarlanam@smh.com.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (384, N'Hatt', CAST(N'1963-02-04T00:00:00.000' AS DateTime), N'24714 Forster Trail', N'rhattan@walmart.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (385, N'MacPhaden', CAST(N'1959-01-02T00:00:00.000' AS DateTime), N'6 Briar Crest Place', N'dmacphadenao@altervista.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (386, N'Verne', CAST(N'1957-04-12T00:00:00.000' AS DateTime), N'99 Del Mar Hill', N'sverneap@desdev.cn')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (387, N'Mowatt', CAST(N'1995-03-13T00:00:00.000' AS DateTime), N'57 Duke Drive', N'dmowattaq@webnode.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (388, N'Carlon', CAST(N'1973-04-03T00:00:00.000' AS DateTime), N'31 Fairview Hill', N'vcarlonar@yale.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (389, N'Greatham', CAST(N'1982-11-14T00:00:00.000' AS DateTime), N'8 Thompson Crossing', N'ggreathamas@wordpress.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (390, N'Portigall', CAST(N'1983-09-12T00:00:00.000' AS DateTime), N'044 3rd Plaza', N'dportigallat@webnode.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (391, N'Loxly', CAST(N'1957-04-08T00:00:00.000' AS DateTime), N'250 Prentice Circle', N'bloxlyau@purevolume.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (392, N'Hamberston', CAST(N'1985-12-07T00:00:00.000' AS DateTime), N'6 Oakridge Lane', N'fhamberstonav@youtube.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (393, N'Dainton', CAST(N'1969-06-28T00:00:00.000' AS DateTime), N'2146 Petterle Park', N'ddaintonaw@mit.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (394, N'Pickthorne', CAST(N'1972-10-01T00:00:00.000' AS DateTime), N'1905 Colorado Road', N'npickthorneax@tuttocitta.it')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (395, N'Jehu', CAST(N'1968-08-12T00:00:00.000' AS DateTime), N'2532 Crest Line Way', N'kjehuay@techcrunch.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (396, N'Bulmer', CAST(N'1990-06-20T00:00:00.000' AS DateTime), N'285 Dayton Pass', N'sbulmeraz@booking.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (397, N'Playfair', CAST(N'1999-09-17T00:00:00.000' AS DateTime), N'3 Norway Maple Terrace', N'aplayfairb0@over-blog.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (398, N'De''Vere - Hunt', CAST(N'1973-01-05T00:00:00.000' AS DateTime), N'711 1st Terrace', N'mdeverehuntb1@twitter.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (399, N'Oldmeadow', CAST(N'1987-10-22T00:00:00.000' AS DateTime), N'79078 Dovetail Avenue', N'boldmeadowb2@prweb.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (400, N'Hanbidge', CAST(N'1955-05-07T00:00:00.000' AS DateTime), N'56 Briar Crest Street', N'ahanbidgeb3@noaa.gov')
GO
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (401, N'Meads', CAST(N'1965-09-02T00:00:00.000' AS DateTime), N'58172 Butternut Street', N'jmeadsb4@wisc.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (402, N'Youson', CAST(N'1979-07-02T00:00:00.000' AS DateTime), N'92 Westend Trail', N'kyousonb5@amazon.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (403, N'Chatwood', CAST(N'1975-11-15T00:00:00.000' AS DateTime), N'37222 Everett Court', N'jchatwoodb6@slate.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (404, N'Leyzell', CAST(N'1950-03-10T00:00:00.000' AS DateTime), N'828 Redwing Street', N'mleyzellb7@nytimes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (405, N'Graine', CAST(N'1992-09-08T00:00:00.000' AS DateTime), N'214 Lyons Junction', N'mgraineb8@meetup.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (406, N'McFarlane', CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'12 Spaight Plaza', N'gmcfarlaneb9@bigcartel.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (407, N'Bettles', CAST(N'1957-10-18T00:00:00.000' AS DateTime), N'426 Tennyson Park', N'kbettlesba@webs.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (408, N'Butland', CAST(N'1968-08-04T00:00:00.000' AS DateTime), N'5121 Pennsylvania Way', N'jbutlandbb@bbc.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (409, N'Heintzsch', CAST(N'1962-07-04T00:00:00.000' AS DateTime), N'6083 Wayridge Park', N'pheintzschbc@ted.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (410, N'Kingcott', CAST(N'1972-11-01T00:00:00.000' AS DateTime), N'8 Crescent Oaks Point', N'hkingcottbd@xing.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (411, N'Shortt', CAST(N'1979-01-02T00:00:00.000' AS DateTime), N'71847 Hanover Way', N'cshorttbe@seesaa.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (412, N'Callway', CAST(N'1986-12-02T00:00:00.000' AS DateTime), N'4 Ridge Oak Parkway', N'ccallwaybf@fastcompany.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (413, N'Jansson', CAST(N'1972-10-19T00:00:00.000' AS DateTime), N'60 Stuart Way', N'ajanssonbg@hc360.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (414, N'Dolby', CAST(N'1966-02-02T00:00:00.000' AS DateTime), N'20 Canary Parkway', N'gdolbybh@cnn.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (415, N'Sunnucks', CAST(N'1970-09-02T00:00:00.000' AS DateTime), N'794 Iowa Plaza', N'csunnucksbi@washingtonpost.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (416, N'Sabathe', CAST(N'1956-06-02T00:00:00.000' AS DateTime), N'2 Debs Parkway', N'wsabathebj@mail.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (417, N'Akroyd', CAST(N'1953-03-23T00:00:00.000' AS DateTime), N'30921 Hazelcrest Point', N'nakroydbk@usgs.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (418, N'Goulstone', CAST(N'1980-08-01T00:00:00.000' AS DateTime), N'062 Amoth Court', N'igoulstonebl@walmart.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (419, N'Blincowe', CAST(N'1996-09-04T00:00:00.000' AS DateTime), N'2435 Cordelia Court', N'cblincowebm@wiley.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (420, N'Stolberger', CAST(N'1977-05-29T00:00:00.000' AS DateTime), N'556 Mayfield Park', N'lstolbergerbn@t-online.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (421, N'Streather', CAST(N'1998-08-31T00:00:00.000' AS DateTime), N'92910 Oxford Alley', N'lstreatherbo@alexa.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (422, N'Bugs', CAST(N'1971-07-02T00:00:00.000' AS DateTime), N'52206 Boyd Center', N'bbugsbp@purevolume.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (423, N'Clerk', CAST(N'1989-06-19T00:00:00.000' AS DateTime), N'945 Cardinal Circle', N'mclerkbq@cbsnews.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (424, N'Repper', CAST(N'1986-08-17T00:00:00.000' AS DateTime), N'5 Reindahl Parkway', N'frepperbr@reference.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (425, N'Guillerman', CAST(N'1979-11-09T00:00:00.000' AS DateTime), N'9183 Mandrake Place', N'bguillermanbs@sourceforge.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (426, N'Canellas', CAST(N'1988-07-02T00:00:00.000' AS DateTime), N'79891 Nevada Park', N'gcanellasbt@mtv.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (427, N'Bartelli', CAST(N'1984-03-31T00:00:00.000' AS DateTime), N'9 Corben Plaza', N'zbartellibu@twitter.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (428, N'Elphinston', CAST(N'1987-10-28T00:00:00.000' AS DateTime), N'098 Maple Wood Pass', N'kelphinstonbv@virginia.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (429, N'Siene', CAST(N'1975-09-10T00:00:00.000' AS DateTime), N'56778 Cascade Drive', N'bsienebw@edublogs.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (430, N'Marflitt', CAST(N'1993-01-15T00:00:00.000' AS DateTime), N'37692 Magdeline Plaza', N'mmarflittbx@flickr.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (431, N'Sandeland', CAST(N'1985-01-18T00:00:00.000' AS DateTime), N'51 Eggendart Point', N'vsandelandby@vistaprint.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (432, N'Cage', CAST(N'1953-01-11T00:00:00.000' AS DateTime), N'415 Jenifer Circle', N'jcagebz@tuttocitta.it')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (433, N'Goranov', CAST(N'1964-02-05T00:00:00.000' AS DateTime), N'75524 Hanover Pass', N'rgoranovc0@symantec.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (434, N'Antcliffe', CAST(N'1996-07-24T00:00:00.000' AS DateTime), N'37 Monterey Park', N'rantcliffec1@xinhuanet.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (435, N'Escritt', CAST(N'1982-02-03T00:00:00.000' AS DateTime), N'75 Mesta Terrace', N'gescrittc2@rakuten.co.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (436, N'Gyer', CAST(N'1960-10-10T00:00:00.000' AS DateTime), N'9 Loeprich Plaza', N'bgyerc3@ucsd.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (437, N'Lamborn', CAST(N'1995-09-14T00:00:00.000' AS DateTime), N'87 Fairfield Hill', N'alambornc4@theguardian.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (438, N'Greeveson', CAST(N'1978-06-10T00:00:00.000' AS DateTime), N'0 Anhalt Junction', N'bgreevesonc5@github.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (439, N'Krzyzowski', CAST(N'1963-10-12T00:00:00.000' AS DateTime), N'534 Jana Hill', N'tkrzyzowskic6@time.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (440, N'Koche', CAST(N'1956-12-07T00:00:00.000' AS DateTime), N'24775 Ilene Way', N'skochec7@guardian.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (441, N'Shooter', CAST(N'1985-10-11T00:00:00.000' AS DateTime), N'60 Harbort Trail', N'cshooterc8@cbslocal.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (442, N'Titterton', CAST(N'1990-07-04T00:00:00.000' AS DateTime), N'4 Scofield Way', N'htittertonc9@1und1.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (443, N'Danniel', CAST(N'1962-08-07T00:00:00.000' AS DateTime), N'01 Lakeland Way', N'adannielca@samsung.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (444, N'Juckes', CAST(N'1998-08-10T00:00:00.000' AS DateTime), N'467 Trailsway Point', N'mjuckescb@marriott.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (445, N'Caccavella', CAST(N'1957-01-06T00:00:00.000' AS DateTime), N'7471 Evergreen Alley', N'fcaccavellacc@yellowpages.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (446, N'MacGill', CAST(N'1965-01-28T00:00:00.000' AS DateTime), N'1 Prentice Point', N'kmacgillcd@dagondesign.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (447, N'Geale', CAST(N'1987-02-23T00:00:00.000' AS DateTime), N'5756 Morningstar Terrace', N'cgealece@theguardian.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (448, N'Jendrusch', CAST(N'1993-01-01T00:00:00.000' AS DateTime), N'624 Johnson Plaza', N'kjendruschcf@google.es')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (449, N'Dives', CAST(N'1963-02-07T00:00:00.000' AS DateTime), N'6 Chive Parkway', N'sdivescg@ucoz.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (450, N'Hurleston', CAST(N'1969-11-25T00:00:00.000' AS DateTime), N'4697 Linden Drive', N'hhurlestonch@earthlink.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (451, N'Cruces', CAST(N'1959-05-30T00:00:00.000' AS DateTime), N'1 Bashford Avenue', N'mcrucesci@imdb.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (452, N'Argo', CAST(N'1991-09-16T00:00:00.000' AS DateTime), N'718 Scofield Trail', N'kargocj@spiegel.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (453, N'Reaveley', CAST(N'1979-02-07T00:00:00.000' AS DateTime), N'28094 Alpine Hill', N'greaveleyck@friendfeed.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (454, N'Rewan', CAST(N'1993-04-08T00:00:00.000' AS DateTime), N'59 Merrick Road', N'crewancl@tinypic.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (455, N'Honisch', CAST(N'1956-12-05T00:00:00.000' AS DateTime), N'4620 Main Trail', N'shonischcm@eepurl.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (456, N'Weathey', CAST(N'1966-02-06T00:00:00.000' AS DateTime), N'822 Lakewood Center', N'eweatheycn@t.co')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (457, N'Treweke', CAST(N'1993-10-03T00:00:00.000' AS DateTime), N'034 Clarendon Place', N'dtrewekeco@pbs.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (458, N'MacCleod', CAST(N'1994-08-06T00:00:00.000' AS DateTime), N'0 Nancy Road', N'dmaccleodcp@w3.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (459, N'Lohde', CAST(N'1986-10-11T00:00:00.000' AS DateTime), N'69999 Golden Leaf Parkway', N'elohdecq@mozilla.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (460, N'Scrauniage', CAST(N'1993-03-08T00:00:00.000' AS DateTime), N'1 Prairieview Circle', N'cscrauniagecr@wikimedia.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (461, N'Logg', CAST(N'1965-12-07T00:00:00.000' AS DateTime), N'82 Nelson Plaza', N'cloggcs@shinystat.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (462, N'Drewet', CAST(N'1978-05-03T00:00:00.000' AS DateTime), N'8109 Ridge Oak Terrace', N'edrewetct@webnode.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (463, N'Alman', CAST(N'1968-10-21T00:00:00.000' AS DateTime), N'45420 Hallows Junction', N'balmancu@uol.com.br')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (464, N'Mattisssen', CAST(N'1960-04-05T00:00:00.000' AS DateTime), N'20 Bellgrove Avenue', N'gmattisssencv@chicagotribune.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (465, N'Filinkov', CAST(N'1974-03-17T00:00:00.000' AS DateTime), N'08 Gina Avenue', N'bfilinkovcw@hp.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (466, N'Queyos', CAST(N'1964-01-06T00:00:00.000' AS DateTime), N'6570 Elmside Plaza', N'squeyoscx@walmart.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (467, N'Farnham', CAST(N'1953-12-11T00:00:00.000' AS DateTime), N'0664 Fairfield Drive', N'bfarnhamcy@w3.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (468, N'Turle', CAST(N'1986-06-04T00:00:00.000' AS DateTime), N'132 Rusk Street', N'lturlecz@printfriendly.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (469, N'O'' Loughran', CAST(N'1994-08-09T00:00:00.000' AS DateTime), N'6839 Sage Crossing', N'goloughrand0@quantcast.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (470, N'Tesauro', CAST(N'1962-04-06T00:00:00.000' AS DateTime), N'4 Lakewood Gardens Park', N'ktesaurod1@yellowbook.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (471, N'Jowsey', CAST(N'1976-05-31T00:00:00.000' AS DateTime), N'837 Mosinee Court', N'ljowseyd2@prnewswire.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (472, N'Hayford', CAST(N'1998-11-16T00:00:00.000' AS DateTime), N'2 Randy Trail', N'vhayfordd3@geocities.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (473, N'O''Duilleain', CAST(N'1995-12-06T00:00:00.000' AS DateTime), N'84 Mayer Circle', N'moduilleaind4@yelp.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (474, N'Hartop', CAST(N'1985-02-23T00:00:00.000' AS DateTime), N'88 Texas Pass', N'khartopd5@hibu.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (475, N'Tock', CAST(N'1954-10-07T00:00:00.000' AS DateTime), N'41174 Farragut Terrace', N'btockd6@e-recht24.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (476, N'Sheppey', CAST(N'1962-07-03T00:00:00.000' AS DateTime), N'376 Pierstorff Crossing', N'csheppeyd7@woothemes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (477, N'Minchinton', CAST(N'1951-12-29T00:00:00.000' AS DateTime), N'92 Bobwhite Trail', N'kminchintond8@constantcontact.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (478, N'Schoroder', CAST(N'1968-10-21T00:00:00.000' AS DateTime), N'8 Eagan Plaza', N'bschoroderd9@statcounter.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (479, N'Jebb', CAST(N'1967-07-01T00:00:00.000' AS DateTime), N'62 Corscot Drive', N'cjebbda@yellowpages.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (480, N'Pinwell', CAST(N'1980-09-04T00:00:00.000' AS DateTime), N'16 Independence Lane', N'jpinwelldb@reddit.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (481, N'Heister', CAST(N'1987-02-04T00:00:00.000' AS DateTime), N'5076 Blaine Avenue', N'bheisterdc@usda.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (482, N'Tandy', CAST(N'1978-02-08T00:00:00.000' AS DateTime), N'26996 Walton Place', N'ctandydd@youku.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (483, N'Okenfold', CAST(N'1954-05-08T00:00:00.000' AS DateTime), N'5 New Castle Parkway', N'eokenfoldde@hc360.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (484, N'Tulloch', CAST(N'1954-08-29T00:00:00.000' AS DateTime), N'91 Cambridge Plaza', N'ctullochdf@techcrunch.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (485, N'Ruberti', CAST(N'1970-06-16T00:00:00.000' AS DateTime), N'34142 Shoshone Circle', N'lrubertidg@salon.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (486, N'Finker', CAST(N'1998-04-09T00:00:00.000' AS DateTime), N'843 Hansons Junction', N'afinkerdh@wix.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (487, N'Attock', CAST(N'1982-03-14T00:00:00.000' AS DateTime), N'3 Crowley Park', N'gattockdi@businesswire.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (488, N'Dunniom', CAST(N'1969-02-06T00:00:00.000' AS DateTime), N'116 Monument Road', N'fdunniomdj@nps.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (489, N'Okie', CAST(N'1967-07-17T00:00:00.000' AS DateTime), N'83 Arapahoe Street', N'pokiedk@google.it')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (490, N'Chittim', CAST(N'1999-12-31T00:00:00.000' AS DateTime), N'94 Sachtjen Point', N'rchittimdl@creativecommons.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (491, N'Pioli', CAST(N'1985-01-05T00:00:00.000' AS DateTime), N'52 John Wall Parkway', N'epiolidm@skype.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (492, N'Jacklin', CAST(N'1963-07-01T00:00:00.000' AS DateTime), N'9 7th Hill', N'rjacklindn@rambler.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (493, N'Tincey', CAST(N'1974-07-09T00:00:00.000' AS DateTime), N'00 Carberry Street', N'dtinceydo@csmonitor.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (494, N'Ragsdall', CAST(N'1976-07-18T00:00:00.000' AS DateTime), N'74738 Mccormick Street', N'wragsdalldp@cornell.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (495, N'Mattek', CAST(N'1966-06-07T00:00:00.000' AS DateTime), N'674 Reinke Crossing', N'tmattekdq@mapquest.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (496, N'Bruyntjes', CAST(N'1956-01-12T00:00:00.000' AS DateTime), N'43 Fair Oaks Park', N'sbruyntjesdr@arstechnica.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (497, N'Garrish', CAST(N'1994-07-12T00:00:00.000' AS DateTime), N'51 Dunning Point', N'kgarrishds@ed.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (498, N'Millichap', CAST(N'1978-12-07T00:00:00.000' AS DateTime), N'6 Dennis Pass', N'tmillichapdt@engadget.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (499, N'Norsister', CAST(N'1953-09-12T00:00:00.000' AS DateTime), N'79 Tony Point', N'mnorsisterdu@odnoklassniki.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (500, N'Phinnessy', CAST(N'1957-11-09T00:00:00.000' AS DateTime), N'0 Holmberg Center', N'lphinnessydv@aol.com')
GO
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (501, N'Blitz', CAST(N'1979-09-21T00:00:00.000' AS DateTime), N'4 Anniversary Circle', N'pblitzdw@apple.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (502, N'Frill', CAST(N'1952-04-22T00:00:00.000' AS DateTime), N'0 1st Court', N'bfrilldx@dell.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (503, N'Milan', CAST(N'1963-12-01T00:00:00.000' AS DateTime), N'8578 Marquette Plaza', N'bmilandy@loc.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (504, N'Ahrens', CAST(N'1977-10-29T00:00:00.000' AS DateTime), N'9 Morningstar Street', N'dahrensdz@amazon.co.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (505, N'Synke', CAST(N'1967-10-03T00:00:00.000' AS DateTime), N'7854 Grim Lane', N'esynkee0@theglobeandmail.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (506, N'Celiz', CAST(N'1958-09-28T00:00:00.000' AS DateTime), N'4 Canary Lane', N'scelize1@drupal.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (507, N'Glave', CAST(N'1974-12-27T00:00:00.000' AS DateTime), N'87000 Straubel Circle', N'vglavee2@wufoo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (508, N'Grahl', CAST(N'1969-10-07T00:00:00.000' AS DateTime), N'907 Orin Plaza', N'egrahle3@paginegialle.it')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (509, N'Shearmer', CAST(N'1974-09-03T00:00:00.000' AS DateTime), N'783 Chinook Place', N'mshearmere4@microsoft.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (510, N'Jerg', CAST(N'1956-04-06T00:00:00.000' AS DateTime), N'190 Packers Alley', N'mjerge5@netvibes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (511, N'Dumbrill', CAST(N'1986-01-27T00:00:00.000' AS DateTime), N'08473 Bonner Crossing', N'qdumbrille6@hugedomains.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (512, N'Lindsay', CAST(N'1953-11-03T00:00:00.000' AS DateTime), N'5193 Schmedeman Junction', N'flindsaye7@wisc.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (513, N'Mellers', CAST(N'1953-04-09T00:00:00.000' AS DateTime), N'150 Granby Park', N'vmellerse8@wired.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (514, N'Guage', CAST(N'1967-03-01T00:00:00.000' AS DateTime), N'87424 Esker Hill', N'vguagee9@tiny.cc')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (515, N'Sannes', CAST(N'1955-08-05T00:00:00.000' AS DateTime), N'40 Kingsford Street', N'rsannesea@usda.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (516, N'Tarpey', CAST(N'1957-07-25T00:00:00.000' AS DateTime), N'61375 Lawn Hill', N'ctarpeyeb@umich.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (517, N'Feild', CAST(N'1980-07-02T00:00:00.000' AS DateTime), N'44482 Daystar Court', N'afeildec@51.la')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (518, N'Lissaman', CAST(N'1960-04-10T00:00:00.000' AS DateTime), N'299 Mallory Plaza', N'tlissamaned@ning.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (519, N'Knell', CAST(N'1981-09-09T00:00:00.000' AS DateTime), N'4 Maple Point', N'hknellee@paypal.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (520, N'Botterman', CAST(N'1998-02-27T00:00:00.000' AS DateTime), N'2 Tennyson Point', N'sbottermanef@independent.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (521, N'Tomkins', CAST(N'1985-05-26T00:00:00.000' AS DateTime), N'7381 Sunbrook Trail', N'jtomkinseg@aol.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (522, N'Conklin', CAST(N'1970-10-23T00:00:00.000' AS DateTime), N'376 Lien Pass', N'lconklineh@ning.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (523, N'Ferneley', CAST(N'1956-04-05T00:00:00.000' AS DateTime), N'78 Erie Circle', N'kferneleyei@gnu.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (524, N'Chastney', CAST(N'1965-06-08T00:00:00.000' AS DateTime), N'39 Waubesa Parkway', N'achastneyej@mail.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (525, N'Szantho', CAST(N'1961-01-18T00:00:00.000' AS DateTime), N'53076 2nd Way', N'oszanthoek@indiatimes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (526, N'Rosenau', CAST(N'1958-12-04T00:00:00.000' AS DateTime), N'1903 Sauthoff Pass', N'crosenauel@de.vu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (527, N'Mushet', CAST(N'1980-06-05T00:00:00.000' AS DateTime), N'67 Thackeray Alley', N'gmushetem@weather.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (528, N'Leverington', CAST(N'1958-05-12T00:00:00.000' AS DateTime), N'40 Monterey Court', N'wleveringtonen@berkeley.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (529, N'Jarvie', CAST(N'1951-10-26T00:00:00.000' AS DateTime), N'25 Tony Street', N'fjarvieeo@google.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (530, N'Giannini', CAST(N'1978-09-04T00:00:00.000' AS DateTime), N'765 Village Junction', N'ggianniniep@upenn.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (531, N'MacNulty', CAST(N'1963-01-02T00:00:00.000' AS DateTime), N'8639 Moland Junction', N'tmacnultyeq@fotki.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (532, N'Cristofaro', CAST(N'1991-05-08T00:00:00.000' AS DateTime), N'30656 Artisan Junction', N'hcristofaroer@epa.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (533, N'Abadam', CAST(N'1958-08-07T00:00:00.000' AS DateTime), N'2 Golf Trail', N'jabadames@senate.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (534, N'Andrioni', CAST(N'1953-02-06T00:00:00.000' AS DateTime), N'72 Cherokee Drive', N'landrioniet@netlog.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (535, N'Staker', CAST(N'1985-02-22T00:00:00.000' AS DateTime), N'30 Aberg Center', N'bstakereu@g.co')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (536, N'Farlow', CAST(N'1973-06-07T00:00:00.000' AS DateTime), N'8 Melrose Drive', N'cfarlowev@unicef.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (537, N'Arnecke', CAST(N'1999-01-11T00:00:00.000' AS DateTime), N'15 Transport Drive', N'larneckeew@wikimedia.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (538, N'Godney', CAST(N'1982-11-29T00:00:00.000' AS DateTime), N'6 Comanche Park', N'vgodneyex@4shared.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (539, N'Sapir', CAST(N'1953-02-05T00:00:00.000' AS DateTime), N'275 Forest Dale Center', N'isapirey@freewebs.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (540, N'Koles', CAST(N'1994-06-04T00:00:00.000' AS DateTime), N'156 Southridge Trail', N'kkolesez@bbc.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (541, N'Galtone', CAST(N'1970-06-24T00:00:00.000' AS DateTime), N'58 Northfield Crossing', N'cgaltonef0@salon.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (542, N'Jandera', CAST(N'1993-08-01T00:00:00.000' AS DateTime), N'5 5th Pass', N'fjanderaf1@simplemachines.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (543, N'Gayne', CAST(N'1973-06-20T00:00:00.000' AS DateTime), N'2066 Sheridan Hill', N'agaynef2@addthis.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (544, N'Wardell', CAST(N'1976-08-02T00:00:00.000' AS DateTime), N'3230 Mifflin Lane', N'pwardellf3@eepurl.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (545, N'Simunek', CAST(N'1994-05-29T00:00:00.000' AS DateTime), N'7150 Miller Street', N'csimunekf4@twitpic.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (546, N'Kyngdon', CAST(N'1996-12-11T00:00:00.000' AS DateTime), N'05 Steensland Place', N'jkyngdonf5@eventbrite.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (547, N'Chiplen', CAST(N'1950-10-29T00:00:00.000' AS DateTime), N'9718 Browning Point', N'dchiplenf6@sourceforge.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (548, N'Gerbl', CAST(N'1987-09-01T00:00:00.000' AS DateTime), N'2 Moland Road', N'fgerblf7@disqus.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (549, N'Zammitt', CAST(N'1964-11-07T00:00:00.000' AS DateTime), N'8 Schmedeman Drive', N'mzammittf8@abc.net.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (550, N'Hache', CAST(N'1968-07-20T00:00:00.000' AS DateTime), N'072 Hansons Hill', N'ahachef9@wikia.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (551, N'De Beauchamp', CAST(N'1998-12-10T00:00:00.000' AS DateTime), N'1220 Bellgrove Trail', N'bdebeauchampfa@msn.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (552, N'Feaveer', CAST(N'1981-02-22T00:00:00.000' AS DateTime), N'45 Cottonwood Hill', N'bfeaveerfb@tuttocitta.it')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (553, N'Hyams', CAST(N'1998-11-07T00:00:00.000' AS DateTime), N'89 Artisan Terrace', N'khyamsfc@msn.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (554, N'MacDirmid', CAST(N'1979-10-13T00:00:00.000' AS DateTime), N'37947 8th Park', N'bmacdirmidfd@earthlink.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (555, N'Hradsky', CAST(N'1982-11-15T00:00:00.000' AS DateTime), N'66 Michigan Place', N'chradskyfe@go.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (556, N'Fewless', CAST(N'1989-12-07T00:00:00.000' AS DateTime), N'86943 Park Meadow Center', N'lfewlessff@dropbox.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (557, N'Kytter', CAST(N'1958-01-03T00:00:00.000' AS DateTime), N'87 Dawn Hill', N'lkytterfg@eepurl.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (558, N'Lipp', CAST(N'1990-05-24T00:00:00.000' AS DateTime), N'028 Autumn Leaf Center', N'klippfh@bigcartel.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (559, N'Maddicks', CAST(N'1977-09-02T00:00:00.000' AS DateTime), N'44369 Butterfield Terrace', N'dmaddicksfi@nba.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (560, N'Boote', CAST(N'1950-08-18T00:00:00.000' AS DateTime), N'0 Upham Circle', N'cbootefj@hp.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (561, N'Gauvain', CAST(N'1983-03-04T00:00:00.000' AS DateTime), N'0 Fisk Street', N'jgauvainfk@google.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (562, N'Milbank', CAST(N'1966-09-03T00:00:00.000' AS DateTime), N'387 Utah Road', N'kmilbankfl@addtoany.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (563, N'Danilin', CAST(N'1971-07-22T00:00:00.000' AS DateTime), N'6765 Village Green Park', N'gdanilinfm@wikipedia.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (564, N'Mealiffe', CAST(N'1969-01-21T00:00:00.000' AS DateTime), N'997 Alpine Hill', N'bmealiffefn@uol.com.br')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (565, N'Edlin', CAST(N'1972-10-22T00:00:00.000' AS DateTime), N'728 Fremont Hill', N'sedlinfo@google.nl')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (566, N'Jansky', CAST(N'1955-09-27T00:00:00.000' AS DateTime), N'74950 Messerschmidt Lane', N'sjanskyfp@google.co.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (567, N'Capenor', CAST(N'1957-09-07T00:00:00.000' AS DateTime), N'56 Nancy Circle', N'kcapenorfq@ca.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (568, N'Bodker', CAST(N'1961-12-25T00:00:00.000' AS DateTime), N'1504 Transport Park', N'rbodkerfr@nydailynews.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (569, N'Silkston', CAST(N'1994-03-01T00:00:00.000' AS DateTime), N'074 Brown Road', N'ksilkstonfs@odnoklassniki.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (570, N'Baline', CAST(N'1980-04-05T00:00:00.000' AS DateTime), N'879 Graedel Street', N'cbalineft@free.fr')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (571, N'Vigours', CAST(N'1999-09-12T00:00:00.000' AS DateTime), N'5904 Scoville Road', N'cvigoursfu@reuters.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (572, N'Binion', CAST(N'1959-08-13T00:00:00.000' AS DateTime), N'804 Merry Avenue', N'gbinionfv@istockphoto.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (573, N'Levitt', CAST(N'1976-01-18T00:00:00.000' AS DateTime), N'537 Waubesa Trail', N'alevittfw@w3.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (574, N'Hasted', CAST(N'1987-05-08T00:00:00.000' AS DateTime), N'97 Westend Way', N'ohastedfx@wikispaces.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (575, N'Rielly', CAST(N'1979-12-05T00:00:00.000' AS DateTime), N'18258 Corscot Pass', N'friellyfy@unicef.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (576, N'Sandbatch', CAST(N'1996-02-07T00:00:00.000' AS DateTime), N'68 Morrow Park', N'ssandbatchfz@loc.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (577, N'Larimer', CAST(N'1954-07-22T00:00:00.000' AS DateTime), N'98 Iowa Point', N'flarimerg0@ucoz.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (578, N'Sandells', CAST(N'1987-05-07T00:00:00.000' AS DateTime), N'7225 Ridgeway Way', N'ssandellsg1@soup.io')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (579, N'Mapledorum', CAST(N'1986-06-01T00:00:00.000' AS DateTime), N'1 Randy Street', N'amapledorumg2@loc.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (580, N'Axby', CAST(N'1973-07-23T00:00:00.000' AS DateTime), N'5 Artisan Lane', N'paxbyg3@yellowbook.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (581, N'Mace', CAST(N'1984-05-04T00:00:00.000' AS DateTime), N'901 Arkansas Circle', N'dmaceg4@sogou.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (582, N'Eyer', CAST(N'1993-11-01T00:00:00.000' AS DateTime), N'881 Talisman Alley', N'neyerg5@about.me')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (583, N'Nibley', CAST(N'1978-07-10T00:00:00.000' AS DateTime), N'67 Bartelt Alley', N'cnibleyg6@who.int')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (584, N'Curdell', CAST(N'1955-01-28T00:00:00.000' AS DateTime), N'7616 Spaight Hill', N'dcurdellg7@trellian.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (585, N'Frances', CAST(N'1971-11-12T00:00:00.000' AS DateTime), N'9093 Artisan Point', N'kfrancesg8@nifty.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (586, N'Isherwood', CAST(N'1990-07-30T00:00:00.000' AS DateTime), N'0438 American Ash Point', N'sisherwoodg9@ocn.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (587, N'Skeen', CAST(N'1959-08-05T00:00:00.000' AS DateTime), N'12987 Vahlen Point', N'oskeenga@newyorker.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (588, N'Willishire', CAST(N'1955-01-31T00:00:00.000' AS DateTime), N'13455 Esker Way', N'gwillishiregb@java.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (589, N'Duffield', CAST(N'1967-07-16T00:00:00.000' AS DateTime), N'313 Pawling Terrace', N'lduffieldgc@chronoengine.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (590, N'Scargle', CAST(N'1972-05-06T00:00:00.000' AS DateTime), N'5918 Utah Plaza', N'bscarglegd@oracle.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (591, N'Tuffley', CAST(N'1969-04-10T00:00:00.000' AS DateTime), N'83 Maywood Street', N'ctuffleyge@clickbank.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (592, N'Pidon', CAST(N'1985-09-05T00:00:00.000' AS DateTime), N'08 Maple Hill', N'hpidongf@bing.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (593, N'Aucoate', CAST(N'1993-01-15T00:00:00.000' AS DateTime), N'7289 West Way', N'taucoategg@moonfruit.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (594, N'Pracy', CAST(N'1954-06-12T00:00:00.000' AS DateTime), N'9 Michigan Center', N'bpracygh@hibu.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (595, N'Tuerena', CAST(N'1998-01-07T00:00:00.000' AS DateTime), N'573 Pawling Center', N'ktuerenagi@sogou.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (596, N'Bodesson', CAST(N'1980-11-28T00:00:00.000' AS DateTime), N'0297 Starling Plaza', N'dbodessongj@cpanel.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (597, N'Weine', CAST(N'1990-03-07T00:00:00.000' AS DateTime), N'372 Washington Park', N'dweinegk@wiley.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (598, N'Ohrtmann', CAST(N'1962-08-02T00:00:00.000' AS DateTime), N'7252 Drewry Hill', N'wohrtmanngl@multiply.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (599, N'Wheelan', CAST(N'1952-10-17T00:00:00.000' AS DateTime), N'516 International Street', N'gwheelangm@opensource.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (600, N'Mault', CAST(N'1970-03-12T00:00:00.000' AS DateTime), N'2 Graceland Alley', N'bmaultgn@msu.edu')
GO
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (601, N'Melbourn', CAST(N'1967-12-08T00:00:00.000' AS DateTime), N'788 Colorado Center', N'pmelbourngo@dyndns.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (602, N'Thiem', CAST(N'1981-01-23T00:00:00.000' AS DateTime), N'11703 Northfield Place', N'hthiemgp@house.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (603, N'Skpsey', CAST(N'1960-11-19T00:00:00.000' AS DateTime), N'130 Manitowish Plaza', N'fskpseygq@wsj.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (604, N'Haye', CAST(N'1987-02-10T00:00:00.000' AS DateTime), N'9 Milwaukee Crossing', N'dhayegr@scribd.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (605, N'Ellison', CAST(N'1968-09-26T00:00:00.000' AS DateTime), N'8 Schlimgen Court', N'nellisongs@mysql.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (606, N'Yanuk', CAST(N'1972-05-17T00:00:00.000' AS DateTime), N'212 Crescent Oaks Drive', N'ryanukgt@dailymail.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (607, N'Trussman', CAST(N'1960-10-27T00:00:00.000' AS DateTime), N'15260 Clemons Place', N'atrussmangu@globo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (608, N'Spilling', CAST(N'1953-05-24T00:00:00.000' AS DateTime), N'696 Fairfield Park', N'bspillinggv@state.tx.us')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (609, N'Ast', CAST(N'1983-03-09T00:00:00.000' AS DateTime), N'04 Mayer Avenue', N'mastgw@edublogs.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (610, N'Curzon', CAST(N'1952-04-09T00:00:00.000' AS DateTime), N'90 Memorial Avenue', N'ncurzongx@oakley.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (611, N'De Mattia', CAST(N'1990-07-01T00:00:00.000' AS DateTime), N'23842 Amoth Place', N'idemattiagy@ameblo.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (612, N'McGreary', CAST(N'1957-12-05T00:00:00.000' AS DateTime), N'696 Lien Crossing', N'nmcgrearygz@cargocollective.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (613, N'Emett', CAST(N'1983-04-05T00:00:00.000' AS DateTime), N'2072 Debs Place', N'memetth0@usda.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (614, N'Beeton', CAST(N'1973-03-08T00:00:00.000' AS DateTime), N'10 Pond Pass', N'fbeetonh1@illinois.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (615, N'Ianniello', CAST(N'1969-01-04T00:00:00.000' AS DateTime), N'98157 Sachtjen Junction', N'piannielloh2@huffingtonpost.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (616, N'Spirritt', CAST(N'1973-01-11T00:00:00.000' AS DateTime), N'38291 Shasta Plaza', N'kspirritth3@123-reg.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (617, N'Tolerton', CAST(N'1983-08-06T00:00:00.000' AS DateTime), N'271 Magdeline Pass', N'htolertonh4@psu.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (618, N'Haynesford', CAST(N'1963-09-08T00:00:00.000' AS DateTime), N'1 Corscot Terrace', N'chaynesfordh5@cocolog-nifty.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (619, N'Delve', CAST(N'1984-06-11T00:00:00.000' AS DateTime), N'8 Derek Way', N'ldelveh6@scientificamerican.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (620, N'Murtimer', CAST(N'1990-09-04T00:00:00.000' AS DateTime), N'947 8th Junction', N'hmurtimerh7@github.io')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (621, N'Swetenham', CAST(N'1962-08-17T00:00:00.000' AS DateTime), N'2 Lake View Point', N'hswetenhamh8@tripadvisor.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (622, N'Staziker', CAST(N'1997-08-12T00:00:00.000' AS DateTime), N'140 Forest Dale Circle', N'cstazikerh9@mozilla.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (623, N'Branchett', CAST(N'1995-06-12T00:00:00.000' AS DateTime), N'711 4th Place', N'kbranchettha@dmoz.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (624, N'Borthram', CAST(N'1986-04-06T00:00:00.000' AS DateTime), N'033 Shopko Pass', N'sborthramhb@icq.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (625, N'Mattheis', CAST(N'1953-10-14T00:00:00.000' AS DateTime), N'21 Corscot Trail', N'amattheishc@nih.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (626, N'Mughal', CAST(N'1969-06-27T00:00:00.000' AS DateTime), N'6631 Vermont Road', N'nmughalhd@senate.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (627, N'Bannon', CAST(N'1966-04-06T00:00:00.000' AS DateTime), N'76 Luster Plaza', N'bbannonhe@meetup.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (628, N'Drage', CAST(N'1993-03-12T00:00:00.000' AS DateTime), N'14827 Manitowish Lane', N'ydragehf@soundcloud.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (629, N'Yarham', CAST(N'1965-10-07T00:00:00.000' AS DateTime), N'901 Saint Paul Road', N'jyarhamhg@newyorker.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (630, N'Marquez', CAST(N'1990-03-03T00:00:00.000' AS DateTime), N'66866 Trailsway Plaza', N'tmarquezhh@wikispaces.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (631, N'Dradey', CAST(N'1970-12-05T00:00:00.000' AS DateTime), N'02 Lerdahl Parkway', N'fdradeyhi@ucsd.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (632, N'Attreed', CAST(N'1966-01-12T00:00:00.000' AS DateTime), N'5796 Gina Pass', N'battreedhj@elegantthemes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (633, N'Tichelaar', CAST(N'1995-06-04T00:00:00.000' AS DateTime), N'0167 Springview Terrace', N'stichelaarhk@jimdo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (634, N'Levensky', CAST(N'1984-12-30T00:00:00.000' AS DateTime), N'05961 Larry Circle', N'jlevenskyhl@dedecms.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (635, N'Woodrough', CAST(N'1954-08-25T00:00:00.000' AS DateTime), N'9 Del Mar Avenue', N'awoodroughhm@ftc.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (636, N'Melato', CAST(N'1957-11-01T00:00:00.000' AS DateTime), N'65797 Farragut Lane', N'hmelatohn@umn.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (637, N'Simionescu', CAST(N'1969-11-17T00:00:00.000' AS DateTime), N'7 Division Lane', N'gsimionescuho@plala.or.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (638, N'Beauchop', CAST(N'1968-08-14T00:00:00.000' AS DateTime), N'158 Tennyson Circle', N'ebeauchophp@sciencedaily.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (639, N'Tomala', CAST(N'1979-05-03T00:00:00.000' AS DateTime), N'333 Hanover Hill', N'atomalahq@zdnet.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (640, N'Illston', CAST(N'1959-03-20T00:00:00.000' AS DateTime), N'4988 Hansons Avenue', N'lillstonhr@wikispaces.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (641, N'Dudhill', CAST(N'1954-04-04T00:00:00.000' AS DateTime), N'9363 Michigan Junction', N'mdudhillhs@unc.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (642, N'Itzhak', CAST(N'1962-08-19T00:00:00.000' AS DateTime), N'63 Vermont Crossing', N'witzhakht@booking.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (643, N'Engley', CAST(N'1963-02-03T00:00:00.000' AS DateTime), N'21262 Michigan Pass', N'bengleyhu@newsvine.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (644, N'Burbury', CAST(N'1994-05-24T00:00:00.000' AS DateTime), N'82 Express Crossing', N'dburburyhv@senate.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (645, N'Keeler', CAST(N'1952-07-22T00:00:00.000' AS DateTime), N'8689 Loeprich Way', N'akeelerhw@fema.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (646, N'Micklewicz', CAST(N'1968-12-23T00:00:00.000' AS DateTime), N'88 Cherokee Street', N'pmicklewiczhx@linkedin.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (647, N'Allum', CAST(N'1952-10-13T00:00:00.000' AS DateTime), N'0 Sloan Road', N'mallumhy@apache.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (648, N'Ramsey', CAST(N'1975-01-05T00:00:00.000' AS DateTime), N'0074 Florence Junction', N'pramseyhz@oracle.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (649, N'Reburn', CAST(N'1963-01-05T00:00:00.000' AS DateTime), N'429 Kensington Drive', N'mreburni0@marriott.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (650, N'McCaughan', CAST(N'1971-12-18T00:00:00.000' AS DateTime), N'0673 Sutherland Terrace', N'fmccaughani1@shop-pro.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (651, N'Dobrowski', CAST(N'1959-09-25T00:00:00.000' AS DateTime), N'92 Burning Wood Crossing', N'cdobrowskii2@technorati.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (652, N'Finci', CAST(N'1991-01-06T00:00:00.000' AS DateTime), N'391 Service Park', N'efincii3@csmonitor.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (653, N'Coper', CAST(N'1977-09-10T00:00:00.000' AS DateTime), N'1744 Northport Plaza', N'acoperi4@behance.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (654, N'Southouse', CAST(N'1986-08-13T00:00:00.000' AS DateTime), N'6638 Dovetail Court', N'csouthousei5@bigcartel.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (655, N'Bente', CAST(N'1957-07-24T00:00:00.000' AS DateTime), N'42 Warbler Circle', N'rbentei6@instagram.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (656, N'Serrels', CAST(N'1985-10-31T00:00:00.000' AS DateTime), N'3964 Miller Plaza', N'cserrelsi7@imdb.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (657, N'Lefever', CAST(N'1956-04-13T00:00:00.000' AS DateTime), N'29 Rigney Trail', N'slefeveri8@ihg.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (658, N'Lory', CAST(N'1970-08-13T00:00:00.000' AS DateTime), N'269 Donald Pass', N'kloryi9@soundcloud.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (659, N'Ivushkin', CAST(N'1991-09-06T00:00:00.000' AS DateTime), N'49 Waxwing Alley', N'mivushkinia@google.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (660, N'Sawdy', CAST(N'1964-10-02T00:00:00.000' AS DateTime), N'39485 Eliot Court', N'fsawdyib@qq.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (661, N'Crone', CAST(N'1985-09-01T00:00:00.000' AS DateTime), N'878 Fuller Junction', N'dcroneic@tmall.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (662, N'Caulcott', CAST(N'1976-01-30T00:00:00.000' AS DateTime), N'23723 Porter Terrace', N'pcaulcottid@vistaprint.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (663, N'Dowry', CAST(N'1993-10-05T00:00:00.000' AS DateTime), N'00 Westerfield Crossing', N'gdowryie@mayoclinic.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (664, N'Wilhelmy', CAST(N'1978-07-12T00:00:00.000' AS DateTime), N'28 Norway Maple Point', N'pwilhelmyif@bbc.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (665, N'Chesterfield', CAST(N'1985-07-13T00:00:00.000' AS DateTime), N'5943 Pearson Alley', N'gchesterfieldig@behance.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (666, N'Fausset', CAST(N'1978-03-08T00:00:00.000' AS DateTime), N'4 Dakota Pass', N'rfaussetih@sogou.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (667, N'Crandon', CAST(N'1968-12-05T00:00:00.000' AS DateTime), N'4 Kedzie Center', N'bcrandonii@blogs.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (668, N'Brittlebank', CAST(N'1978-04-02T00:00:00.000' AS DateTime), N'91 Moulton Drive', N'jbrittlebankij@addthis.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (669, N'Iacomini', CAST(N'1952-09-10T00:00:00.000' AS DateTime), N'09104 Knutson Avenue', N'diacominiik@mozilla.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (670, N'Dumbrill', CAST(N'1987-05-01T00:00:00.000' AS DateTime), N'2 Drewry Junction', N'sdumbrillil@imgur.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (671, N'Callen', CAST(N'1968-12-24T00:00:00.000' AS DateTime), N'64 Doe Crossing Hill', N'bcallenim@indiegogo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (672, N'Crucetti', CAST(N'1997-04-12T00:00:00.000' AS DateTime), N'065 Sachs Street', N'dcrucettiin@histats.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (673, N'Fonte', CAST(N'1982-10-03T00:00:00.000' AS DateTime), N'392 7th Parkway', N'lfonteio@google.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (674, N'Pirdue', CAST(N'1976-03-22T00:00:00.000' AS DateTime), N'649 Warner Avenue', N'rpirdueip@nytimes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (675, N'O''Monahan', CAST(N'1959-06-11T00:00:00.000' AS DateTime), N'31 American Ash Hill', N'komonahaniq@rambler.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (676, N'Lusgdin', CAST(N'1952-08-05T00:00:00.000' AS DateTime), N'39 Gina Center', N'blusgdinir@weather.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (677, N'Clubley', CAST(N'1985-11-24T00:00:00.000' AS DateTime), N'9 Boyd Terrace', N'aclubleyis@rambler.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (678, N'McGilleghole', CAST(N'1954-11-25T00:00:00.000' AS DateTime), N'96622 Troy Circle', N'lmcgillegholeit@sbwire.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (679, N'Oby', CAST(N'1997-10-08T00:00:00.000' AS DateTime), N'84 Moose Court', N'aobyiu@123-reg.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (680, N'Malin', CAST(N'1995-08-18T00:00:00.000' AS DateTime), N'5633 Marcy Crossing', N'vmaliniv@wufoo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (681, N'Gecks', CAST(N'1994-03-10T00:00:00.000' AS DateTime), N'07 Pond Plaza', N'cgecksiw@example.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (682, N'Toman', CAST(N'1970-12-13T00:00:00.000' AS DateTime), N'02 Mallory Alley', N'atomanix@aol.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (683, N'Lamlin', CAST(N'1978-05-01T00:00:00.000' AS DateTime), N'4609 Arapahoe Terrace', N'dlamliniy@thetimes.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (684, N'Innes', CAST(N'1994-05-07T00:00:00.000' AS DateTime), N'02 Menomonie Court', N'binnesiz@i2i.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (685, N'Crunkhorn', CAST(N'1964-03-25T00:00:00.000' AS DateTime), N'8697 Northridge Plaza', N'ccrunkhornj0@w3.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (686, N'Paulin', CAST(N'1960-01-21T00:00:00.000' AS DateTime), N'54 Colorado Junction', N'spaulinj1@skype.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (687, N'Mulgrew', CAST(N'1996-04-01T00:00:00.000' AS DateTime), N'7 Fisk Street', N'nmulgrewj2@newsvine.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (688, N'Rumble', CAST(N'1993-04-09T00:00:00.000' AS DateTime), N'83801 Arapahoe Street', N'prumblej3@samsung.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (689, N'Hatherleigh', CAST(N'1953-04-05T00:00:00.000' AS DateTime), N'84 Rockefeller Drive', N'jhatherleighj4@csmonitor.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (690, N'Balazot', CAST(N'1971-02-05T00:00:00.000' AS DateTime), N'49 Wayridge Way', N'sbalazotj5@networksolutions.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (691, N'Bergen', CAST(N'1954-03-13T00:00:00.000' AS DateTime), N'1 Dakota Crossing', N'dbergenj6@statcounter.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (692, N'Adriano', CAST(N'1993-07-02T00:00:00.000' AS DateTime), N'78 Elmside Lane', N'vadrianoj7@yahoo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (693, N'St. Paul', CAST(N'1984-11-13T00:00:00.000' AS DateTime), N'4 Del Sol Point', N'kstpaulj8@google.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (694, N'Nuton', CAST(N'1961-05-09T00:00:00.000' AS DateTime), N'06 Holmberg Pass', N'fnutonj9@spotify.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (695, N'Luxford', CAST(N'1970-09-16T00:00:00.000' AS DateTime), N'4 Artisan Center', N'pluxfordja@wisc.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (696, N'Dell Casa', CAST(N'1967-05-06T00:00:00.000' AS DateTime), N'0 Fieldstone Terrace', N'cdellcasajb@hud.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (697, N'Dran', CAST(N'1970-09-11T00:00:00.000' AS DateTime), N'2982 Di Loreto Drive', N'rdranjc@reverbnation.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (698, N'Roskeilly', CAST(N'1982-05-12T00:00:00.000' AS DateTime), N'65 Michigan Court', N'aroskeillyjd@soundcloud.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (699, N'Voaden', CAST(N'1967-09-30T00:00:00.000' AS DateTime), N'529 Carey Hill', N'wvoadenje@spotify.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (700, N'Leal', CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'80 Bluejay Alley', N'dlealjf@360.cn')
GO
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (701, N'Bernardes', CAST(N'1958-12-17T00:00:00.000' AS DateTime), N'44 Butternut Road', N'abernardesjg@sourceforge.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (702, N'Basindale', CAST(N'1997-03-11T00:00:00.000' AS DateTime), N'01 Ilene Trail', N'jbasindalejh@themeforest.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (703, N'Vaadeland', CAST(N'1982-08-26T00:00:00.000' AS DateTime), N'20 Bobwhite Junction', N'vvaadelandji@ucoz.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (704, N'Kemme', CAST(N'1954-10-04T00:00:00.000' AS DateTime), N'11233 Menomonie Circle', N'akemmejj@newsvine.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (705, N'Waterstone', CAST(N'1951-06-20T00:00:00.000' AS DateTime), N'0639 Briar Crest Street', N'pwaterstonejk@seesaa.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (706, N'Larkkem', CAST(N'1967-12-07T00:00:00.000' AS DateTime), N'324 Thierer Street', N'llarkkemjl@squarespace.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (707, N'Isakowicz', CAST(N'1983-04-20T00:00:00.000' AS DateTime), N'465 Waxwing Crossing', N'cisakowiczjm@taobao.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (708, N'Simic', CAST(N'1988-04-03T00:00:00.000' AS DateTime), N'4590 Dahle Circle', N'hsimicjn@marriott.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (709, N'Cardis', CAST(N'1959-03-07T00:00:00.000' AS DateTime), N'5 Armistice Place', N'scardisjo@blinklist.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (710, N'Sawfoot', CAST(N'1962-12-11T00:00:00.000' AS DateTime), N'256 Forest Run Drive', N'bsawfootjp@usatoday.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (711, N'Dullingham', CAST(N'1989-03-10T00:00:00.000' AS DateTime), N'71109 Shopko Court', N'idullinghamjq@paypal.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (712, N'D''Arrigo', CAST(N'1990-12-06T00:00:00.000' AS DateTime), N'5 Crownhardt Pass', N'edarrigojr@amazon.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (713, N'Startin', CAST(N'1961-11-24T00:00:00.000' AS DateTime), N'58 New Castle Hill', N'wstartinjs@nature.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (714, N'Riply', CAST(N'1984-04-09T00:00:00.000' AS DateTime), N'9 Dunning Hill', N'griplyjt@scientificamerican.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (715, N'Bresnahan', CAST(N'1973-05-08T00:00:00.000' AS DateTime), N'513 Scott Pass', N'hbresnahanju@joomla.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (716, N'Phittiplace', CAST(N'1970-06-02T00:00:00.000' AS DateTime), N'78645 Vahlen Way', N'mphittiplacejv@columbia.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (717, N'Mitkov', CAST(N'1992-04-05T00:00:00.000' AS DateTime), N'295 Cambridge Place', N'mmitkovjw@yelp.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (718, N'Kobierzycki', CAST(N'1995-01-22T00:00:00.000' AS DateTime), N'40 North Alley', N'ckobierzyckijx@blinklist.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (719, N'Jaycox', CAST(N'1960-12-15T00:00:00.000' AS DateTime), N'2343 Monica Place', N'ojaycoxjy@dmoz.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (720, N'MacDaid', CAST(N'1996-08-11T00:00:00.000' AS DateTime), N'15 Kenwood Junction', N'zmacdaidjz@nature.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (721, N'Pampling', CAST(N'1998-07-29T00:00:00.000' AS DateTime), N'68 Holy Cross Street', N'bpamplingk0@cnbc.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (722, N'Sissons', CAST(N'1994-10-03T00:00:00.000' AS DateTime), N'86740 Ruskin Alley', N'esissonsk1@ft.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (723, N'Falconer-Taylor', CAST(N'1987-01-10T00:00:00.000' AS DateTime), N'6 John Wall Lane', N'mfalconertaylork2@behance.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (724, N'Accomb', CAST(N'1989-11-20T00:00:00.000' AS DateTime), N'115 Grover Lane', N'caccombk3@artisteer.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (725, N'McReynolds', CAST(N'1981-09-02T00:00:00.000' AS DateTime), N'269 1st Junction', N'hmcreynoldsk4@i2i.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (726, N'Fabri', CAST(N'1972-11-13T00:00:00.000' AS DateTime), N'398 Northwestern Center', N'sfabrik5@bloomberg.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (727, N'Daykin', CAST(N'1950-09-16T00:00:00.000' AS DateTime), N'44 Hayes Avenue', N'rdaykink6@nifty.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (728, N'Bernocchi', CAST(N'1997-03-03T00:00:00.000' AS DateTime), N'80 Dovetail Circle', N'nbernocchik7@sogou.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (729, N'Frango', CAST(N'1955-03-05T00:00:00.000' AS DateTime), N'5 Bluestem Trail', N'dfrangok8@washington.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (730, N'Garthland', CAST(N'1958-08-23T00:00:00.000' AS DateTime), N'36 Sheridan Pass', N'hgarthlandk9@samsung.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (731, N'Gerlts', CAST(N'2000-02-29T00:00:00.000' AS DateTime), N'45798 Scoville Point', N'sgerltska@msn.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (732, N'Gaenor', CAST(N'1998-05-02T00:00:00.000' AS DateTime), N'3 Graceland Lane', N'cgaenorkb@bigcartel.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (733, N'Hollows', CAST(N'1995-06-22T00:00:00.000' AS DateTime), N'9 Crescent Oaks Park', N'thollowskc@ifeng.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (734, N'Santino', CAST(N'1996-12-18T00:00:00.000' AS DateTime), N'10961 East Avenue', N'csantinokd@canalblog.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (735, N'Brahmer', CAST(N'1983-06-08T00:00:00.000' AS DateTime), N'50357 Dixon Alley', N'cbrahmerke@vinaora.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (736, N'Records', CAST(N'1951-11-01T00:00:00.000' AS DateTime), N'43710 Anderson Pass', N'mrecordskf@wunderground.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (737, N'Colter', CAST(N'1997-03-26T00:00:00.000' AS DateTime), N'9 Fordem Hill', N'pcolterkg@abc.net.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (738, N'Cudmore', CAST(N'1961-12-09T00:00:00.000' AS DateTime), N'03 Pawling Court', N'ocudmorekh@netlog.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (739, N'Belly', CAST(N'1956-07-06T00:00:00.000' AS DateTime), N'64762 Roxbury Avenue', N'hbellyki@spiegel.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (740, N'Grayston', CAST(N'1955-10-14T00:00:00.000' AS DateTime), N'1 Schurz Avenue', N'mgraystonkj@dailymotion.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (741, N'Riseam', CAST(N'1993-05-28T00:00:00.000' AS DateTime), N'5451 Westend Point', N'ariseamkk@wiley.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (742, N'Noseworthy', CAST(N'1960-10-04T00:00:00.000' AS DateTime), N'29 School Trail', N'rnoseworthykl@berkeley.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (743, N'Snaden', CAST(N'1990-02-21T00:00:00.000' AS DateTime), N'0 Shopko Parkway', N'lsnadenkm@alexa.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (744, N'Houldey', CAST(N'1983-12-23T00:00:00.000' AS DateTime), N'14578 5th Pass', N'shouldeykn@deviantart.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (745, N'Whaley', CAST(N'1978-06-20T00:00:00.000' AS DateTime), N'32 Shelley Park', N'rwhaleyko@usatoday.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (746, N'Kernar', CAST(N'1950-04-10T00:00:00.000' AS DateTime), N'8 Forest Avenue', N'skernarkp@typepad.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (747, N'Kimber', CAST(N'1993-11-10T00:00:00.000' AS DateTime), N'33963 American Ash Way', N'akimberkq@opensource.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (748, N'Edworthy', CAST(N'1991-09-06T00:00:00.000' AS DateTime), N'13118 Norway Maple Plaza', N'eedworthykr@google.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (749, N'Pacher', CAST(N'1966-03-09T00:00:00.000' AS DateTime), N'76166 Farwell Terrace', N'ppacherks@opera.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (750, N'Poel', CAST(N'2000-03-25T00:00:00.000' AS DateTime), N'5347 Sauthoff Hill', N'jpoelkt@123-reg.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (751, N'Dimmne', CAST(N'1980-03-30T00:00:00.000' AS DateTime), N'53 Wayridge Terrace', N'adimmneku@ustream.tv')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (752, N'Wagerfield', CAST(N'1952-03-25T00:00:00.000' AS DateTime), N'0 Rowland Parkway', N'wwagerfieldkv@archive.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (753, N'Ernke', CAST(N'1972-09-10T00:00:00.000' AS DateTime), N'62 Bayside Court', N'vernkekw@mayoclinic.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (754, N'Heare', CAST(N'1950-12-21T00:00:00.000' AS DateTime), N'1 Vera Place', N'mhearekx@prweb.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (755, N'Sisland', CAST(N'1993-07-24T00:00:00.000' AS DateTime), N'530 Longview Avenue', N'asislandky@google.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (756, N'Bodleigh', CAST(N'1961-07-04T00:00:00.000' AS DateTime), N'158 Utah Drive', N'cbodleighkz@nationalgeographic.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (757, N'Vasilic', CAST(N'1955-11-05T00:00:00.000' AS DateTime), N'4 Beilfuss Plaza', N'cvasilicl0@ft.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (758, N'Capnor', CAST(N'1960-03-14T00:00:00.000' AS DateTime), N'87457 Mosinee Point', N'jcapnorl1@topsy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (759, N'Ovett', CAST(N'1972-08-30T00:00:00.000' AS DateTime), N'1358 Dunning Drive', N'tovettl2@php.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (760, N'McAnalley', CAST(N'1979-05-11T00:00:00.000' AS DateTime), N'68 Ramsey Place', N'tmcanalleyl3@salon.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (761, N'Goodreid', CAST(N'1975-09-26T00:00:00.000' AS DateTime), N'65184 Orin Court', N'cgoodreidl4@stanford.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (762, N'Oldacre', CAST(N'1952-05-05T00:00:00.000' AS DateTime), N'82 Comanche Terrace', N'ioldacrel5@nymag.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (763, N'Reith', CAST(N'1953-01-12T00:00:00.000' AS DateTime), N'9289 Raven Alley', N'dreithl6@marriott.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (764, N'Luetkemeyer', CAST(N'1973-01-29T00:00:00.000' AS DateTime), N'3270 East Avenue', N'mluetkemeyerl7@mtv.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (765, N'Flarity', CAST(N'1957-02-23T00:00:00.000' AS DateTime), N'6 Debra Crossing', N'gflarityl8@goo.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (766, N'Daymond', CAST(N'1999-04-27T00:00:00.000' AS DateTime), N'3598 Westend Road', N'mdaymondl9@is.gd')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (767, N'Domino', CAST(N'1975-08-31T00:00:00.000' AS DateTime), N'5 Badeau Road', N'sdominola@huffingtonpost.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (768, N'Briand', CAST(N'1974-02-27T00:00:00.000' AS DateTime), N'0 Division Point', N'wbriandlb@unc.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (769, N'Huck', CAST(N'1990-03-01T00:00:00.000' AS DateTime), N'3 Lakewood Crossing', N'lhucklc@nhs.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (770, N'Lanon', CAST(N'1985-07-07T00:00:00.000' AS DateTime), N'23 Dahle Crossing', N'blanonld@weebly.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (771, N'Whiskerd', CAST(N'1983-09-12T00:00:00.000' AS DateTime), N'79 Sunbrook Alley', N'nwhiskerdle@mapquest.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (772, N'Foresight', CAST(N'1955-01-01T00:00:00.000' AS DateTime), N'31314 West Street', N'pforesightlf@w3.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (773, N'Pepin', CAST(N'1953-03-03T00:00:00.000' AS DateTime), N'3746 Donald Court', N'rpepinlg@ucsd.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (774, N'Manifield', CAST(N'1990-08-10T00:00:00.000' AS DateTime), N'253 Starling Trail', N'cmanifieldlh@angelfire.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (775, N'McVane', CAST(N'1958-01-18T00:00:00.000' AS DateTime), N'0 Kings Junction', N'rmcvaneli@reddit.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (776, N'Cambden', CAST(N'1952-12-19T00:00:00.000' AS DateTime), N'22 Prairieview Street', N'hcambdenlj@ustream.tv')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (777, N'Etheridge', CAST(N'1959-09-01T00:00:00.000' AS DateTime), N'8516 Chive Drive', N'aetheridgelk@weather.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (778, N'Ashbrook', CAST(N'1952-11-01T00:00:00.000' AS DateTime), N'9547 Moose Junction', N'tashbrookll@vimeo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (779, N'Blasl', CAST(N'1999-08-21T00:00:00.000' AS DateTime), N'5984 Daystar Junction', N'mblasllm@hhs.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (780, N'Trevino', CAST(N'1999-12-24T00:00:00.000' AS DateTime), N'223 Bowman Crossing', N'etrevinoln@comsenz.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (781, N'Gorwood', CAST(N'1957-06-20T00:00:00.000' AS DateTime), N'727 Homewood Pass', N'ggorwoodlo@angelfire.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (782, N'Citrine', CAST(N'1986-04-10T00:00:00.000' AS DateTime), N'5680 Dennis Trail', N'jcitrinelp@livejournal.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (783, N'Bergeau', CAST(N'1997-03-06T00:00:00.000' AS DateTime), N'0 Schmedeman Drive', N'ybergeaulq@mozilla.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (784, N'Ambrogioli', CAST(N'1968-12-19T00:00:00.000' AS DateTime), N'4642 Saint Paul Terrace', N'kambrogiolilr@bloomberg.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (785, N'Garrold', CAST(N'1965-09-27T00:00:00.000' AS DateTime), N'54763 Northport Court', N'egarroldls@smh.com.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (786, N'Playdon', CAST(N'1969-01-02T00:00:00.000' AS DateTime), N'7992 Northland Terrace', N'mplaydonlt@buzzfeed.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (787, N'Abell', CAST(N'1983-12-03T00:00:00.000' AS DateTime), N'91 Oneill Trail', N'iabelllu@360.cn')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (788, N'Rowney', CAST(N'1972-01-08T00:00:00.000' AS DateTime), N'12 Service Plaza', N'browneylv@columbia.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (789, N'Longo', CAST(N'1973-05-07T00:00:00.000' AS DateTime), N'0 Darwin Lane', N'dlongolw@hubpages.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (790, N'Verbruggen', CAST(N'1954-07-06T00:00:00.000' AS DateTime), N'54 Cordelia Drive', N'everbruggenlx@fotki.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (791, N'Gaskal', CAST(N'1986-09-10T00:00:00.000' AS DateTime), N'4847 Vidon Junction', N'dgaskally@photobucket.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (792, N'Thorsby', CAST(N'1975-09-15T00:00:00.000' AS DateTime), N'98 Claremont Center', N'pthorsbylz@github.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (793, N'Hembrow', CAST(N'1978-02-04T00:00:00.000' AS DateTime), N'14554 Hermina Pass', N'rhembrowm0@ow.ly')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (794, N'Elkins', CAST(N'1991-04-05T00:00:00.000' AS DateTime), N'5 Nancy Junction', N'selkinsm1@t.co')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (795, N'Lowdeane', CAST(N'1987-01-16T00:00:00.000' AS DateTime), N'275 Tony Lane', N'glowdeanem2@fastcompany.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (796, N'Kiellor', CAST(N'1960-05-04T00:00:00.000' AS DateTime), N'9 Hermina Trail', N'dkiellorm3@miibeian.gov.cn')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (797, N'Woodage', CAST(N'1992-05-05T00:00:00.000' AS DateTime), N'751 Drewry Place', N'uwoodagem4@godaddy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (798, N'Yearron', CAST(N'1955-05-19T00:00:00.000' AS DateTime), N'4532 Pankratz Alley', N'oyearronm5@pinterest.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (799, N'Folds', CAST(N'1978-09-18T00:00:00.000' AS DateTime), N'17 Westport Alley', N'bfoldsm6@walmart.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (800, N'Rostron', CAST(N'1971-03-11T00:00:00.000' AS DateTime), N'1369 Sherman Hill', N'wrostronm7@typepad.com')
GO
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (801, N'McCroary', CAST(N'1990-01-27T00:00:00.000' AS DateTime), N'9 Veith Crossing', N'smccroarym8@google.it')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (802, N'Wheway', CAST(N'1996-02-05T00:00:00.000' AS DateTime), N'4296 Division Center', N'mwhewaym9@smh.com.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (803, N'Kopf', CAST(N'1960-01-06T00:00:00.000' AS DateTime), N'59 Claremont Way', N'mkopfma@smugmug.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (804, N'Gouch', CAST(N'1973-05-20T00:00:00.000' AS DateTime), N'69558 Lunder Place', N'pgouchmb@51.la')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (805, N'Pues', CAST(N'1976-10-02T00:00:00.000' AS DateTime), N'62166 Charing Cross Court', N'apuesmc@hhs.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (806, N'Millwater', CAST(N'1961-09-16T00:00:00.000' AS DateTime), N'7191 Lyons Road', N'vmillwatermd@newyorker.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (807, N'Blunsen', CAST(N'1950-11-30T00:00:00.000' AS DateTime), N'34761 Ohio Court', N'mblunsenme@sbwire.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (808, N'Royds', CAST(N'1993-07-30T00:00:00.000' AS DateTime), N'1 Barby Park', N'aroydsmf@miibeian.gov.cn')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (809, N'Strodder', CAST(N'1963-12-07T00:00:00.000' AS DateTime), N'839 Sundown Center', N'gstroddermg@goo.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (810, N'Angear', CAST(N'1972-07-09T00:00:00.000' AS DateTime), N'284 Scott Alley', N'cangearmh@goo.gl')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (811, N'Sink', CAST(N'1992-04-28T00:00:00.000' AS DateTime), N'7 Fieldstone Circle', N'esinkmi@epa.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (812, N'Blankau', CAST(N'1981-10-12T00:00:00.000' AS DateTime), N'8899 Messerschmidt Hill', N'cblankaumj@goo.gl')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (813, N'Hehnke', CAST(N'1993-11-03T00:00:00.000' AS DateTime), N'015 Dunning Circle', N'thehnkemk@devhub.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (814, N'Coyte', CAST(N'1980-05-07T00:00:00.000' AS DateTime), N'021 Kipling Drive', N'tcoyteml@ucoz.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (815, N'Downe', CAST(N'1982-11-27T00:00:00.000' AS DateTime), N'1700 Columbus Hill', N'wdownemm@reddit.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (816, N'Hek', CAST(N'1997-03-22T00:00:00.000' AS DateTime), N'058 Stone Corner Hill', N'bhekmn@shutterfly.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (817, N'Bilby', CAST(N'1998-09-06T00:00:00.000' AS DateTime), N'07474 Esker Lane', N'fbilbymo@accuweather.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (818, N'Selly', CAST(N'1957-07-09T00:00:00.000' AS DateTime), N'82653 Fuller Drive', N'jsellymp@icq.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (819, N'Peterken', CAST(N'1975-02-12T00:00:00.000' AS DateTime), N'2592 Bunker Hill Street', N'zpeterkenmq@slideshare.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (820, N'Hasson', CAST(N'1999-09-06T00:00:00.000' AS DateTime), N'041 Swallow Junction', N'jhassonmr@scientificamerican.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (821, N'Tremellier', CAST(N'1968-06-03T00:00:00.000' AS DateTime), N'9932 Morningstar Parkway', N'mtremellierms@sourceforge.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (822, N'Kobiera', CAST(N'1955-11-05T00:00:00.000' AS DateTime), N'90 Veith Junction', N'ckobieramt@comcast.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (823, N'Nairns', CAST(N'1976-05-04T00:00:00.000' AS DateTime), N'04166 Hazelcrest Pass', N'vnairnsmu@economist.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (824, N'Cresswell', CAST(N'1971-10-12T00:00:00.000' AS DateTime), N'5 Roth Junction', N'dcresswellmv@purevolume.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (825, N'Unthank', CAST(N'1971-06-02T00:00:00.000' AS DateTime), N'17 Shasta Hill', N'dunthankmw@blogspot.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (826, N'Meredyth', CAST(N'1994-07-11T00:00:00.000' AS DateTime), N'84983 Shopko Center', N'cmeredythmx@mashable.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (827, N'Minear', CAST(N'1999-03-15T00:00:00.000' AS DateTime), N'0463 Amoth Pass', N'sminearmy@google.nl')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (828, N'Hawney', CAST(N'1951-01-05T00:00:00.000' AS DateTime), N'9488 Packers Alley', N'thawneymz@irs.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (829, N'Reek', CAST(N'1987-09-06T00:00:00.000' AS DateTime), N'5344 Valley Edge Street', N'mreekn0@geocities.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (830, N'Keizman', CAST(N'1964-03-12T00:00:00.000' AS DateTime), N'161 Michigan Way', N'tkeizmann1@123-reg.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (831, N'Lemmens', CAST(N'1954-12-08T00:00:00.000' AS DateTime), N'612 Wayridge Road', N'klemmensn2@kickstarter.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (832, N'Tough', CAST(N'1996-01-23T00:00:00.000' AS DateTime), N'9413 Warbler Circle', N'ctoughn3@topsy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (833, N'Emanulsson', CAST(N'1955-06-17T00:00:00.000' AS DateTime), N'73771 Larry Street', N'nemanulssonn4@artisteer.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (834, N'Najera', CAST(N'1963-02-09T00:00:00.000' AS DateTime), N'841 Jay Circle', N'jnajeran5@wisc.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (835, N'Tune', CAST(N'1977-02-07T00:00:00.000' AS DateTime), N'1945 Granby Drive', N'htunen6@ca.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (836, N'Pateman', CAST(N'1960-10-11T00:00:00.000' AS DateTime), N'3 Carberry Place', N'apatemann7@sciencedirect.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (837, N'Leupold', CAST(N'1984-04-09T00:00:00.000' AS DateTime), N'3397 Kenwood Plaza', N'aleupoldn8@t-online.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (838, N'Kevlin', CAST(N'1969-12-08T00:00:00.000' AS DateTime), N'20 School Circle', N'ekevlinn9@ft.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (839, N'Alf', CAST(N'1973-02-13T00:00:00.000' AS DateTime), N'3856 Saint Paul Hill', N'calfna@rakuten.co.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (840, N'Bailie', CAST(N'1969-10-12T00:00:00.000' AS DateTime), N'16133 Stone Corner Terrace', N'sbailienb@opensource.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (841, N'Kembley', CAST(N'1968-12-20T00:00:00.000' AS DateTime), N'193 Corry Terrace', N'bkembleync@parallels.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (842, N'Espada', CAST(N'1960-09-12T00:00:00.000' AS DateTime), N'0 Bunting Center', N'despadand@plala.or.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (843, N'Wallage', CAST(N'1984-11-21T00:00:00.000' AS DateTime), N'07 Derek Alley', N'dwallagene@networksolutions.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (844, N'Ledgard', CAST(N'1979-07-10T00:00:00.000' AS DateTime), N'56 Porter Lane', N'aledgardnf@omniture.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (845, N'Shilladay', CAST(N'1958-12-11T00:00:00.000' AS DateTime), N'30 Summerview Alley', N'cshilladayng@dedecms.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (846, N'Playfoot', CAST(N'1959-05-16T00:00:00.000' AS DateTime), N'345 Stoughton Center', N'dplayfootnh@alexa.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (847, N'Imison', CAST(N'1956-03-20T00:00:00.000' AS DateTime), N'13 Sunfield Park', N'simisonni@scribd.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (848, N'Pirolini', CAST(N'1972-07-14T00:00:00.000' AS DateTime), N'87 Hayes Way', N'hpirolininj@theatlantic.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (849, N'Castelin', CAST(N'1973-09-28T00:00:00.000' AS DateTime), N'7 Bultman Circle', N'fcastelinnk@cnet.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (850, N'Joice', CAST(N'1964-07-10T00:00:00.000' AS DateTime), N'824 Birchwood Road', N'ejoicenl@si.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (851, N'Courtese', CAST(N'1977-03-20T00:00:00.000' AS DateTime), N'51 Mallard Street', N'ccourtesenm@about.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (852, N'Fahey', CAST(N'1987-12-12T00:00:00.000' AS DateTime), N'57085 Ilene Alley', N'kfaheynn@biglobe.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (853, N'Tofful', CAST(N'1987-06-03T00:00:00.000' AS DateTime), N'2720 Tennyson Park', N'ptoffulno@buzzfeed.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (854, N'Loggie', CAST(N'1951-06-20T00:00:00.000' AS DateTime), N'65009 La Follette Terrace', N'nloggienp@webs.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (855, N'Willgrass', CAST(N'1960-03-22T00:00:00.000' AS DateTime), N'203 David Lane', N'jwillgrassnq@google.com.hk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (856, N'Burley', CAST(N'1954-12-10T00:00:00.000' AS DateTime), N'7366 Portage Trail', N'cburleynr@addtoany.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (857, N'Tome', CAST(N'1993-12-07T00:00:00.000' AS DateTime), N'31 Waywood Center', N'ctomens@weebly.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (858, N'Quinby', CAST(N'1966-06-20T00:00:00.000' AS DateTime), N'6 Starling Park', N'mquinbynt@fotki.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (859, N'Hazard', CAST(N'1966-05-23T00:00:00.000' AS DateTime), N'87955 Shoshone Avenue', N'thazardnu@hexun.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (860, N'Scrogges', CAST(N'1985-10-08T00:00:00.000' AS DateTime), N'3306 Cherokee Avenue', N'jscroggesnv@google.es')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (861, N'Sympson', CAST(N'1967-09-11T00:00:00.000' AS DateTime), N'6448 Northridge Plaza', N'fsympsonnw@shinystat.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (862, N'Idenden', CAST(N'1973-02-07T00:00:00.000' AS DateTime), N'05 Welch Street', N'hidendennx@upenn.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (863, N'Seale', CAST(N'1960-01-04T00:00:00.000' AS DateTime), N'03 Sycamore Pass', N'ksealeny@ning.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (864, N'Wittman', CAST(N'1962-11-06T00:00:00.000' AS DateTime), N'078 Swallow Alley', N'mwittmannz@addtoany.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (865, N'Mandal', CAST(N'1992-08-09T00:00:00.000' AS DateTime), N'2014 Eggendart Pass', N'lmandalo0@google.pl')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (866, N'Hobbert', CAST(N'1988-10-15T00:00:00.000' AS DateTime), N'83129 Lerdahl Center', N'vhobberto1@bloomberg.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (867, N'Walkden', CAST(N'1999-10-12T00:00:00.000' AS DateTime), N'870 Eastlawn Center', N'zwalkdeno2@symantec.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (868, N'Moncrefe', CAST(N'1987-05-12T00:00:00.000' AS DateTime), N'2137 Carpenter Lane', N'kmoncrefeo3@barnesandnoble.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (869, N'McKmurrie', CAST(N'1966-10-26T00:00:00.000' AS DateTime), N'545 Lotheville Hill', N'fmckmurrieo4@census.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (870, N'Callaway', CAST(N'1961-04-13T00:00:00.000' AS DateTime), N'2 Anthes Place', N'gcallawayo5@wikispaces.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (871, N'Fockes', CAST(N'1984-03-24T00:00:00.000' AS DateTime), N'6079 Nova Court', N'nfockeso6@google.co.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (872, N'Welford', CAST(N'1954-01-23T00:00:00.000' AS DateTime), N'876 Pleasure Street', N'swelfordo7@dagondesign.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (873, N'Ranklin', CAST(N'1966-12-06T00:00:00.000' AS DateTime), N'327 Killdeer Street', N'eranklino8@answers.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (874, N'Worster', CAST(N'1986-07-07T00:00:00.000' AS DateTime), N'0293 Magdeline Road', N'hworstero9@auda.org.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (875, N'Burgwyn', CAST(N'1978-06-02T00:00:00.000' AS DateTime), N'8 Scofield Park', N'bburgwynoa@bbb.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (876, N'Menis', CAST(N'1967-07-27T00:00:00.000' AS DateTime), N'38 Eastwood Hill', N'cmenisob@columbia.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (877, N'Clerke', CAST(N'1955-08-02T00:00:00.000' AS DateTime), N'3 Mccormick Pass', N'hclerkeoc@imgur.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (878, N'Klosa', CAST(N'1979-04-04T00:00:00.000' AS DateTime), N'14784 Sauthoff Alley', N'cklosaod@marketwatch.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (879, N'Dorling', CAST(N'1993-01-04T00:00:00.000' AS DateTime), N'54 Moulton Center', N'ddorlingoe@flavors.me')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (880, N'Clissett', CAST(N'1988-08-04T00:00:00.000' AS DateTime), N'7 Loeprich Place', N'aclissettof@webnode.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (881, N'Cockrill', CAST(N'1958-08-19T00:00:00.000' AS DateTime), N'2 Norway Maple Road', N'gcockrillog@bravesites.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (882, N'Staveley', CAST(N'2000-04-03T00:00:00.000' AS DateTime), N'6 Magdeline Center', N'nstaveleyoh@ovh.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (883, N'Fassmann', CAST(N'1963-08-26T00:00:00.000' AS DateTime), N'0888 Artisan Pass', N'kfassmannoi@com.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (884, N'Lednor', CAST(N'1962-07-13T00:00:00.000' AS DateTime), N'4 Hoffman Street', N'plednoroj@so-net.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (885, N'Dimont', CAST(N'1997-05-01T00:00:00.000' AS DateTime), N'5 Kropf Alley', N'ldimontok@utexas.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (886, N'Bransom', CAST(N'1957-04-19T00:00:00.000' AS DateTime), N'05236 Victoria Street', N'abransomol@facebook.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (887, N'Harding', CAST(N'1988-02-23T00:00:00.000' AS DateTime), N'78 Fordem Park', N'ghardingom@geocities.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (888, N'Sutherington', CAST(N'1953-12-22T00:00:00.000' AS DateTime), N'39 Express Street', N'nsutheringtonon@usgs.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (889, N'Bragger', CAST(N'1999-04-08T00:00:00.000' AS DateTime), N'522 5th Street', N'lbraggeroo@sohu.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (890, N'Hunstone', CAST(N'1953-08-06T00:00:00.000' AS DateTime), N'65 Ruskin Terrace', N'chunstoneop@google.com.hk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (891, N'Light', CAST(N'1998-12-09T00:00:00.000' AS DateTime), N'57218 Warner Terrace', N'wlightoq@irs.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (892, N'Cham', CAST(N'1984-06-06T00:00:00.000' AS DateTime), N'33 Onsgard Junction', N'tchamor@twitter.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (893, N'Rodden', CAST(N'1991-11-04T00:00:00.000' AS DateTime), N'9 Bayside Point', N'rroddenos@yale.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (894, N'Dranfield', CAST(N'1987-05-06T00:00:00.000' AS DateTime), N'77 Melby Place', N'ddranfieldot@wikimedia.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (895, N'Dawtry', CAST(N'1980-06-04T00:00:00.000' AS DateTime), N'678 6th Pass', N'cdawtryou@state.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (896, N'Tremlett', CAST(N'1984-11-29T00:00:00.000' AS DateTime), N'1013 Hooker Parkway', N'stremlettov@vk.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (897, N'Crossingham', CAST(N'1986-07-09T00:00:00.000' AS DateTime), N'07 Thackeray Drive', N'bcrossinghamow@washingtonpost.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (898, N'McPhater', CAST(N'1996-01-04T00:00:00.000' AS DateTime), N'05228 Corben Parkway', N'tmcphaterox@msn.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (899, N'Bailes', CAST(N'1985-08-08T00:00:00.000' AS DateTime), N'44154 Spenser Trail', N'dbailesoy@oracle.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (900, N'Colpus', CAST(N'1953-05-10T00:00:00.000' AS DateTime), N'1 Valley Edge Lane', N'ccolpusoz@cisco.com')
GO
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (901, N'Chessum', CAST(N'1975-05-11T00:00:00.000' AS DateTime), N'31279 Sycamore Crossing', N'lchessump0@newsvine.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (902, N'Surmeyer', CAST(N'1956-08-10T00:00:00.000' AS DateTime), N'5206 Commercial Circle', N'jsurmeyerp1@netscape.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (903, N'Meininking', CAST(N'1989-01-15T00:00:00.000' AS DateTime), N'5 Kedzie Terrace', N'gmeininkingp2@tripadvisor.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (904, N'Swaddle', CAST(N'1973-04-15T00:00:00.000' AS DateTime), N'623 Scofield Pass', N'lswaddlep3@addtoany.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (905, N'Motton', CAST(N'1961-05-17T00:00:00.000' AS DateTime), N'222 Stephen Point', N'dmottonp4@wisc.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (906, N'Verlander', CAST(N'1964-05-01T00:00:00.000' AS DateTime), N'7245 Charing Cross Drive', N'sverlanderp5@virginia.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (907, N'Kall', CAST(N'1952-01-05T00:00:00.000' AS DateTime), N'996 Novick Junction', N'lkallp6@alibaba.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (908, N'McIlory', CAST(N'1959-08-01T00:00:00.000' AS DateTime), N'5900 Westport Alley', N'dmciloryp7@arstechnica.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (909, N'Wear', CAST(N'1966-10-01T00:00:00.000' AS DateTime), N'2396 Rigney Drive', N'pwearp8@surveymonkey.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (910, N'Viollet', CAST(N'1989-11-28T00:00:00.000' AS DateTime), N'91 Golf View Lane', N'nviolletp9@smh.com.au')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (911, N'Shiel', CAST(N'1992-12-04T00:00:00.000' AS DateTime), N'337 Merry Hill', N'mshielpa@oakley.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (912, N'Fielders', CAST(N'1964-04-06T00:00:00.000' AS DateTime), N'6412 Ludington Hill', N'afielderspb@tamu.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (913, N'Featherstonhaugh', CAST(N'1985-05-28T00:00:00.000' AS DateTime), N'87 Schiller Trail', N'tfeatherstonhaughpc@accuweather.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (914, N'Toe', CAST(N'1987-11-18T00:00:00.000' AS DateTime), N'39 Sloan Avenue', N'ntoepd@rediff.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (915, N'Corneille', CAST(N'1987-08-01T00:00:00.000' AS DateTime), N'1 Charing Cross Pass', N'mcorneillepe@wordpress.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (916, N'Bishop', CAST(N'1983-01-09T00:00:00.000' AS DateTime), N'02363 Buell Center', N'dbishoppf@spiegel.de')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (917, N'Harsent', CAST(N'1990-09-06T00:00:00.000' AS DateTime), N'3 Kinsman Alley', N'charsentpg@soundcloud.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (918, N'Corthes', CAST(N'1970-02-25T00:00:00.000' AS DateTime), N'5 Southridge Point', N'dcorthesph@gmpg.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (919, N'Lamswood', CAST(N'1997-01-16T00:00:00.000' AS DateTime), N'2448 Spohn Point', N'glamswoodpi@sphinn.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (920, N'Kienlein', CAST(N'1988-04-05T00:00:00.000' AS DateTime), N'822 Starling Court', N'akienleinpj@pbs.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (921, N'Mabbott', CAST(N'1970-11-29T00:00:00.000' AS DateTime), N'1 Melody Place', N'bmabbottpk@google.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (922, N'Nolton', CAST(N'1997-05-04T00:00:00.000' AS DateTime), N'46253 Bellgrove Point', N'gnoltonpl@furl.net')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (923, N'Tourner', CAST(N'1968-09-02T00:00:00.000' AS DateTime), N'95 Sutteridge Terrace', N'rtournerpm@google.pl')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (924, N'Trodden', CAST(N'1978-03-06T00:00:00.000' AS DateTime), N'283 Melody Circle', N'ftroddenpn@dagondesign.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (925, N'Cissell', CAST(N'1959-04-03T00:00:00.000' AS DateTime), N'2851 Stephen Terrace', N'gcissellpo@topsy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (926, N'Wilbud', CAST(N'1955-01-20T00:00:00.000' AS DateTime), N'69 Moulton Plaza', N'awilbudpp@wufoo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (927, N'Carney', CAST(N'1967-05-02T00:00:00.000' AS DateTime), N'273 Westport Parkway', N'scarneypq@youtu.be')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (928, N'Shapter', CAST(N'1966-04-03T00:00:00.000' AS DateTime), N'39364 Sunbrook Hill', N'rshapterpr@springer.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (929, N'Womack', CAST(N'1958-07-20T00:00:00.000' AS DateTime), N'8723 Bowman Junction', N'hwomackps@marketwatch.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (930, N'Issacoff', CAST(N'1992-09-11T00:00:00.000' AS DateTime), N'74327 Goodland Parkway', N'missacoffpt@naver.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (931, N'Magauran', CAST(N'1973-05-03T00:00:00.000' AS DateTime), N'234 Anzinger Point', N'amagauranpu@cafepress.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (932, N'Routledge', CAST(N'1980-03-05T00:00:00.000' AS DateTime), N'142 Eastlawn Drive', N'sroutledgepv@eventbrite.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (933, N'Matuszkiewicz', CAST(N'1962-10-31T00:00:00.000' AS DateTime), N'1 Kipling Terrace', N'mmatuszkiewiczpw@newsvine.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (934, N'Gyurko', CAST(N'1967-02-09T00:00:00.000' AS DateTime), N'481 American Ash Point', N'rgyurkopx@ehow.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (935, N'Noods', CAST(N'1995-01-06T00:00:00.000' AS DateTime), N'34 Redwing Terrace', N'fnoodspy@reference.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (936, N'Sturdy', CAST(N'1957-04-06T00:00:00.000' AS DateTime), N'72 Barnett Junction', N'dsturdypz@gravatar.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (937, N'Crichmer', CAST(N'1986-06-03T00:00:00.000' AS DateTime), N'1 Anniversary Hill', N'bcrichmerq0@bbc.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (938, N'Durant', CAST(N'1976-04-26T00:00:00.000' AS DateTime), N'25580 Almo Parkway', N'rdurantq1@symantec.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (939, N'Hadenton', CAST(N'1975-03-23T00:00:00.000' AS DateTime), N'1 Rieder Center', N'ehadentonq2@indiatimes.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (940, N'Warsap', CAST(N'1979-01-06T00:00:00.000' AS DateTime), N'1 Rigney Pass', N'gwarsapq3@geocities.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (941, N'Mariner', CAST(N'1959-12-17T00:00:00.000' AS DateTime), N'6518 Drewry Crossing', N'amarinerq4@reverbnation.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (942, N'Fishbie', CAST(N'1959-01-09T00:00:00.000' AS DateTime), N'8744 Harbort Point', N'afishbieq5@cargocollective.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (943, N'Harrigan', CAST(N'1990-08-12T00:00:00.000' AS DateTime), N'3 Autumn Leaf Trail', N'lharriganq6@nationalgeographic.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (944, N'Goghin', CAST(N'1980-04-18T00:00:00.000' AS DateTime), N'25 Arizona Place', N'mgoghinq7@last.fm')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (945, N'Crookston', CAST(N'1966-10-08T00:00:00.000' AS DateTime), N'5255 Summerview Avenue', N'rcrookstonq8@ask.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (946, N'Imesen', CAST(N'1995-01-02T00:00:00.000' AS DateTime), N'909 Kings Street', N'himesenq9@biglobe.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (947, N'Silcock', CAST(N'1969-12-01T00:00:00.000' AS DateTime), N'107 Bluejay Pass', N'msilcockqa@mit.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (948, N'Longworthy', CAST(N'1965-07-23T00:00:00.000' AS DateTime), N'5973 Larry Place', N'nlongworthyqb@sohu.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (949, N'Bernardet', CAST(N'1954-01-11T00:00:00.000' AS DateTime), N'430 Sauthoff Plaza', N'cbernardetqc@odnoklassniki.ru')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (950, N'Baldree', CAST(N'1977-06-01T00:00:00.000' AS DateTime), N'5795 Anzinger Parkway', N'dbaldreeqd@diigo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (951, N'Ferandez', CAST(N'1952-10-02T00:00:00.000' AS DateTime), N'66367 Shopko Road', N'iferandezqe@psu.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (952, N'Benitti', CAST(N'1975-02-23T00:00:00.000' AS DateTime), N'547 Charing Cross Alley', N'sbenittiqf@is.gd')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (953, N'Doorey', CAST(N'1962-06-06T00:00:00.000' AS DateTime), N'1898 7th Terrace', N'ddooreyqg@weibo.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (954, N'Pahlsson', CAST(N'1996-06-04T00:00:00.000' AS DateTime), N'64006 Namekagon Road', N'zpahlssonqh@dailymail.co.uk')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (955, N'Jovis', CAST(N'1958-04-22T00:00:00.000' AS DateTime), N'374 Buena Vista Court', N'njovisqi@ameblo.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (956, N'Goodyear', CAST(N'1999-08-21T00:00:00.000' AS DateTime), N'912 Graceland Crossing', N'mgoodyearqj@networkadvertising.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (957, N'Hattigan', CAST(N'1992-05-03T00:00:00.000' AS DateTime), N'399 Helena Way', N'lhattiganqk@google.co.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (958, N'Coneau', CAST(N'1972-10-09T00:00:00.000' AS DateTime), N'0 Mcbride Drive', N'cconeauql@epa.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (959, N'Ten Broek', CAST(N'1963-07-12T00:00:00.000' AS DateTime), N'69 Gina Circle', N'ptenbroekqm@utexas.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (960, N'McPeck', CAST(N'1963-08-08T00:00:00.000' AS DateTime), N'6 Memorial Center', N'kmcpeckqn@booking.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (961, N'Amiranda', CAST(N'1951-09-29T00:00:00.000' AS DateTime), N'74014 Portage Park', N'ramirandaqo@typepad.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (962, N'Figgen', CAST(N'1997-09-01T00:00:00.000' AS DateTime), N'9 Oakridge Terrace', N'cfiggenqp@imdb.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (963, N'Dairton', CAST(N'1964-10-23T00:00:00.000' AS DateTime), N'6 Colorado Pass', N'tdairtonqq@columbia.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (964, N'Keavy', CAST(N'1976-07-05T00:00:00.000' AS DateTime), N'83628 Straubel Junction', N'skeavyqr@bandcamp.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (965, N'Petit', CAST(N'1999-03-13T00:00:00.000' AS DateTime), N'0 Maple Wood Hill', N'vpetitqs@scientificamerican.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (966, N'Crathorne', CAST(N'1958-12-16T00:00:00.000' AS DateTime), N'74648 Grover Avenue', N'qcrathorneqt@google.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (967, N'Hellier', CAST(N'1986-12-10T00:00:00.000' AS DateTime), N'5 Victoria Trail', N'ahellierqu@goo.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (968, N'Baddoe', CAST(N'1979-11-30T00:00:00.000' AS DateTime), N'40 Warner Junction', N'ebaddoeqv@google.com.br')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (969, N'Moulton', CAST(N'1958-08-15T00:00:00.000' AS DateTime), N'21299 American Ash Court', N'jmoultonqw@istockphoto.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (970, N'Tease', CAST(N'1960-01-14T00:00:00.000' AS DateTime), N'0 Eliot Street', N'steaseqx@dot.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (971, N'Easterling', CAST(N'1985-02-08T00:00:00.000' AS DateTime), N'6001 Towne Place', N'aeasterlingqy@princeton.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (972, N'Verner', CAST(N'1962-08-18T00:00:00.000' AS DateTime), N'09487 International Parkway', N'cvernerqz@state.tx.us')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (973, N'Dantesia', CAST(N'1991-09-26T00:00:00.000' AS DateTime), N'96 Pleasure Avenue', N'bdantesiar0@craigslist.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (974, N'Boxill', CAST(N'1982-05-21T00:00:00.000' AS DateTime), N'193 High Crossing Trail', N'hboxillr1@bandcamp.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (975, N'Duffield', CAST(N'1952-05-01T00:00:00.000' AS DateTime), N'6239 Pierstorff Trail', N'tduffieldr2@jiathis.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (976, N'Aughton', CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'75957 Northview Street', N'saughtonr3@dion.ne.jp')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (977, N'Kielty', CAST(N'1958-04-01T00:00:00.000' AS DateTime), N'10 Annamark Hill', N'tkieltyr4@oracle.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (978, N'Cockle', CAST(N'1976-05-27T00:00:00.000' AS DateTime), N'823 Barby Center', N'pcockler5@squarespace.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (979, N'Vacher', CAST(N'1961-07-06T00:00:00.000' AS DateTime), N'961 Badeau Point', N'avacherr6@addthis.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (980, N'Jumont', CAST(N'1982-07-11T00:00:00.000' AS DateTime), N'7869 Dexter Parkway', N'jjumontr7@google.ca')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (981, N'Gregoretti', CAST(N'1996-12-23T00:00:00.000' AS DateTime), N'0 Anhalt Terrace', N'rgregorettir8@washingtonpost.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (982, N'Tackle', CAST(N'1972-05-11T00:00:00.000' AS DateTime), N'622 Blue Bill Park Hill', N'jtackler9@webs.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (983, N'Allen', CAST(N'1964-04-09T00:00:00.000' AS DateTime), N'64993 Mockingbird Road', N'mallenra@fotki.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (984, N'Huddleston', CAST(N'1990-01-02T00:00:00.000' AS DateTime), N'8 Parkside Place', N'khuddlestonrb@jigsy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (985, N'Coneley', CAST(N'1987-01-01T00:00:00.000' AS DateTime), N'751 Victoria Alley', N'pconeleyrc@lycos.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (986, N'Opy', CAST(N'1976-05-12T00:00:00.000' AS DateTime), N'4 Pond Center', N'nopyrd@mashable.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (987, N'Frankton', CAST(N'1956-12-03T00:00:00.000' AS DateTime), N'4457 Daystar Lane', N'kfranktonre@cbc.ca')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (988, N'Roselli', CAST(N'1959-05-19T00:00:00.000' AS DateTime), N'722 Warner Drive', N'grosellirf@google.ca')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (989, N'Huntley', CAST(N'1967-01-25T00:00:00.000' AS DateTime), N'6 Reindahl Circle', N'lhuntleyrg@flavors.me')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (990, N'Trasler', CAST(N'1978-07-23T00:00:00.000' AS DateTime), N'08 Butterfield Street', N'rtraslerrh@etsy.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (991, N'Vaskov', CAST(N'1963-07-04T00:00:00.000' AS DateTime), N'73 Aberg Alley', N'jvaskovri@msu.edu')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (992, N'Lepard', CAST(N'1994-10-24T00:00:00.000' AS DateTime), N'06132 Jackson Pass', N'wlepardrj@omniture.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (993, N'Laurie', CAST(N'1957-07-03T00:00:00.000' AS DateTime), N'71222 Grover Alley', N'hlaurierk@kickstarter.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (994, N'Cicero', CAST(N'1980-08-12T00:00:00.000' AS DateTime), N'249 Del Sol Point', N'ecicerorl@squarespace.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (995, N'Eliesco', CAST(N'1963-09-15T00:00:00.000' AS DateTime), N'8816 Anderson Road', N'geliescorm@bloglovin.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (996, N'McCroary', CAST(N'1979-10-22T00:00:00.000' AS DateTime), N'24550 Northwestern Terrace', N'emccroaryrn@redcross.org')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (997, N'Redgewell', CAST(N'1981-11-17T00:00:00.000' AS DateTime), N'8 Garrison Pass', N'mredgewellro@nasa.gov')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (998, N'Whitters', CAST(N'1987-04-16T00:00:00.000' AS DateTime), N'881 Burning Wood Way', N'kwhittersrp@webs.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (999, N'Flipek', CAST(N'1981-05-04T00:00:00.000' AS DateTime), N'738 Westerfield Park', N'sflipekrq@yolasite.com')
INSERT [dbo].[Client] ([Client_id], [client_name], [date_of_birth], [address], [email]) VALUES (1000, N'Shelsher', CAST(N'1958-04-25T00:00:00.000' AS DateTime), N'90 Maple Wood Pass', N'rshelsherrr@fastcompany.com')
GO
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (1, N'Crang', CAST(N'1963-10-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (2, N'Monkley', CAST(N'1972-06-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (3, N'Ivanyukov', CAST(N'1959-01-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (4, N'Deane', CAST(N'2000-03-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (5, N'Pavlitschek', CAST(N'1955-01-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (6, N'Mathis', CAST(N'1974-11-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (7, N'Shovelin', CAST(N'1982-03-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (8, N'Parmley', CAST(N'1951-06-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (9, N'Cody', CAST(N'1973-07-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (10, N'Squirrel', CAST(N'1982-03-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (11, N'Aldie', CAST(N'1956-02-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (12, N'Bottleson', CAST(N'1964-07-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (13, N'Vignal', CAST(N'1982-10-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (14, N'Goning', CAST(N'1966-05-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (15, N'Cerith', CAST(N'1971-09-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (16, N'Godleman', CAST(N'1999-03-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (17, N'Reichelt', CAST(N'1974-08-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (18, N'Aikman', CAST(N'2000-10-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (19, N'Mannock', CAST(N'1973-09-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (20, N'Trayes', CAST(N'1979-02-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (21, N'Taleworth', CAST(N'1999-06-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (22, N'Udall', CAST(N'1986-01-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (23, N'Demeter', CAST(N'1985-08-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (24, N'Volkes', CAST(N'1953-08-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (25, N'Blake', CAST(N'1962-02-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (26, N'Game', CAST(N'1969-11-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (27, N'Jannings', CAST(N'1975-04-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (28, N'O''Sherin', CAST(N'1973-01-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (29, N'Boswood', CAST(N'1966-04-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (30, N'Zuppa', CAST(N'1990-08-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (31, N'McDonough', CAST(N'1999-08-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (32, N'Tolmie', CAST(N'1968-04-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (33, N'Roy', CAST(N'1997-03-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (34, N'Ricketts', CAST(N'1986-08-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (35, N'Catt', CAST(N'2000-10-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (36, N'De Coursey', CAST(N'1960-12-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (37, N'Pilling', CAST(N'1975-05-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (38, N'Aird', CAST(N'1972-12-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (39, N'Downes', CAST(N'1991-07-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (40, N'Parcells', CAST(N'1975-01-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (41, N'Bullock', CAST(N'1967-06-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (42, N'O''Neill', CAST(N'1953-07-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (43, N'Dimmick', CAST(N'1960-07-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (44, N'Antonchik', CAST(N'1999-11-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (45, N'Baumaier', CAST(N'1999-04-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (46, N'Grinley', CAST(N'1987-04-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (47, N'O''Regan', CAST(N'1974-10-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (48, N'Arter', CAST(N'1955-12-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (49, N'Giovanazzi', CAST(N'1974-09-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (50, N'Wield', CAST(N'1958-10-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (51, N'Ocheltree', CAST(N'1980-07-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (52, N'Hayne', CAST(N'1996-02-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (53, N'Spore', CAST(N'1963-08-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (54, N'Whelband', CAST(N'1981-12-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (55, N'Ottiwill', CAST(N'1975-06-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (56, N'Freen', CAST(N'1983-10-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (57, N'Soigoux', CAST(N'1973-07-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (58, N'Qusklay', CAST(N'1980-07-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (59, N'Urey', CAST(N'1987-01-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (60, N'Beazley', CAST(N'1952-12-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (61, N'Adamoli', CAST(N'1972-12-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (62, N'Connikie', CAST(N'1956-10-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (63, N'Ayliff', CAST(N'1973-09-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (64, N'Meachem', CAST(N'1971-04-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (65, N'Drennan', CAST(N'1995-06-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (66, N'Errett', CAST(N'1995-10-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (67, N'Upchurch', CAST(N'1971-12-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (68, N'Frier', CAST(N'1972-09-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (69, N'Simeoli', CAST(N'1961-12-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (70, N'Toms', CAST(N'1976-05-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (71, N'Davidowsky', CAST(N'1964-04-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (72, N'Ketteridge', CAST(N'1977-03-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (73, N'Walster', CAST(N'1967-11-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (74, N'Folger', CAST(N'1950-05-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (75, N'Chaim', CAST(N'1958-10-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (76, N'Antonomolii', CAST(N'1999-05-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (77, N'Kruse', CAST(N'1960-01-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (78, N'Crossan', CAST(N'1952-06-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (79, N'Dove', CAST(N'1968-03-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (80, N'Hanstock', CAST(N'1952-05-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (81, N'Ferronet', CAST(N'1975-12-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (82, N'Fass', CAST(N'1968-05-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (83, N'Bolter', CAST(N'1980-01-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (84, N'Arnaudon', CAST(N'1980-12-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (85, N'Iglesias', CAST(N'1997-02-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (86, N'Lelande', CAST(N'1978-03-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (87, N'Clunie', CAST(N'1985-03-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (88, N'Letertre', CAST(N'1977-03-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (89, N'Gregs', CAST(N'1958-10-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (90, N'Gabits', CAST(N'1964-06-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (91, N'Bruster', CAST(N'1985-08-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (92, N'Cowles', CAST(N'1982-06-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (93, N'Lever', CAST(N'1992-07-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (94, N'Gergely', CAST(N'1988-07-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (95, N'Thompson', CAST(N'1950-11-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (96, N'Spendley', CAST(N'1963-03-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (97, N'Richemond', CAST(N'1987-06-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (98, N'Burnhams', CAST(N'1988-11-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (99, N'Catton', CAST(N'1983-08-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (100, N'Bertouloume', CAST(N'1961-08-01' AS Date))
GO
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (101, N'Goodwyn', CAST(N'1986-12-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (102, N'Seivwright', CAST(N'1980-06-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (103, N'Cowperthwaite', CAST(N'2000-10-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (104, N'Elham', CAST(N'1968-10-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (105, N'Reynold', CAST(N'1956-08-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (106, N'Zanre', CAST(N'1964-12-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (107, N'Conn', CAST(N'1987-02-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (108, N'Dunbar', CAST(N'1983-01-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (109, N'Oldroyde', CAST(N'1951-07-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (110, N'Deveraux', CAST(N'1951-10-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (111, N'Dwelly', CAST(N'1996-04-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (112, N'Rudham', CAST(N'1991-05-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (113, N'Janson', CAST(N'1962-02-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (114, N'Hendriks', CAST(N'1997-06-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (115, N'De Gregorio', CAST(N'1956-09-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (116, N'Shuttle', CAST(N'1989-01-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (117, N'Trebbett', CAST(N'1961-02-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (118, N'Petrasso', CAST(N'1950-11-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (119, N'Jeskin', CAST(N'1968-05-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (120, N'Castaneda', CAST(N'1987-02-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (121, N'Devanny', CAST(N'1982-10-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (122, N'Arnopp', CAST(N'1957-01-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (123, N'Challens', CAST(N'1976-01-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (124, N'Millions', CAST(N'1981-06-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (125, N'Vincent', CAST(N'1969-06-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (126, N'Van Halen', CAST(N'1972-09-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (127, N'Dopson', CAST(N'1950-08-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (128, N'Lawrinson', CAST(N'2000-02-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (129, N'Klagges', CAST(N'1982-09-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (130, N'Arkcoll', CAST(N'1987-06-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (131, N'Brocking', CAST(N'1968-02-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (132, N'MacKaig', CAST(N'1954-08-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (133, N'Bretton', CAST(N'1970-10-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (134, N'Rothera', CAST(N'1979-11-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (135, N'Poel', CAST(N'1960-04-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (136, N'Jost', CAST(N'1986-08-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (137, N'Lidgate', CAST(N'1954-07-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (138, N'Kort', CAST(N'1982-07-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (139, N'Evennett', CAST(N'1952-02-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (140, N'Bernardez', CAST(N'1975-10-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (141, N'Creane', CAST(N'1978-01-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (142, N'Valde', CAST(N'1974-02-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (143, N'Hamal', CAST(N'1991-07-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (144, N'Pease', CAST(N'1981-01-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (145, N'Wharf', CAST(N'1996-06-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (146, N'Kalkhoven', CAST(N'1956-04-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (147, N'McGreil', CAST(N'1976-10-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (148, N'Boij', CAST(N'1959-08-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (149, N'Robertsson', CAST(N'1988-12-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (150, N'Niche', CAST(N'1961-01-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (151, N'Baines', CAST(N'1992-04-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (152, N'Cullen', CAST(N'1960-02-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (153, N'Puckinghorne', CAST(N'1970-03-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (154, N'Flannery', CAST(N'1986-02-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (155, N'Parke', CAST(N'1998-07-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (156, N'Gallichiccio', CAST(N'1984-04-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (157, N'Timothy', CAST(N'1981-05-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (158, N'Ridel', CAST(N'1959-03-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (159, N'Braisby', CAST(N'1953-03-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (160, N'O''Cannon', CAST(N'1959-04-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (161, N'Scholling', CAST(N'1999-11-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (162, N'Hardes', CAST(N'1984-09-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (163, N'Marchment', CAST(N'1951-07-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (164, N'Neasham', CAST(N'1972-05-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (165, N'Padginton', CAST(N'1967-11-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (166, N'Walwood', CAST(N'1956-05-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (167, N'Dawidowicz', CAST(N'1965-08-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (168, N'Whitmarsh', CAST(N'1962-05-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (169, N'Shrubshall', CAST(N'1992-01-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (170, N'Bliss', CAST(N'1967-10-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (171, N'Dimnage', CAST(N'1978-08-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (172, N'Audenis', CAST(N'1959-11-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (173, N'Pymar', CAST(N'1978-01-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (174, N'Seakes', CAST(N'1977-04-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (175, N'Yvon', CAST(N'2000-08-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (176, N'Jerzycowski', CAST(N'1960-05-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (177, N'Alesio', CAST(N'1960-10-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (178, N'Cordie', CAST(N'1994-03-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (179, N'Parlour', CAST(N'1990-12-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (180, N'Garrad', CAST(N'1958-02-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (181, N'Filyashin', CAST(N'1951-07-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (182, N'Addicott', CAST(N'1978-02-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (183, N'Dymidowski', CAST(N'1954-10-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (184, N'Whitwood', CAST(N'1964-09-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (185, N'Truckell', CAST(N'1952-11-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (186, N'Kapelhoff', CAST(N'1976-07-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (187, N'Ingley', CAST(N'1976-11-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (188, N'Deeprose', CAST(N'1971-07-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (189, N'Woodvine', CAST(N'1977-04-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (190, N'Forster', CAST(N'1965-10-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (191, N'Boulden', CAST(N'1957-12-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (192, N'Cassedy', CAST(N'1962-11-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (193, N'Clere', CAST(N'1986-10-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (194, N'Pitt', CAST(N'1992-12-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (195, N'Roskruge', CAST(N'1992-01-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (196, N'Halcro', CAST(N'1967-07-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (197, N'Radbourn', CAST(N'1957-01-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (198, N'Sirkett', CAST(N'1964-06-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (199, N'Couling', CAST(N'1952-10-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (200, N'Perrington', CAST(N'1997-04-02' AS Date))
GO
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (201, N'Brundrett', CAST(N'1981-08-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (202, N'Bagster', CAST(N'1988-03-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (203, N'Lippiello', CAST(N'1983-08-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (204, N'Dionisii', CAST(N'1994-03-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (205, N'Oswell', CAST(N'1962-10-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (206, N'Fairfoot', CAST(N'1951-07-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (207, N'Guild', CAST(N'1979-01-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (208, N'Mould', CAST(N'1960-09-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (209, N'Votier', CAST(N'1968-07-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (210, N'Vannoort', CAST(N'1953-09-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (211, N'Tappor', CAST(N'1993-07-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (212, N'Harnes', CAST(N'1966-11-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (213, N'Piche', CAST(N'1983-04-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (214, N'Appleyard', CAST(N'1960-03-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (215, N'Bendtsen', CAST(N'1980-09-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (216, N'Cours', CAST(N'1962-08-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (217, N'Phaup', CAST(N'1985-04-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (218, N'Pude', CAST(N'1989-03-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (219, N'Franzini', CAST(N'2000-11-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (220, N'Ballantine', CAST(N'1991-11-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (221, N'Louis', CAST(N'1990-06-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (222, N'Darben', CAST(N'1972-03-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (223, N'MacSweeney', CAST(N'1986-10-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (224, N'Konrad', CAST(N'1970-03-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (225, N'De Giorgi', CAST(N'1960-11-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (226, N'Wallett', CAST(N'1992-03-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (227, N'Beddow', CAST(N'1972-09-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (228, N'Cruz', CAST(N'1970-08-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (229, N'Clewes', CAST(N'1985-05-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (230, N'Louys', CAST(N'1966-12-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (231, N'Kintzel', CAST(N'1961-04-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (232, N'Lorroway', CAST(N'1964-12-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (233, N'Gartshore', CAST(N'1984-08-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (234, N'Alchin', CAST(N'1965-04-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (235, N'Brislan', CAST(N'1951-11-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (236, N'Cleever', CAST(N'1999-04-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (237, N'Cato', CAST(N'1951-05-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (238, N'Windley', CAST(N'1953-11-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (239, N'Harral', CAST(N'1958-07-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (240, N'Bartczak', CAST(N'1957-05-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (241, N'Simonutti', CAST(N'1977-03-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (242, N'Standingford', CAST(N'1979-01-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (243, N'Budgeon', CAST(N'1962-10-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (244, N'Aickin', CAST(N'1975-04-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (245, N'Sampey', CAST(N'1974-04-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (246, N'Vango', CAST(N'1985-02-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (247, N'Graundisson', CAST(N'1955-01-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (248, N'Tight', CAST(N'1950-04-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (249, N'Erdely', CAST(N'1988-10-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (250, N'Peat', CAST(N'1955-08-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (251, N'Ritchley', CAST(N'1982-05-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (252, N'McGreay', CAST(N'1974-09-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (253, N'Aim', CAST(N'1963-11-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (254, N'Renard', CAST(N'1955-08-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (255, N'Costain', CAST(N'1965-01-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (256, N'Allain', CAST(N'1984-02-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (257, N'McGrann', CAST(N'1993-06-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (258, N'McGaughie', CAST(N'1956-04-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (259, N'Joplin', CAST(N'1952-02-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (260, N'Milburne', CAST(N'1976-08-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (261, N'Killock', CAST(N'1995-04-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (262, N'Verman', CAST(N'1958-02-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (263, N'Casetti', CAST(N'1990-06-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (264, N'Reicherz', CAST(N'1982-01-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (265, N'Castro', CAST(N'1953-11-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (266, N'Stanway', CAST(N'1980-12-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (267, N'Deware', CAST(N'1959-04-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (268, N'Ruffler', CAST(N'1959-05-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (269, N'Gatlin', CAST(N'1971-10-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (270, N'Yanin', CAST(N'1985-10-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (271, N'Brotherwood', CAST(N'1974-04-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (272, N'Phippin', CAST(N'1969-04-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (273, N'Kobes', CAST(N'1996-03-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (274, N'Tampling', CAST(N'1997-09-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (275, N'Hollingsby', CAST(N'1961-07-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (276, N'Dearnaley', CAST(N'1993-02-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (277, N'O''Duilleain', CAST(N'1986-07-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (278, N'Dunsmuir', CAST(N'1980-09-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (279, N'Mussalli', CAST(N'1962-07-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (280, N'Heyfield', CAST(N'1969-07-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (281, N'Iskov', CAST(N'1969-03-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (282, N'Bogges', CAST(N'1951-09-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (283, N'Marriner', CAST(N'1962-08-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (284, N'Allgood', CAST(N'1963-09-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (285, N'Ingleby', CAST(N'1954-04-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (286, N'Torrese', CAST(N'1987-07-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (287, N'Bosma', CAST(N'1996-12-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (288, N'Marzelle', CAST(N'1957-09-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (289, N'Ible', CAST(N'1995-10-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (290, N'Ranshaw', CAST(N'1987-11-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (291, N'Eastby', CAST(N'1998-09-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (292, N'Huet', CAST(N'1987-12-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (293, N'Tawton', CAST(N'1957-03-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (294, N'Greenhow', CAST(N'1963-11-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (295, N'Saiger', CAST(N'1972-08-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (296, N'O''Hannen', CAST(N'1988-08-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (297, N'Kordas', CAST(N'1977-11-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (298, N'Fogarty', CAST(N'1951-10-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (299, N'Roache', CAST(N'1959-06-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (300, N'Braithwait', CAST(N'1960-07-26' AS Date))
GO
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (301, N'Cullity', CAST(N'1959-09-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (302, N'Fullerton', CAST(N'1997-01-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (303, N'Weatherell', CAST(N'1996-02-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (304, N'Grissett', CAST(N'1966-12-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (305, N'Zanotti', CAST(N'1992-12-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (306, N'Jeens', CAST(N'1955-01-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (307, N'Fenny', CAST(N'1972-12-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (308, N'Benford', CAST(N'1950-04-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (309, N'Blunt', CAST(N'1973-10-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (310, N'Fullagar', CAST(N'1955-08-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (311, N'Leavry', CAST(N'1969-09-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (312, N'Golsthorp', CAST(N'1979-08-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (313, N'Saker', CAST(N'1987-05-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (314, N'Jenny', CAST(N'1962-08-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (315, N'Boobyer', CAST(N'1984-10-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (316, N'Scruby', CAST(N'1986-10-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (317, N'Ferrand', CAST(N'1955-05-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (318, N'Chupin', CAST(N'1982-02-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (319, N'Courvert', CAST(N'1960-06-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (320, N'Roskell', CAST(N'1995-11-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (321, N'Buzin', CAST(N'1961-02-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (322, N'Minihan', CAST(N'1951-01-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (323, N'Ference', CAST(N'1988-11-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (324, N'Barukh', CAST(N'1995-02-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (325, N'Pedlow', CAST(N'1970-10-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (326, N'Onthank', CAST(N'1987-06-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (327, N'Whiscard', CAST(N'1992-10-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (328, N'Kofax', CAST(N'1955-01-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (329, N'Spurryer', CAST(N'1985-08-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (330, N'Pickless', CAST(N'1987-12-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (331, N'Pitkeathley', CAST(N'1952-03-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (332, N'Thistleton', CAST(N'1953-04-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (333, N'Allright', CAST(N'1954-03-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (334, N'Spinke', CAST(N'1956-08-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (335, N'Rowthorne', CAST(N'1980-05-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (336, N'Sommerled', CAST(N'1991-01-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (337, N'Louca', CAST(N'1973-05-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (338, N'Beaves', CAST(N'1950-12-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (339, N'Tineman', CAST(N'1957-06-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (340, N'Sidsaff', CAST(N'1980-09-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (341, N'Roseaman', CAST(N'1966-11-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (342, N'Duling', CAST(N'1975-07-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (343, N'Perrin', CAST(N'1957-12-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (344, N'Rimmington', CAST(N'1963-01-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (345, N'Laurentin', CAST(N'1999-06-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (346, N'Lyne', CAST(N'1968-10-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (347, N'Somes', CAST(N'1963-05-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (348, N'Gladstone', CAST(N'1972-07-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (349, N'Thewys', CAST(N'1998-09-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (350, N'Tellenbroker', CAST(N'1994-09-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (351, N'Jaeggi', CAST(N'1966-03-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (352, N'Kuban', CAST(N'1966-08-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (353, N'Offell', CAST(N'1972-06-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (354, N'MacMorland', CAST(N'1986-05-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (355, N'Tremolieres', CAST(N'1984-09-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (356, N'Steenson', CAST(N'1982-04-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (357, N'McCulley', CAST(N'1955-12-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (358, N'Addams', CAST(N'1991-10-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (359, N'Mailey', CAST(N'1965-09-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (360, N'Noweak', CAST(N'1976-12-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (361, N'McDonough', CAST(N'1958-06-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (362, N'Pauling', CAST(N'1977-03-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (363, N'Pepler', CAST(N'1958-01-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (364, N'Brixey', CAST(N'1958-06-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (365, N'Hulmes', CAST(N'1985-11-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (366, N'O''Cassidy', CAST(N'1957-05-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (367, N'Bairnsfather', CAST(N'1964-07-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (368, N'Gavrielli', CAST(N'1999-02-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (369, N'Tompion', CAST(N'1997-12-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (370, N'Doull', CAST(N'1960-09-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (371, N'Phlippsen', CAST(N'1984-08-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (372, N'Cockhill', CAST(N'1972-07-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (373, N'Coulthart', CAST(N'1958-03-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (374, N'Lowdeane', CAST(N'1976-06-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (375, N'Pounds', CAST(N'1968-04-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (376, N'Torricina', CAST(N'1992-03-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (377, N'Sineath', CAST(N'1972-04-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (378, N'Poone', CAST(N'1997-03-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (379, N'Dell Casa', CAST(N'1979-03-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (380, N'Beany', CAST(N'1982-05-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (381, N'Rowlinson', CAST(N'1988-09-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (382, N'Di Francesco', CAST(N'1983-09-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (383, N'Shallcroff', CAST(N'1956-12-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (384, N'Reinbech', CAST(N'1971-04-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (385, N'Dexter', CAST(N'1963-12-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (386, N'Ecclestone', CAST(N'1994-01-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (387, N'Buncher', CAST(N'1977-11-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (388, N'Liggens', CAST(N'1962-09-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (389, N'Favill', CAST(N'1977-12-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (390, N'Jonathon', CAST(N'1977-06-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (391, N'Grindell', CAST(N'1955-06-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (392, N'Pecey', CAST(N'1989-09-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (393, N'Kenforth', CAST(N'1961-04-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (394, N'Northbridge', CAST(N'1950-06-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (395, N'Fildes', CAST(N'1983-07-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (396, N'Ballendine', CAST(N'1960-02-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (397, N'Glasspoole', CAST(N'1955-10-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (398, N'Hustings', CAST(N'1956-09-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (399, N'Dudding', CAST(N'1972-09-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (400, N'Matuska', CAST(N'1990-11-28' AS Date))
GO
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (401, N'McGinley', CAST(N'1977-10-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (402, N'Gouny', CAST(N'1977-10-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (403, N'Mustin', CAST(N'1955-06-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (404, N'Summerfield', CAST(N'1986-10-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (405, N'Catlette', CAST(N'1988-09-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (406, N'Moquin', CAST(N'1955-02-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (407, N'Arnault', CAST(N'1968-12-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (408, N'Yurivtsev', CAST(N'1950-07-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (409, N'Dunnet', CAST(N'1995-02-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (410, N'Hennington', CAST(N'1976-06-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (411, N'Murfett', CAST(N'1981-08-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (412, N'Schulter', CAST(N'1979-06-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (413, N'Humerstone', CAST(N'1969-03-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (414, N'Belding', CAST(N'1966-06-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (415, N'Gunner', CAST(N'1961-02-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (416, N'Helgass', CAST(N'1965-04-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (417, N'Lemonby', CAST(N'1982-04-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (418, N'Foulks', CAST(N'1997-01-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (419, N'Whitham', CAST(N'1996-10-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (420, N'Crome', CAST(N'1951-10-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (421, N'Harryman', CAST(N'1957-09-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (422, N'Bavridge', CAST(N'1992-11-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (423, N'Whittall', CAST(N'2000-01-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (424, N'Ciccoloi', CAST(N'1986-12-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (425, N'Caughey', CAST(N'1991-11-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (426, N'Ianinotti', CAST(N'1989-07-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (427, N'Bretelle', CAST(N'1973-04-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (428, N'Bottrell', CAST(N'1956-03-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (429, N'Kristufek', CAST(N'1961-08-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (430, N'Manwell', CAST(N'1989-12-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (431, N'Douche', CAST(N'1975-06-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (432, N'Bedlington', CAST(N'1956-04-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (433, N'Cowgill', CAST(N'1965-11-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (434, N'Greatrex', CAST(N'1966-07-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (435, N'Gordon', CAST(N'1963-10-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (436, N'Van Saltsberg', CAST(N'1972-07-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (437, N'Moland', CAST(N'1993-01-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (438, N'Balf', CAST(N'1971-07-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (439, N'Jiran', CAST(N'1981-10-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (440, N'Lehrmann', CAST(N'1959-11-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (441, N'Lazenby', CAST(N'1964-01-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (442, N'Nuttey', CAST(N'1950-01-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (443, N'Copperwaite', CAST(N'1987-11-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (444, N'Lammiman', CAST(N'1982-05-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (445, N'Batteson', CAST(N'1972-05-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (446, N'Kores', CAST(N'1969-04-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (447, N'Sharper', CAST(N'1982-08-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (448, N'Royans', CAST(N'1987-08-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (449, N'Meenehan', CAST(N'1971-07-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (450, N'Lehrer', CAST(N'1988-05-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (451, N'Slemmonds', CAST(N'1999-12-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (452, N'Yersin', CAST(N'1989-01-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (453, N'Bride', CAST(N'1961-06-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (454, N'Shilstone', CAST(N'1994-11-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (455, N'Gerrelt', CAST(N'1982-01-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (456, N'Lavelle', CAST(N'1983-05-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (457, N'Cudiff', CAST(N'1986-10-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (458, N'Osmond', CAST(N'1999-06-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (459, N'Lanney', CAST(N'1979-03-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (460, N'Lanaway', CAST(N'1990-02-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (461, N'Hargroves', CAST(N'1997-02-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (462, N'Clarkin', CAST(N'1953-07-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (463, N'Inglesant', CAST(N'1978-03-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (464, N'Ruprich', CAST(N'1993-12-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (465, N'McGrah', CAST(N'1979-08-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (466, N'Scorer', CAST(N'1984-07-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (467, N'Grigolashvill', CAST(N'1984-12-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (468, N'Di Baudi', CAST(N'1964-04-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (469, N'Killwick', CAST(N'1960-05-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (470, N'Leggen', CAST(N'1986-10-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (471, N'Moreside', CAST(N'1987-08-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (472, N'Ellison', CAST(N'1962-10-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (473, N'Bullman', CAST(N'1981-01-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (474, N'Caris', CAST(N'1965-04-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (475, N'Perse', CAST(N'1968-01-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (476, N'Griffith', CAST(N'1960-08-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (477, N'Dugall', CAST(N'1968-09-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (478, N'Abbot', CAST(N'1980-03-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (479, N'Southerns', CAST(N'1984-06-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (480, N'Shemming', CAST(N'1965-05-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (481, N'Eddins', CAST(N'1959-09-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (482, N'Berrisford', CAST(N'1980-10-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (483, N'Albion', CAST(N'1971-04-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (484, N'Akerman', CAST(N'1975-09-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (485, N'Aimeric', CAST(N'1977-08-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (486, N'Maberley', CAST(N'1998-04-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (487, N'Loverock', CAST(N'1966-02-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (488, N'Blincoe', CAST(N'1981-12-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (489, N'Newbury', CAST(N'1990-05-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (490, N'Stennes', CAST(N'1975-09-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (491, N'Snelle', CAST(N'1959-02-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (492, N'Bradbeer', CAST(N'2000-11-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (493, N'Koenen', CAST(N'1970-05-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (494, N'Rabley', CAST(N'1997-04-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (495, N'Killock', CAST(N'1956-12-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (496, N'Meredyth', CAST(N'1970-01-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (497, N'Gissing', CAST(N'1989-01-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (498, N'Minocchi', CAST(N'1996-05-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (499, N'Attenburrow', CAST(N'1954-12-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (500, N'Kinnon', CAST(N'1969-01-17' AS Date))
GO
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (501, N'Lintall', CAST(N'1957-06-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (502, N'Kubanek', CAST(N'1961-09-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (503, N'Wodeland', CAST(N'1997-09-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (504, N'Shadfourth', CAST(N'1959-03-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (505, N'Blackstock', CAST(N'1956-08-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (506, N'Boshell', CAST(N'1988-04-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (507, N'Twigge', CAST(N'1987-11-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (508, N'Billison', CAST(N'1980-11-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (509, N'Gallimore', CAST(N'1993-10-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (510, N'Mole', CAST(N'1964-04-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (511, N'Kuschel', CAST(N'1950-12-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (512, N'Rippingall', CAST(N'1968-12-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (513, N'Ohm', CAST(N'1966-02-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (514, N'Scedall', CAST(N'1964-11-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (515, N'Chisholm', CAST(N'1956-07-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (516, N'Noot', CAST(N'1992-05-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (517, N'Gutherson', CAST(N'1977-11-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (518, N'Riseborough', CAST(N'1972-04-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (519, N'Halford', CAST(N'1991-04-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (520, N'Darbey', CAST(N'1950-10-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (521, N'Chart', CAST(N'1994-06-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (522, N'Casterton', CAST(N'1992-01-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (523, N'Dyball', CAST(N'1959-08-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (524, N'Folkerts', CAST(N'1994-01-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (525, N'Yeatman', CAST(N'1961-03-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (526, N'Fouracre', CAST(N'1971-12-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (527, N'Bennough', CAST(N'1982-02-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (528, N'Ackred', CAST(N'1986-09-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (529, N'Twitty', CAST(N'1964-02-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (530, N'Sherlock', CAST(N'1983-04-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (531, N'Tunstall', CAST(N'1994-02-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (532, N'Handaside', CAST(N'1990-08-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (533, N'Merrydew', CAST(N'1981-07-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (534, N'Illidge', CAST(N'1994-02-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (535, N'Castillon', CAST(N'1985-04-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (536, N'Offa', CAST(N'1963-12-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (537, N'Eunson', CAST(N'1984-08-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (538, N'Kilbourn', CAST(N'2000-07-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (539, N'Magnay', CAST(N'1997-11-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (540, N'Mapson', CAST(N'1962-01-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (541, N'Feyer', CAST(N'1979-04-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (542, N'McKevin', CAST(N'1952-07-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (543, N'le Keux', CAST(N'1976-10-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (544, N'Elvy', CAST(N'1959-10-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (545, N'Penwarden', CAST(N'1977-11-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (546, N'Cummine', CAST(N'1989-02-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (547, N'Osgar', CAST(N'1972-12-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (548, N'Bolliver', CAST(N'1987-05-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (549, N'Knivett', CAST(N'1962-05-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (550, N'Lyddiatt', CAST(N'1988-12-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (551, N'Shepperd', CAST(N'1964-11-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (552, N'Danigel', CAST(N'1963-02-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (553, N'Vanichkin', CAST(N'1972-08-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (554, N'Steuhlmeyer', CAST(N'1973-10-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (555, N'Finn', CAST(N'1976-09-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (556, N'Couvert', CAST(N'1998-01-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (557, N'Greatland', CAST(N'1964-06-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (558, N'Naden', CAST(N'1975-11-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (559, N'Huitson', CAST(N'1987-05-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (560, N'Speake', CAST(N'1985-01-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (561, N'Benzi', CAST(N'1978-08-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (562, N'Dornin', CAST(N'1987-07-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (563, N'Shirley', CAST(N'1986-12-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (564, N'Feetham', CAST(N'1961-11-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (565, N'Winterbotham', CAST(N'1973-05-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (566, N'Beilby', CAST(N'1952-01-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (567, N'Jeal', CAST(N'1995-01-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (568, N'Rayburn', CAST(N'1970-08-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (569, N'Mayzes', CAST(N'1972-06-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (570, N'Nelhams', CAST(N'1988-01-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (571, N'Somerset', CAST(N'1967-06-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (572, N'Goss', CAST(N'1985-01-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (573, N'Hawyes', CAST(N'1998-07-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (574, N'Haycox', CAST(N'1963-08-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (575, N'Chatten', CAST(N'1983-12-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (576, N'Eskriet', CAST(N'1996-08-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (577, N'Curnucke', CAST(N'1980-02-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (578, N'Rainon', CAST(N'1982-07-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (579, N'Capron', CAST(N'1980-01-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (580, N'Thieme', CAST(N'1961-08-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (581, N'Danilishin', CAST(N'1989-12-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (582, N'Lode', CAST(N'1997-09-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (583, N'Scutching', CAST(N'1988-12-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (584, N'Hindenberger', CAST(N'1972-10-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (585, N'Ellice', CAST(N'1970-02-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (586, N'Chiplen', CAST(N'1972-09-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (587, N'Renison', CAST(N'1964-12-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (588, N'Willmore', CAST(N'1963-01-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (589, N'Coopland', CAST(N'1977-01-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (590, N'Bewshea', CAST(N'1984-12-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (591, N'Reith', CAST(N'1960-01-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (592, N'Whiting', CAST(N'1953-01-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (593, N'Sturney', CAST(N'1976-04-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (594, N'Erlam', CAST(N'1969-03-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (595, N'Berriman', CAST(N'1954-04-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (596, N'Castagnone', CAST(N'1974-07-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (597, N'Naisbet', CAST(N'1955-12-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (598, N'Manis', CAST(N'1980-08-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (599, N'James', CAST(N'1969-12-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (600, N'Hatry', CAST(N'1959-11-17' AS Date))
GO
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (601, N'Shaddock', CAST(N'1980-03-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (602, N'Rakes', CAST(N'1969-05-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (603, N'Goodinson', CAST(N'1993-06-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (604, N'Frid', CAST(N'1969-08-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (605, N'Espadater', CAST(N'1972-03-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (606, N'Guidini', CAST(N'1959-07-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (607, N'Micklewicz', CAST(N'1969-01-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (608, N'Teaze', CAST(N'1992-04-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (609, N'Drabble', CAST(N'1965-08-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (610, N'Du Plantier', CAST(N'1963-09-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (611, N'Riddiford', CAST(N'1956-07-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (612, N'Mulcock', CAST(N'1953-07-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (613, N'McShee', CAST(N'1955-12-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (614, N'Scyone', CAST(N'1996-05-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (615, N'Cranny', CAST(N'1964-07-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (616, N'Crosthwaite', CAST(N'1951-08-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (617, N'Dufour', CAST(N'1983-05-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (618, N'Skip', CAST(N'1978-11-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (619, N'Cassimer', CAST(N'1974-04-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (620, N'Busse', CAST(N'1952-12-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (621, N'Garlett', CAST(N'1992-05-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (622, N'Redan', CAST(N'1994-10-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (623, N'Lunny', CAST(N'1996-11-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (624, N'Tyne', CAST(N'1988-08-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (625, N'Kidson', CAST(N'1988-08-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (626, N'Kainz', CAST(N'1995-01-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (627, N'Barltrop', CAST(N'1963-01-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (628, N'Toman', CAST(N'1966-08-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (629, N'Ciciari', CAST(N'1971-08-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (630, N'Gregoriou', CAST(N'1950-08-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (631, N'Corwood', CAST(N'1983-08-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (632, N'Verring', CAST(N'1986-03-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (633, N'Damerell', CAST(N'1964-02-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (634, N'Frickey', CAST(N'2000-05-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (635, N'Bellew', CAST(N'1971-02-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (636, N'Whittock', CAST(N'1974-01-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (637, N'Kiljan', CAST(N'1970-11-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (638, N'Keaveney', CAST(N'1972-02-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (639, N'Kingsley', CAST(N'1958-04-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (640, N'Bierling', CAST(N'1984-06-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (641, N'Ridgers', CAST(N'1971-04-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (642, N'Danjoie', CAST(N'1958-02-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (643, N'Awton', CAST(N'1976-06-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (644, N'Oppery', CAST(N'1983-11-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (645, N'Fellows', CAST(N'1965-08-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (646, N'Adam', CAST(N'1950-11-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (647, N'Delucia', CAST(N'1974-06-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (648, N'Mullan', CAST(N'1964-08-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (649, N'Erington', CAST(N'1988-05-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (650, N'Bamlett', CAST(N'1982-01-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (651, N'Coey', CAST(N'1953-07-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (652, N'Grombridge', CAST(N'1969-02-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (653, N'MacCallum', CAST(N'1967-07-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (654, N'Colecrough', CAST(N'1989-12-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (655, N'Milesop', CAST(N'1982-07-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (656, N'Delgaty', CAST(N'1964-03-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (657, N'Ganter', CAST(N'1974-08-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (658, N'Kittle', CAST(N'1956-12-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (659, N'De Matteis', CAST(N'1977-02-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (660, N'Brockington', CAST(N'1961-01-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (661, N'Zarfati', CAST(N'1983-11-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (662, N'Lody', CAST(N'1973-12-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (663, N'Bedle', CAST(N'1964-09-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (664, N'Slaney', CAST(N'1979-09-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (665, N'Molder', CAST(N'1967-07-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (666, N'MacKaig', CAST(N'1959-05-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (667, N'Hurles', CAST(N'1960-12-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (668, N'Eastment', CAST(N'1996-08-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (669, N'Waszczykowski', CAST(N'1990-08-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (670, N'Allred', CAST(N'1954-09-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (671, N'Borres', CAST(N'1969-12-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (672, N'Dawltrey', CAST(N'2000-04-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (673, N'Alexander', CAST(N'1956-01-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (674, N'Dysert', CAST(N'1977-01-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (675, N'Joska', CAST(N'1965-09-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (676, N'Waslin', CAST(N'2000-02-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (677, N'Adolphine', CAST(N'1958-04-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (678, N'Kedge', CAST(N'1969-06-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (679, N'Gawen', CAST(N'1961-04-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (680, N'Fibbit', CAST(N'1976-08-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (681, N'Weems', CAST(N'1975-07-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (682, N'Lalevee', CAST(N'1954-10-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (683, N'Stanbra', CAST(N'1965-06-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (684, N'Mytton', CAST(N'1972-12-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (685, N'Birkmyr', CAST(N'1998-11-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (686, N'Rannigan', CAST(N'1950-01-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (687, N'O''Day', CAST(N'1985-05-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (688, N'Orritt', CAST(N'1974-12-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (689, N'Ramplee', CAST(N'1978-12-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (690, N'Clooney', CAST(N'1991-01-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (691, N'Handley', CAST(N'1950-11-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (692, N'Pattrick', CAST(N'1965-10-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (693, N'Askew', CAST(N'1982-06-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (694, N'Scopyn', CAST(N'1959-06-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (695, N'Gresty', CAST(N'1964-01-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (696, N'Tschirschky', CAST(N'1985-03-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (697, N'Cheesworth', CAST(N'1969-08-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (698, N'Climance', CAST(N'1987-06-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (699, N'Anderbrugge', CAST(N'1982-07-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (700, N'Alf', CAST(N'1971-10-22' AS Date))
GO
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (701, N'Wimsett', CAST(N'1977-01-31' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (702, N'Vooght', CAST(N'1951-11-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (703, N'Paulton', CAST(N'1998-12-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (704, N'Throssell', CAST(N'1951-07-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (705, N'Peattie', CAST(N'1972-06-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (706, N'Russe', CAST(N'1965-06-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (707, N'Buessen', CAST(N'1970-06-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (708, N'Wadsworth', CAST(N'1982-12-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (709, N'Compston', CAST(N'1968-04-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (710, N'Scibsey', CAST(N'1996-05-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (711, N'Livesey', CAST(N'1951-04-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (712, N'Ragborne', CAST(N'1964-06-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (713, N'Jahnel', CAST(N'1982-10-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (714, N'Mazey', CAST(N'1960-10-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (715, N'Blest', CAST(N'1952-11-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (716, N'Oxx', CAST(N'1977-11-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (717, N'Sturzaker', CAST(N'1957-04-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (718, N'Chalcot', CAST(N'1958-11-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (719, N'Caze', CAST(N'1989-05-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (720, N'Heynen', CAST(N'1984-06-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (721, N'Everal', CAST(N'2000-03-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (722, N'Totterdill', CAST(N'1986-10-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (723, N'Cobleigh', CAST(N'1971-11-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (724, N'Spittall', CAST(N'1971-08-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (725, N'Taffurelli', CAST(N'1983-11-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (726, N'Greenlies', CAST(N'1951-05-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (727, N'Marven', CAST(N'1990-10-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (728, N'Warrell', CAST(N'1973-11-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (729, N'Adams', CAST(N'1959-09-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (730, N'Sollam', CAST(N'2000-07-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (731, N'Sherringham', CAST(N'1970-06-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (732, N'Bute', CAST(N'1995-03-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (733, N'Sattin', CAST(N'1965-02-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (734, N'Leemans', CAST(N'1977-12-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (735, N'Coolahan', CAST(N'1973-01-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (736, N'Swanston', CAST(N'1988-08-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (737, N'Sawden', CAST(N'1955-02-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (738, N'Fawdrie', CAST(N'1983-12-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (739, N'Bauman', CAST(N'1953-07-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (740, N'Yard', CAST(N'1990-10-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (741, N'Dudding', CAST(N'1988-08-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (742, N'Lansdown', CAST(N'1981-06-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (743, N'Bareford', CAST(N'1961-06-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (744, N'MacCleay', CAST(N'1950-06-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (745, N'Lubman', CAST(N'1961-11-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (746, N'Rugg', CAST(N'1989-06-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (747, N'Sapsed', CAST(N'1998-07-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (748, N'Skipperbottom', CAST(N'1966-02-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (749, N'Bampfield', CAST(N'1979-05-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (750, N'Simpkins', CAST(N'1989-04-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (751, N'Swanborough', CAST(N'1993-10-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (752, N'Crass', CAST(N'1985-02-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (753, N'Mathonnet', CAST(N'1994-05-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (754, N'Roxby', CAST(N'1975-04-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (755, N'Peers', CAST(N'1977-06-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (756, N'Marjanovic', CAST(N'1969-10-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (757, N'Carhart', CAST(N'1994-11-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (758, N'Parratt', CAST(N'1972-09-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (759, N'Ohrt', CAST(N'1952-05-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (760, N'Golds', CAST(N'1954-05-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (761, N'Mudie', CAST(N'1999-06-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (762, N'Padilla', CAST(N'1977-10-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (763, N'Beert', CAST(N'1998-05-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (764, N'Willerstone', CAST(N'1971-09-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (765, N'Arro', CAST(N'1968-01-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (766, N'Kinsey', CAST(N'1979-05-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (767, N'Kerswill', CAST(N'1989-01-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (768, N'Tadgell', CAST(N'1979-01-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (769, N'Cureton', CAST(N'1950-08-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (770, N'Bendall', CAST(N'1992-08-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (771, N'Orthmann', CAST(N'2000-01-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (772, N'Claydon', CAST(N'1952-05-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (773, N'Gerlts', CAST(N'1959-05-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (774, N'Struss', CAST(N'1991-10-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (775, N'Matthiae', CAST(N'1975-01-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (776, N'Clineck', CAST(N'1996-07-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (777, N'Feldhorn', CAST(N'1996-10-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (778, N'Blick', CAST(N'1973-12-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (779, N'Patient', CAST(N'1991-07-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (780, N'Friese', CAST(N'1991-06-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (781, N'Beacon', CAST(N'1987-04-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (782, N'Connerly', CAST(N'1964-02-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (783, N'Goodsir', CAST(N'1993-02-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (784, N'Gaynsford', CAST(N'1980-06-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (785, N'Mabbott', CAST(N'1985-07-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (786, N'Buckles', CAST(N'1976-06-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (787, N'Gasquoine', CAST(N'1977-06-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (788, N'Kasperski', CAST(N'1968-02-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (789, N'Janeway', CAST(N'1991-01-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (790, N'McConnal', CAST(N'1954-09-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (791, N'Godfray', CAST(N'1963-04-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (792, N'Madden', CAST(N'1954-08-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (793, N'Faill', CAST(N'1960-03-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (794, N'Di Maggio', CAST(N'1994-09-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (795, N'Blackham', CAST(N'1956-10-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (796, N'Boness', CAST(N'1991-06-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (797, N'Littley', CAST(N'1969-11-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (798, N'Willey', CAST(N'1954-01-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (799, N'Loakes', CAST(N'1990-01-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (800, N'Enderlein', CAST(N'1974-09-14' AS Date))
GO
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (801, N'Hillam', CAST(N'1958-08-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (802, N'Haggus', CAST(N'1988-12-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (803, N'Dearlove', CAST(N'1968-10-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (804, N'Worviell', CAST(N'1985-02-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (805, N'Massow', CAST(N'1986-02-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (806, N'Hindrich', CAST(N'1996-08-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (807, N'Hindenberger', CAST(N'1994-03-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (808, N'Burberye', CAST(N'1966-03-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (809, N'Mawditt', CAST(N'1993-11-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (810, N'Swannack', CAST(N'1994-04-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (811, N'Naisey', CAST(N'1953-04-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (812, N'Renney', CAST(N'1997-02-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (813, N'Goudman', CAST(N'1957-04-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (814, N'Dikes', CAST(N'1982-01-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (815, N'Johnson', CAST(N'1983-07-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (816, N'MacKall', CAST(N'1968-04-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (817, N'Manns', CAST(N'1974-08-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (818, N'Halston', CAST(N'1957-01-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (819, N'Sepey', CAST(N'1955-08-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (820, N'Wedlock', CAST(N'1998-02-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (821, N'Mathieu', CAST(N'1973-03-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (822, N'MacDavitt', CAST(N'1968-10-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (823, N'Hembery', CAST(N'1979-08-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (824, N'Dyble', CAST(N'1951-07-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (825, N'Relfe', CAST(N'1982-09-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (826, N'Boater', CAST(N'1951-06-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (827, N'Wakerley', CAST(N'1952-01-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (828, N'Wakeman', CAST(N'1982-12-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (829, N'Keller', CAST(N'1969-10-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (830, N'Damerell', CAST(N'1961-11-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (831, N'Cornbell', CAST(N'1978-07-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (832, N'Lemme', CAST(N'1987-08-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (833, N'Cheavin', CAST(N'1978-03-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (834, N'Ridgley', CAST(N'1986-10-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (835, N'Fallen', CAST(N'1977-12-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (836, N'Ashborne', CAST(N'1987-11-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (837, N'Goublier', CAST(N'1997-08-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (838, N'Gwilym', CAST(N'1959-11-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (839, N'Gahagan', CAST(N'1951-08-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (840, N'Poynton', CAST(N'2000-01-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (841, N'Stollwerck', CAST(N'1985-07-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (842, N'Driutti', CAST(N'1968-09-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (843, N'Leonida', CAST(N'1971-03-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (844, N'Delagua', CAST(N'1992-02-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (845, N'McClenaghan', CAST(N'1956-04-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (846, N'Becaris', CAST(N'1967-05-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (847, N'Ansett', CAST(N'1950-08-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (848, N'Coplestone', CAST(N'1951-06-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (849, N'Siggee', CAST(N'1965-04-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (850, N'Lofts', CAST(N'1962-05-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (851, N'Pammenter', CAST(N'1977-04-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (852, N'Smythe', CAST(N'1996-08-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (853, N'Arno', CAST(N'1976-05-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (854, N'Swift', CAST(N'1961-01-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (855, N'Iggulden', CAST(N'1961-11-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (856, N'Backson', CAST(N'1984-01-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (857, N'Backhurst', CAST(N'1993-03-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (858, N'Tighe', CAST(N'1965-05-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (859, N'Lawland', CAST(N'1980-11-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (860, N'Elen', CAST(N'1995-07-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (861, N'Egerton', CAST(N'1961-01-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (862, N'Ryton', CAST(N'1950-04-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (863, N'Casale', CAST(N'1973-12-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (864, N'Eyre', CAST(N'1950-05-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (865, N'Kinnaird', CAST(N'1966-10-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (866, N'Wonter', CAST(N'1977-05-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (867, N'Heinzel', CAST(N'1983-09-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (868, N'Discombe', CAST(N'1989-08-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (869, N'Pudner', CAST(N'1995-03-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (870, N'Bramwell', CAST(N'1958-08-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (871, N'Berns', CAST(N'1990-09-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (872, N'Himsworth', CAST(N'1994-10-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (873, N'Tringham', CAST(N'1970-02-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (874, N'Dumbelton', CAST(N'1994-05-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (875, N'Coulthurst', CAST(N'1956-01-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (876, N'Chiechio', CAST(N'1978-07-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (877, N'Cestard', CAST(N'1978-08-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (878, N'Reary', CAST(N'1997-08-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (879, N'Pidgley', CAST(N'1955-01-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (880, N'McMahon', CAST(N'1953-10-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (881, N'Beentjes', CAST(N'1953-11-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (882, N'Langfitt', CAST(N'1993-07-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (883, N'Lefeaver', CAST(N'1971-08-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (884, N'Cabell', CAST(N'1983-03-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (885, N'Fieldstone', CAST(N'1961-07-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (886, N'Zelner', CAST(N'1954-06-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (887, N'Cortes', CAST(N'1983-08-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (888, N'Siebert', CAST(N'1950-08-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (889, N'Belhomme', CAST(N'1985-07-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (890, N'Brome', CAST(N'1960-02-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (891, N'Frankcomb', CAST(N'1959-05-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (892, N'Corryer', CAST(N'1951-02-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (893, N'Shimwell', CAST(N'1966-12-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (894, N'Burree', CAST(N'1974-03-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (895, N'Coon', CAST(N'1992-07-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (896, N'Challin', CAST(N'1974-06-23' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (897, N'Gollop', CAST(N'1995-04-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (898, N'Ponten', CAST(N'1969-11-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (899, N'Hallows', CAST(N'1993-02-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (900, N'Sinderland', CAST(N'1975-12-13' AS Date))
GO
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (901, N'Batterton', CAST(N'1987-01-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (902, N'Mecozzi', CAST(N'1979-08-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (903, N'Kubasek', CAST(N'1954-03-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (904, N'Wiper', CAST(N'1959-06-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (905, N'Cleft', CAST(N'1969-10-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (906, N'Craighall', CAST(N'1959-09-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (907, N'Sessuns', CAST(N'1996-11-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (908, N'Puddle', CAST(N'1967-07-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (909, N'Aslett', CAST(N'1983-02-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (910, N'Yes', CAST(N'1992-12-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (911, N'Ancliff', CAST(N'1984-07-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (912, N'Garrow', CAST(N'1999-07-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (913, N'Gundry', CAST(N'1995-04-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (914, N'Cruwys', CAST(N'1969-08-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (915, N'Wingatt', CAST(N'1992-09-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (916, N'Szantho', CAST(N'1998-04-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (917, N'Postians', CAST(N'1979-05-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (918, N'Stedson', CAST(N'1966-11-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (919, N'Measor', CAST(N'1984-05-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (920, N'Scurry', CAST(N'1993-06-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (921, N'Caulket', CAST(N'1965-04-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (922, N'Barke', CAST(N'1958-04-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (923, N'Antosik', CAST(N'1950-02-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (924, N'Berryman', CAST(N'1953-06-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (925, N'Leather', CAST(N'1951-10-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (926, N'Buckles', CAST(N'1999-04-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (927, N'Guiu', CAST(N'1981-05-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (928, N'Caldayrou', CAST(N'1984-04-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (929, N'Otterwell', CAST(N'1978-12-09' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (930, N'Idenden', CAST(N'1984-03-01' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (931, N'Wychard', CAST(N'1997-06-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (932, N'Dominey', CAST(N'1974-12-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (933, N'Varcoe', CAST(N'1998-06-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (934, N'Matsell', CAST(N'1994-01-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (935, N'Cawthron', CAST(N'1966-11-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (936, N'Joron', CAST(N'1969-12-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (937, N'Traill', CAST(N'1960-06-20' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (938, N'Jeffers', CAST(N'2000-11-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (939, N'Faye', CAST(N'1950-07-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (940, N'Hinrichsen', CAST(N'2000-05-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (941, N'Limbourne', CAST(N'1977-04-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (942, N'Douthwaite', CAST(N'1954-02-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (943, N'Klosges', CAST(N'1962-03-06' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (944, N'Jeannot', CAST(N'1982-02-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (945, N'Wear', CAST(N'1964-03-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (946, N'Gonnet', CAST(N'1967-09-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (947, N'Chesser', CAST(N'1973-04-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (948, N'Proschke', CAST(N'1958-01-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (949, N'Assiratti', CAST(N'1994-08-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (950, N'Aylmore', CAST(N'1973-11-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (951, N'Nettleship', CAST(N'1995-04-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (952, N'Judron', CAST(N'1997-12-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (953, N'Sowersby', CAST(N'1981-06-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (954, N'Beneix', CAST(N'1970-10-22' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (955, N'Zanetti', CAST(N'1981-05-12' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (956, N'Vassbender', CAST(N'1952-09-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (957, N'Brodnecke', CAST(N'1969-05-30' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (958, N'Alger', CAST(N'1950-12-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (959, N'Maymond', CAST(N'1968-05-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (960, N'Sutterfield', CAST(N'1998-03-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (961, N'Garth', CAST(N'1964-08-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (962, N'Feronet', CAST(N'1994-02-15' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (963, N'Maddrell', CAST(N'1970-02-17' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (964, N'Beeching', CAST(N'1951-07-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (965, N'Puckinghorne', CAST(N'1975-04-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (966, N'Le Houx', CAST(N'1968-04-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (967, N'Grewer', CAST(N'1962-04-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (968, N'Edmund', CAST(N'1965-01-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (969, N'Madders', CAST(N'1964-11-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (970, N'Shellard', CAST(N'1965-09-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (971, N'Negro', CAST(N'1990-08-08' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (972, N'Abbys', CAST(N'1978-08-14' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (973, N'Sandwich', CAST(N'1971-02-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (974, N'Leader', CAST(N'1977-11-16' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (975, N'Orpen', CAST(N'1987-01-11' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (976, N'Besset', CAST(N'1982-12-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (977, N'Rummins', CAST(N'1969-05-28' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (978, N'Bowness', CAST(N'1955-06-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (979, N'Leys', CAST(N'1996-11-25' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (980, N'Coxon', CAST(N'1968-09-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (981, N'Medhurst', CAST(N'1960-02-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (982, N'Joburn', CAST(N'1994-11-07' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (983, N'Geraudel', CAST(N'1993-09-18' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (984, N'Wilhelmy', CAST(N'1969-06-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (985, N'Bugg', CAST(N'1991-11-24' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (986, N'Braunlein', CAST(N'1965-12-29' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (987, N'Eminson', CAST(N'1982-04-21' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (988, N'Sabie', CAST(N'1957-06-27' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (989, N'Jeff', CAST(N'1955-10-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (990, N'Cowgill', CAST(N'1998-04-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (991, N'Jefferys', CAST(N'1962-12-10' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (992, N'Angless', CAST(N'1964-03-02' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (993, N'Gover', CAST(N'1969-03-03' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (994, N'Sleet', CAST(N'1953-03-19' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (995, N'Hanks', CAST(N'1964-10-13' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (996, N'Bedell', CAST(N'1971-12-04' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (997, N'Clawe', CAST(N'1984-08-26' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (998, N'Castanaga', CAST(N'1968-07-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (999, N'Limrick', CAST(N'1984-11-05' AS Date))
INSERT [dbo].[client_manager] ([Manager_id], [manager_name], [date_of_birth]) VALUES (1000, N'Beese', CAST(N'1973-05-04' AS Date))
GO
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (1, 200, CAST(N'2020-07-27' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (2, 68, CAST(N'2020-12-22' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (3, 73, CAST(N'2020-03-19' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (4, 174, CAST(N'2019-05-27' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (5, 189, CAST(N'2020-11-17' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (6, 163, CAST(N'2020-03-23' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (7, 97, CAST(N'2019-11-06' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (8, 111, CAST(N'2019-07-28' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (9, 51, CAST(N'2019-06-10' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (10, 16, CAST(N'2019-01-03' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (11, 161, CAST(N'2020-01-14' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (12, 168, CAST(N'2020-01-17' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (13, 25, CAST(N'2020-02-26' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (14, 192, CAST(N'2020-03-03' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (15, 135, CAST(N'2020-12-01' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (16, 33, CAST(N'2019-03-05' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (17, 140, CAST(N'2020-12-01' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (18, 164, CAST(N'2019-08-20' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (19, 32, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (20, 105, CAST(N'2020-08-15' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (21, 88, CAST(N'2019-12-21' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (22, 49, CAST(N'2019-12-08' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (23, 123, CAST(N'2020-03-21' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (24, 98, CAST(N'2019-11-10' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (25, 161, CAST(N'2019-08-23' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (26, 104, CAST(N'2019-02-03' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (27, 119, CAST(N'2020-01-30' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (28, 143, CAST(N'2020-08-04' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (29, 111, CAST(N'2019-04-20' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (30, 10, CAST(N'2019-12-17' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (31, 127, CAST(N'2019-11-26' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (32, 112, CAST(N'2019-07-28' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (33, 172, CAST(N'2019-11-30' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (34, 174, CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (35, 148, CAST(N'2020-07-10' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (36, 158, CAST(N'2019-02-17' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (37, 12, CAST(N'2020-01-08' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (38, 164, CAST(N'2020-09-25' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (39, 41, CAST(N'2019-04-17' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (40, 111, CAST(N'2020-12-12' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (41, 173, CAST(N'2020-12-06' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (42, 61, CAST(N'2020-08-31' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (43, 68, CAST(N'2020-10-07' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (44, 25, CAST(N'2020-02-27' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (45, 70, CAST(N'2020-05-14' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (46, 120, CAST(N'2019-02-17' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (47, 21, CAST(N'2020-11-05' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (48, 124, CAST(N'2020-05-28' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (49, 57, CAST(N'2019-11-02' AS Date))
INSERT [dbo].[Client_Manager_relationships] ([Relationship_ID], [Manager_id], [date]) VALUES (50, 17, CAST(N'2019-07-02' AS Date))
GO
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (1, N'Salgar', N'Colombia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (2, N'Horni Sucha', N'Czech Republic', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (3, N'Ngantru', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (4, N'Fengcheng', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (5, N'Dao’er', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (6, N'Hendijan', N'Iran', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (7, N'Jingyu', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (8, N'Shanban', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (9, N'Banes', N'Cuba', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (10, N'Rive-de-Gier', N'France', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (11, N'Hajeom', N'South Korea', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (12, N'Xiaohe', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (13, N'Bayanhoshuu', N'Mongolia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (14, N'Kolochava', N'Ukraine', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (15, N'Shangxing', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (16, N'El Escanito', N'Honduras', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (17, N'Dorotea', N'Sweden', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (18, N'Huaiyuan Chengguanzhen', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (19, N'Krasnyy Oktyabr’', N'Russia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (20, N'Zhangjiafan', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (21, N'Nancun', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (22, N'Kebon', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (23, N'Rivera', N'Colombia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (24, N'Montfort-sur-Meu', N'France', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (25, N'Alpatovo', N'Russia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (26, N'Bilicenii Vechi', N'Moldova', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (27, N'Hamberang Sabrang', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (28, N'Mikro Monastiri', N'Greece', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (29, N'Vila Franca de Xira', N'Portugal', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (30, N'Bailang', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (31, N'Maxu', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (32, N'Machinga', N'Malawi', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (33, N'Chapultepec', N'Mexico', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (34, N'Solntsevo', N'Russia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (35, N'Kezilei', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (36, N'Leteki', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (37, N'Shaozhai', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (38, N'Gagah', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (39, N'Lahan', N'Nepal', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (40, N'Moglice', N'Albania', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (41, N'Banjar Sedang', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (42, N'Gerakarou', N'Greece', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (43, N'New York City', N'United States', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (44, N'Shalya', N'Russia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (45, N'Tangxia', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (46, N'Balboa', N'Colombia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (47, N'Keboireng', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (48, N'Ar Ruways', N'United Arab Emirates', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (49, N'Maogang', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (50, N'Thanh Ph Ba Ra', N'Vietnam', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (51, N'Zarya', N'Russia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (52, N'Shalizhai', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (53, N'Totok', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (54, N'Xitieshan', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (55, N'Pyrgetos', N'Greece', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (56, N'Masindi', N'Uganda', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (57, N'Nice', N'France', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (58, N'Mamoudzou', N'Mayotte', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (59, N'Gaozhou', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (60, N'Bitica', N'Equatorial Guinea', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (61, N'Mezhevoy', N'Russia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (62, N'Jelat', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (63, N'Caringin', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (64, N'Rio Gallegos', N'Argentina', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (65, N'Sakerta Timur', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (66, N'Krajan Battal', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (67, N'Shenwan', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (68, N'Gongjiang', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (69, N'Miaoling', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (70, N'Baru', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (71, N'Zvezdara', N'Serbia', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (72, N'Magdeburg', N'Germany', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (73, N'Singaparna', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (74, N'Kara Suu', N'Kyrgyzstan', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (75, N'Speightstown', N'Barbados', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (76, N'Francisco I Madero', N'Mexico', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (77, N'Estreito', N'Brazil', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (78, N'Pampierstad', N'South Africa', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (79, N'El Galpon', N'Argentina', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (80, N'Chamalieres', N'France', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (81, N'Darkovice', N'Czech Republic', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (82, N'Youshan', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (83, N'Cahors', N'France', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (84, N'Wilamowice', N'Poland', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (85, N'Kuantian', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (86, N'Ustyuzhna', N'Russia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (87, N'Blagoevgrad', N'Bulgaria', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (88, N'San Jose', N'Mexico', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (89, N'Kumai', N'Indonesia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (90, N'Segovia', N'Colombia', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (91, N'Kyperounta', N'Cyprus', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (92, N'Cheb', N'Czech Republic', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (93, N'Nangang', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (94, N'Surkhet', N'Nepal', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (95, N'Shangtang', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (96, N'Luozhou', N'China', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (97, N'Mucumpiz', N'Venezuela', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (98, N'Lubrza', N'Poland', 1)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (99, N'Benghazi', N'Libya', 0)
INSERT [dbo].[destination] ([Destination_id], [city], [country], [required_visa]) VALUES (100, N'Lingion', N'Philippines', 0)
GO
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (1, N'The Oberoi Udaivilas', N'4634 Crest Line Pass', 3, 41)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (2, N'Baros', N'2 Mesta Street', 3, 13)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (3, N'Armani Hotel', N'8689 Schiller Circle', 5, 25)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (4, N'Mriya Resort & Spa', N'7 Golf Course Junction', 4, 71)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (5, N'Dukes', N'1 Gale Trail', 3, 29)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (6, N'Peninsula', N'9 Goodland Alley', 5, 65)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (7, N'Finch Bay', N'0 Trailsway Drive', 4, 57)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (8, N'The Venetian', N'69422 Graedel Trail', 4, 14)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (9, N'San Clemente Palace', N'3 Oak Valley Plaza', 5, 72)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (10, N'Angel’s Marmaris', N'30942 Burning Wood Drive', 5, 75)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (11, N'
Riu Festival', N'55055 Bartillon Drive', 5, 32)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (12, N'
Xenon Inn', N'6 Jana Place', 3, 56)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (13, N'
The Suite Apart Hotel', N'6118 Scott Way', 3, 59)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (14, N'
Maxx Royal ', N'1 Montana Terrace', 3, 73)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (15, N'
InterContinental', N'35028 Lunder Drive', 3, 65)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (16, N'
Elli Bay Hotel', N'686 Lukken Court', 4, 74)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (17, N'
Gloria Verde', N'073 Hauk Trail', 4, 61)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (18, N'
Rixos Sungate', N'34 Scoville Park', 4, 50)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (19, N'
Le Meridien', N'7629 Brown Way', 4, 59)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (20, N'
Potidea Palace', N'5 Thackeray Road', 5, 29)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (21, N'
Ostria Beach', N'2068 Forster Point', 3, 35)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (22, N'
Sol Guadalupe', N'6744 Straubel Way', 4, 16)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (23, N'
Pilot Beach Resort', N'64 Scoville Trail', 3, 59)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (24, N'
Charmillion Gardens Aqua Par', N'18 Rutledge Avenue', 5, 27)
INSERT [dbo].[Hotels] ([Hotel_id], [Hotel_name], [address], [Stars], [Destination_id]) VALUES (25, N'
Atlantica Imperial Resort ', N'77 Loeprich Point', 4, 76)
GO
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (1, NULL, 4, CAST(N'2019-01-20' AS Date), 1)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (2, NULL, 2, CAST(N'2019-09-15' AS Date), 2)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (3, NULL, 2, CAST(N'2019-12-12' AS Date), 3)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (4, NULL, 4, CAST(N'2019-09-11' AS Date), 4)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (5, NULL, 3, CAST(N'2019-06-02' AS Date), 5)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (6, NULL, 2, CAST(N'2019-03-25' AS Date), 6)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (7, NULL, 2, CAST(N'2019-05-11' AS Date), 7)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (8, NULL, 2, CAST(N'2019-10-12' AS Date), 8)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (9, NULL, 3, CAST(N'2019-08-08' AS Date), 9)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (10, NULL, 4, CAST(N'2019-05-20' AS Date), 10)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (11, NULL, 2, CAST(N'2019-09-07' AS Date), 11)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (12, NULL, 4, CAST(N'2019-09-20' AS Date), 12)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (13, NULL, 1, CAST(N'2019-06-12' AS Date), 13)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (14, NULL, 2, CAST(N'2019-07-06' AS Date), 14)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (15, NULL, 1, CAST(N'2019-09-10' AS Date), 15)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (16, NULL, 3, CAST(N'2019-10-07' AS Date), 16)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (17, NULL, 1, CAST(N'2019-09-27' AS Date), 17)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (18, NULL, 4, CAST(N'2019-01-11' AS Date), 18)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (19, NULL, 2, CAST(N'2019-09-01' AS Date), 19)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (20, NULL, 2, CAST(N'2019-01-12' AS Date), 20)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (21, NULL, 2, CAST(N'2019-11-17' AS Date), 21)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (22, NULL, 2, CAST(N'2019-01-06' AS Date), 22)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (23, NULL, 2, CAST(N'2019-11-19' AS Date), 23)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (24, NULL, 1, CAST(N'2019-10-07' AS Date), 24)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (25, NULL, 2, CAST(N'2019-06-08' AS Date), 25)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (26, NULL, 2, CAST(N'2019-10-11' AS Date), 26)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (27, NULL, 1, CAST(N'2019-02-27' AS Date), 27)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (28, NULL, 4, CAST(N'2019-02-22' AS Date), 28)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (29, NULL, 2, CAST(N'2019-05-07' AS Date), 29)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (30, NULL, 2, CAST(N'2019-07-03' AS Date), 30)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (31, NULL, 2, CAST(N'2019-09-07' AS Date), 31)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (32, NULL, 1, CAST(N'2019-10-08' AS Date), 32)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (33, NULL, 2, CAST(N'2019-09-19' AS Date), 33)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (34, NULL, 2, CAST(N'2019-03-08' AS Date), 34)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (35, NULL, 4, CAST(N'2019-01-10' AS Date), 35)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (36, NULL, 3, CAST(N'2019-03-23' AS Date), 36)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (37, NULL, 2, CAST(N'2019-05-13' AS Date), 37)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (38, NULL, 3, CAST(N'2019-01-03' AS Date), 38)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (39, NULL, 4, CAST(N'2019-09-12' AS Date), 39)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (40, NULL, 1, CAST(N'2019-12-04' AS Date), 40)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (41, NULL, 1, CAST(N'2019-05-12' AS Date), 41)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (42, NULL, 4, CAST(N'2019-04-27' AS Date), 42)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (43, NULL, 3, CAST(N'2019-07-01' AS Date), 43)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (44, NULL, 3, CAST(N'2019-12-01' AS Date), 44)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (45, NULL, 4, CAST(N'2019-12-11' AS Date), 45)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (46, NULL, 4, CAST(N'2019-06-07' AS Date), 46)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (47, NULL, 4, CAST(N'2019-05-21' AS Date), 47)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (48, NULL, 1, CAST(N'2019-07-04' AS Date), 48)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (49, NULL, 4, CAST(N'2019-03-11' AS Date), 49)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (50, NULL, 2, CAST(N'2019-01-27' AS Date), 50)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (51, NULL, 2, CAST(N'2019-08-11' AS Date), 51)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (52, NULL, 2, CAST(N'2019-05-02' AS Date), 52)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (53, NULL, 3, CAST(N'2019-11-26' AS Date), 53)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (54, NULL, 1, CAST(N'2019-04-14' AS Date), 54)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (55, NULL, 2, CAST(N'2019-11-19' AS Date), 55)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (56, NULL, 3, CAST(N'2019-03-15' AS Date), 56)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (57, NULL, 2, CAST(N'2019-06-11' AS Date), 57)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (58, NULL, 1, CAST(N'2019-10-04' AS Date), 58)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (59, NULL, 2, CAST(N'2019-10-06' AS Date), 59)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (60, NULL, 3, CAST(N'2019-07-15' AS Date), 60)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (61, NULL, 2, CAST(N'2019-02-15' AS Date), 61)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (62, NULL, 1, CAST(N'2019-09-19' AS Date), 62)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (63, NULL, 2, CAST(N'2019-01-19' AS Date), 63)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (64, NULL, 2, CAST(N'2019-05-27' AS Date), 64)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (65, NULL, 3, CAST(N'2019-12-14' AS Date), 65)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (66, NULL, 2, CAST(N'2019-01-01' AS Date), 66)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (67, NULL, 2, CAST(N'2019-05-01' AS Date), 67)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (68, NULL, 1, CAST(N'2019-10-22' AS Date), 68)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (69, NULL, 2, CAST(N'2019-07-30' AS Date), 69)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (70, NULL, 2, CAST(N'2019-01-19' AS Date), 70)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (71, NULL, 2, CAST(N'2019-04-02' AS Date), 71)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (72, NULL, 3, CAST(N'2019-07-05' AS Date), 72)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (73, NULL, 3, CAST(N'2019-07-18' AS Date), 73)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (74, NULL, 1, CAST(N'2019-03-24' AS Date), 74)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (75, NULL, 4, CAST(N'2019-03-07' AS Date), 75)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (76, NULL, 1, CAST(N'2019-11-12' AS Date), 76)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (77, NULL, 4, CAST(N'2019-05-25' AS Date), 77)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (78, NULL, 3, CAST(N'2019-09-28' AS Date), 78)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (79, NULL, 4, CAST(N'2019-01-01' AS Date), 79)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (80, NULL, 1, CAST(N'2019-06-03' AS Date), 80)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (81, NULL, 1, CAST(N'2019-05-11' AS Date), 81)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (82, NULL, 1, CAST(N'2019-04-02' AS Date), 82)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (83, NULL, 2, CAST(N'2019-07-11' AS Date), 83)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (84, NULL, 3, CAST(N'2019-06-01' AS Date), 84)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (85, NULL, 2, CAST(N'2019-08-05' AS Date), 85)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (86, NULL, 3, CAST(N'2019-10-02' AS Date), 86)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (87, NULL, 4, CAST(N'2019-08-02' AS Date), 87)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (88, NULL, 1, CAST(N'2019-01-06' AS Date), 88)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (89, NULL, 4, CAST(N'2019-11-02' AS Date), 89)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (90, NULL, 4, CAST(N'2019-04-02' AS Date), 90)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (91, NULL, 2, CAST(N'2019-11-02' AS Date), 91)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (92, NULL, 1, CAST(N'2019-11-29' AS Date), 92)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (93, NULL, 4, CAST(N'2019-04-01' AS Date), 93)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (94, NULL, 1, CAST(N'2019-08-11' AS Date), 94)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (95, NULL, 4, CAST(N'2019-02-10' AS Date), 95)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (96, NULL, 2, CAST(N'2019-06-13' AS Date), 96)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (97, NULL, 1, CAST(N'2019-07-15' AS Date), 97)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (98, NULL, 3, CAST(N'2019-07-09' AS Date), 98)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (99, NULL, 3, CAST(N'2019-02-05' AS Date), 99)
INSERT [dbo].[Payment] ([payment_id], [payment_amount], [payment_status_id], [Date], [Booking_id]) VALUES (100, NULL, 2, CAST(N'2019-04-23' AS Date), 100)
GO
INSERT [dbo].[Payment method] ([payment_status_id], [payment_status_type]) VALUES (1, N'Fully Paid')
INSERT [dbo].[Payment method] ([payment_status_id], [payment_status_type]) VALUES (2, N'1/2 Paid')
INSERT [dbo].[Payment method] ([payment_status_id], [payment_status_type]) VALUES (3, N'1/4 Paid')
INSERT [dbo].[Payment method] ([payment_status_id], [payment_status_type]) VALUES (4, N'Not Paid')
GO
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (1, 5, N'Single', 70.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (2, 22, N'Double', 110.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (3, 15, N'Double', 120.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (4, 18, N'Double', 160.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (5, 22, N'Family', 210.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (6, 2, N'Double', 175.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (7, 8, N'Double', 85.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (8, 24, N'Double', 130.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (9, 17, N'Family', 240.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (10, 1, N'Double', 145.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (11, 13, N'Family', 135.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (12, 6, N'Single', 50.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (13, 4, N'Single', 150.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (14, 4, N'Double', 200.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (15, 2, N'Family', 230.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (16, 4, N'Family', 110.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (17, 23, N'Family', 80.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (18, 8, N'Single', 100.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (19, 8, N'Family', 215.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (20, 9, N'Family', 195.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (21, 3, N'Double', 135.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (22, 25, N'Family', 160.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (23, 21, N'Single', 110.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (24, 11, N'Double', 180.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (25, 18, N'Single', 60.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (26, 13, N'Single', 90.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (27, 23, N'Single', 80.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (28, 17, N'Single', 150.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (29, 15, N'Family', 190.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (30, 3, N'Single', 55.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (31, 13, N'Double', 140.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (32, 1, N'Family', 60.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (33, 9, N'Double', 90.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (34, 22, N'Luxe', 260.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (35, 16, N'Family', 120.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (36, 11, N'Family', 80.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (37, 13, N'Luxe', 180.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (38, 8, N'Luxe', 150.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (39, 3, N'Family', 150.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (40, 9, N'Single', 80.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (41, 9, N'Luxe', 160.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (42, 15, N'Single', 175.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (43, 10, N'Double', 120.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (44, 3, N'Luxe', 200.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (45, 18, N'Family', 190.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (46, 13, N'Presedential', 200.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (47, 7, N'Family', 175.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (48, 25, N'Single', 100.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (49, 20, N'Family', 100.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (50, 21, N'Family', 130.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (51, 10, N'Family', 210.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (52, 7, N'Double', 120.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (53, 5, N'Double', 155.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (54, 25, N'Double', 125.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (55, 22, N'Single', 105.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (56, 21, N'Luxe', 145.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (57, 5, N'Family', 120.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (58, 3, N'Presedential', 240.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (59, 8, N'Presedential', 220.0000)
INSERT [dbo].[Rooms] ([Room_id], [Hotel_id], [Room_type], [Room_price]) VALUES (60, 19, N'Family', 150.0000)
GO
ALTER TABLE [dbo].[Additiomal_services_price]  WITH CHECK ADD  CONSTRAINT [FK_Additiomal_services_price_Additional_Services] FOREIGN KEY([AS_id])
REFERENCES [dbo].[Additional_Services] ([AS_id])
GO
ALTER TABLE [dbo].[Additiomal_services_price] CHECK CONSTRAINT [FK_Additiomal_services_price_Additional_Services]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Client] FOREIGN KEY([Client_id])
REFERENCES [dbo].[Client] ([Client_id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Client]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Rooms] FOREIGN KEY([Room_id])
REFERENCES [dbo].[Rooms] ([Room_id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Rooms]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [R_11] FOREIGN KEY([Destination_id])
REFERENCES [dbo].[destination] ([Destination_id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [R_11]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [R_14] FOREIGN KEY([AS_id])
REFERENCES [dbo].[Additional_Services] ([AS_id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [R_14]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [R_23] FOREIGN KEY([Relationship_ID])
REFERENCES [dbo].[Client_Manager_relationships] ([Relationship_ID])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [R_23]
GO
ALTER TABLE [dbo].[Client_Manager_relationships]  WITH CHECK ADD  CONSTRAINT [R_21] FOREIGN KEY([Manager_id])
REFERENCES [dbo].[client_manager] ([Manager_id])
GO
ALTER TABLE [dbo].[Client_Manager_relationships] CHECK CONSTRAINT [R_21]
GO
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD  CONSTRAINT [FK_Hotels_destination] FOREIGN KEY([Destination_id])
REFERENCES [dbo].[destination] ([Destination_id])
GO
ALTER TABLE [dbo].[Hotels] CHECK CONSTRAINT [FK_Hotels_destination]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Payment Status] FOREIGN KEY([payment_status_id])
REFERENCES [dbo].[Payment method] ([payment_status_id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Payment Status]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [R_19] FOREIGN KEY([Booking_id])
REFERENCES [dbo].[Bookings] ([Booking_id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [R_19]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [R_17] FOREIGN KEY([Hotel_id])
REFERENCES [dbo].[Hotels] ([Hotel_id])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [R_17]
GO
/****** Object:  StoredProcedure [dbo].[dd]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dd]
AS
begin
update [dbo].[Bookings]
set days = convert (int, DATEDIFF( DAY, [start_date],[end_date]))
end;
GO
/****** Object:  Trigger [dbo].[tD_Additional_Services]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tD_Additional_Services] ON [dbo].[Additional_Services] FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Additional_Services */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Additional_Services  Bookings on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00011130", PARENT_OWNER="", PARENT_TABLE="Additional_Services"
    CHILD_OWNER="", CHILD_TABLE="Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_14", FK_COLUMNS="AS_id" */
    IF EXISTS (
      SELECT * FROM deleted,Bookings
      WHERE
        /*  %JoinFKPK(Bookings,deleted," = "," AND") */
        Bookings.AS_id = deleted.AS_id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Additional_Services because Bookings exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END
GO
ALTER TABLE [dbo].[Additional_Services] ENABLE TRIGGER [tD_Additional_Services]
GO
/****** Object:  Trigger [dbo].[tU_Additional_Services]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tU_Additional_Services] ON [dbo].[Additional_Services] FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Additional_Services */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insAS_id integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Additional_Services  Bookings on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00011e46", PARENT_OWNER="", PARENT_TABLE="Additional_Services"
    CHILD_OWNER="", CHILD_TABLE="Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_14", FK_COLUMNS="AS_id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(AS_id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Bookings
      WHERE
        /*  %JoinFKPK(Bookings,deleted," = "," AND") */
        Bookings.AS_id = deleted.AS_id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Additional_Services because Bookings exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END
GO
ALTER TABLE [dbo].[Additional_Services] ENABLE TRIGGER [tU_Additional_Services]
GO
/****** Object:  Trigger [dbo].[tD_Client]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE TRIGGER [dbo].[tD_Client] ON [dbo].[Client] FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Client */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Bookings  Client on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00014514", PARENT_OWNER="", PARENT_TABLE="Bookings"
    CHILD_OWNER="", CHILD_TABLE="Client"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="Booking_id" */
    IF EXISTS (SELECT * FROM deleted,Bookings
      WHERE
        /* %JoinFKPK(deleted,Bookings," = "," AND") */
        deleted.Booking_id = Bookings.Booking_id AND
        NOT EXISTS (
          SELECT * FROM Client
          WHERE
            /* %JoinFKPK(Client,Bookings," = "," AND") */
            Client.Booking_id = Bookings.Booking_id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Client because Bookings exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

GO
ALTER TABLE [dbo].[Client] ENABLE TRIGGER [tD_Client]
GO
/****** Object:  Trigger [dbo].[tU_Client]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[tU_Client] ON [dbo].[Client] FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Client */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insClient_id integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Bookings  Client on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00018bdc", PARENT_OWNER="", PARENT_TABLE="Bookings"
    CHILD_OWNER="", CHILD_TABLE="Client"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="Booking_id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Booking_id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Bookings
        WHERE
          /* %JoinFKPK(inserted,Bookings) */
          inserted.Booking_id = Bookings.Booking_id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Booking_id IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Client because Bookings does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

GO
ALTER TABLE [dbo].[Client] ENABLE TRIGGER [tU_Client]
GO
/****** Object:  Trigger [dbo].[tD_client_manager]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tD_client_manager] ON [dbo].[client_manager] FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on client_manager */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* client_manager  Client_Manager_relationships on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001430d", PARENT_OWNER="", PARENT_TABLE="client_manager"
    CHILD_OWNER="", CHILD_TABLE="Client_Manager_relationships"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="Manager_id" */
    IF EXISTS (
      SELECT * FROM deleted,Client_Manager_relationships
      WHERE
        /*  %JoinFKPK(Client_Manager_relationships,deleted," = "," AND") */
        Client_Manager_relationships.Manager_id = deleted.Manager_id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete client_manager because Client_Manager_relationships exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END
GO
ALTER TABLE [dbo].[client_manager] ENABLE TRIGGER [tD_client_manager]
GO
/****** Object:  Trigger [dbo].[tU_client_manager]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tU_client_manager] ON [dbo].[client_manager] FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on client_manager */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insManager_id integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* client_manager  Client_Manager_relationships on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00015cf9", PARENT_OWNER="", PARENT_TABLE="client_manager"
    CHILD_OWNER="", CHILD_TABLE="Client_Manager_relationships"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="Manager_id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Manager_id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Client_Manager_relationships
      WHERE
        /*  %JoinFKPK(Client_Manager_relationships,deleted," = "," AND") */
        Client_Manager_relationships.Manager_id = deleted.Manager_id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update client_manager because Client_Manager_relationships exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END
GO
ALTER TABLE [dbo].[client_manager] ENABLE TRIGGER [tU_client_manager]
GO
/****** Object:  Trigger [dbo].[tD_Client_Manager_relationships]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE TRIGGER [dbo].[tD_Client_Manager_relationships] ON [dbo].[Client_Manager_relationships] FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Client_Manager_relationships */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Client_Manager_relationships  Bookings on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00029e08", PARENT_OWNER="", PARENT_TABLE="Client_Manager_relationships"
    CHILD_OWNER="", CHILD_TABLE="Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="Relationship_ID" */
    IF EXISTS (
      SELECT * FROM deleted,Bookings
      WHERE
        /*  %JoinFKPK(Bookings,deleted," = "," AND") */
        Bookings.Relationship_ID = deleted.Relationship_ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Client_Manager_relationships because Bookings exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* client_manager  Client_Manager_relationships on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="client_manager"
    CHILD_OWNER="", CHILD_TABLE="Client_Manager_relationships"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="Manager_id" */
    IF EXISTS (SELECT * FROM deleted,client_manager
      WHERE
        /* %JoinFKPK(deleted,client_manager," = "," AND") */
        deleted.Manager_id = client_manager.Manager_id AND
        NOT EXISTS (
          SELECT * FROM Client_Manager_relationships
          WHERE
            /* %JoinFKPK(Client_Manager_relationships,client_manager," = "," AND") */
            Client_Manager_relationships.Manager_id = client_manager.Manager_id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Client_Manager_relationships because client_manager exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

GO
ALTER TABLE [dbo].[Client_Manager_relationships] ENABLE TRIGGER [tD_Client_Manager_relationships]
GO
/****** Object:  Trigger [dbo].[tU_Client_Manager_relationships]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[tU_Client_Manager_relationships] ON [dbo].[Client_Manager_relationships] FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Client_Manager_relationships */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insRelationship_ID integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Client_Manager_relationships  Bookings on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002d36d", PARENT_OWNER="", PARENT_TABLE="Client_Manager_relationships"
    CHILD_OWNER="", CHILD_TABLE="Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="Relationship_ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Relationship_ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Bookings
      WHERE
        /*  %JoinFKPK(Bookings,deleted," = "," AND") */
        Bookings.Relationship_ID = deleted.Relationship_ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Client_Manager_relationships because Bookings exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* client_manager  Client_Manager_relationships on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="client_manager"
    CHILD_OWNER="", CHILD_TABLE="Client_Manager_relationships"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="Manager_id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Manager_id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,client_manager
        WHERE
          /* %JoinFKPK(inserted,client_manager) */
          inserted.Manager_id = client_manager.Manager_id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Manager_id IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Client_Manager_relationships because client_manager does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

GO
ALTER TABLE [dbo].[Client_Manager_relationships] ENABLE TRIGGER [tU_Client_Manager_relationships]
GO
/****** Object:  Trigger [dbo].[tD_Hotels]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tD_Hotels] ON [dbo].[Hotels] FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Hotels */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Hotels  Rooms on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00010455", PARENT_OWNER="", PARENT_TABLE="Hotels"
    CHILD_OWNER="", CHILD_TABLE="Rooms"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="Hotel_id" */
    IF EXISTS (
      SELECT * FROM deleted,Rooms
      WHERE
        /*  %JoinFKPK(Rooms,deleted," = "," AND") */
        Rooms.Hotel_id = deleted.Hotel_id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Hotels because Rooms exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END
GO
ALTER TABLE [dbo].[Hotels] ENABLE TRIGGER [tD_Hotels]
GO
/****** Object:  Trigger [dbo].[tU_Hotels]    Script Date: 14.06.2020 15:00:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tU_Hotels] ON [dbo].[Hotels] FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Hotels */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insHotel_id integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Hotels  Rooms on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000116cb", PARENT_OWNER="", PARENT_TABLE="Hotels"
    CHILD_OWNER="", CHILD_TABLE="Rooms"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="Hotel_id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Hotel_id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Rooms
      WHERE
        /*  %JoinFKPK(Rooms,deleted," = "," AND") */
        Rooms.Hotel_id = deleted.Hotel_id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Hotels because Rooms exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END
GO
ALTER TABLE [dbo].[Hotels] ENABLE TRIGGER [tU_Hotels]
GO
USE [master]
GO
ALTER DATABASE [Project] SET  READ_WRITE 
GO
