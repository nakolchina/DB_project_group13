﻿USE [master]
GO
/****** Object:  Database [Project]    Script Date: 08.06.2020 21:02:31 ******/
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
/****** Object:  Table [dbo].[Additional_Services]    Script Date: 08.06.2020 21:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Additional_Services](
	[AS_id] [int] NOT NULL,
	[Restaurants] [int] NULL,
	[Car_booking] [int] NULL,
	[Airlines] [int] NULL,
 CONSTRAINT [XPKAdditional_Services] PRIMARY KEY CLUSTERED 
(
	[AS_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 08.06.2020 21:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[Booking_id] [int] NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[days] [int] NULL,
	[number_of_people] [int] NULL,
	[Destitation_id] [int] NULL,
	[AS_id] [int] NULL,
	[Room_id] [int] NULL,
	[Relationship_ID] [int] NULL,
 CONSTRAINT [XPKBookings] PRIMARY KEY CLUSTERED 
(
	[Booking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 08.06.2020 21:02:32 ******/
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
	[Booking_id] [int] NULL,
 CONSTRAINT [XPKClient] PRIMARY KEY CLUSTERED 
(
	[Client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client_manager]    Script Date: 08.06.2020 21:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_manager](
	[Manager_id] [int] NOT NULL,
	[manager_name] [nvarchar](50) NULL,
	[date_of_birth] [datetime] NULL,
 CONSTRAINT [XPKclient_manager] PRIMARY KEY CLUSTERED 
(
	[Manager_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client_Manager_relationships]    Script Date: 08.06.2020 21:02:32 ******/
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
/****** Object:  Table [dbo].[destination]    Script Date: 08.06.2020 21:02:32 ******/
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
/****** Object:  Table [dbo].[Hotels]    Script Date: 08.06.2020 21:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Hotel_id] [int] NOT NULL,
	[address] [nvarchar](70) NULL,
	[Stars] [int] NULL,
 CONSTRAINT [XPKHotels] PRIMARY KEY CLUSTERED 
(
	[Hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 08.06.2020 21:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [char](18) NOT NULL,
	[payment_amount] [tinyint] NULL,
	[Date] [char](18) NULL,
	[Booking_id] [int] NULL,
 CONSTRAINT [XPKPayment] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 08.06.2020 21:02:32 ******/
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
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Rooms] FOREIGN KEY([Room_id])
REFERENCES [dbo].[Rooms] ([Room_id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Rooms]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [R_11] FOREIGN KEY([Destitation_id])
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
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [R_25] FOREIGN KEY([Booking_id])
REFERENCES [dbo].[Bookings] ([Booking_id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [R_25]
GO
ALTER TABLE [dbo].[Client_Manager_relationships]  WITH CHECK ADD  CONSTRAINT [R_21] FOREIGN KEY([Manager_id])
REFERENCES [dbo].[client_manager] ([Manager_id])
GO
ALTER TABLE [dbo].[Client_Manager_relationships] CHECK CONSTRAINT [R_21]
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
USE [master]
GO
ALTER DATABASE [Project] SET  READ_WRITE 
GO
