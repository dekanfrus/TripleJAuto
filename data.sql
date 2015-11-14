USE [master]
GO

CREATE DATABASE [Website]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Website', FILENAME = N'D:\RDSDBDATA\DATA\Website.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'Website_log', FILENAME = N'D:\RDSDBDATA\DATA\Website_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Website] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Website].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Website] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Website] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Website] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Website] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Website] SET ARITHABORT OFF 
GO

ALTER DATABASE [Website] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Website] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Website] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Website] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Website] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Website] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Website] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Website] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Website] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Website] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Website] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Website] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Website] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Website] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Website] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Website] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Website] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Website] SET RECOVERY FULL 
GO

ALTER DATABASE [Website] SET  MULTI_USER 
GO

ALTER DATABASE [Website] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Website] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Website] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Website] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Website] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Website] SET  READ_WRITE 
GO

USE [Website]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [Website]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Part](
	[PartID] [varchar](50) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[PartName] [varchar](50) NOT NULL,
	[PartCount] [int] NOT NULL,
	[PartCost] [float] NOT NULL,
	[PartDesc] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Part] PRIMARY KEY CLUSTERED 
(
	[PartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Part]  WITH CHECK ADD  CONSTRAINT [FK_Part_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO

ALTER TABLE [dbo].[Part] CHECK CONSTRAINT [FK_Part_Category]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserUsername] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserEmail] [nvarchar](50) NOT NULL,
	[UserFName] [nvarchar](50) NOT NULL,
	[UserLName] [nvarchar](50) NOT NULL,
	[UserStreet] [nvarchar](50) NOT NULL,
	[UserCity] [nvarchar](50) NOT NULL,
	[UserZip] [int] NOT NULL,
	[UserCountry] [nvarchar](50) NOT NULL,
	[UserPhone] [nchar](10) NOT NULL,
	[UserAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Website]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Review](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[PartID] [varchar](50) NOT NULL,
	[ReviewRating] [int] NOT NULL,
	[ReviewDesc] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Part] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO

ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Part]
GO

ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO

ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_User]
GO

USE [Website]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Wishlist](
	[PartID] [varchar](50) NOT NULL,
	[UserID] [int] NOT NULL,
	[WishlistName] [varchar](50) NOT NULL,
	[WishlistDesc] [varchar](250) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Part] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO

ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Part]
GO

ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO

ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_User]
GO

INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
VALUES ('GHopkins', 'Hopk!ns73', 'ghopkins@hopkins.net', 'Gene', 'Hopkins', 'USA', '112 Street', 'Corpus Christi', '78412', '3611234567');
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('Joker', 'Batman*Sucks1', 'jnicholson@joker.com', 'Jack', 'Nicholson', 'USA', '2933 Joker Drive', 'Atlanta', '78417', '3616465185');
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('Shifu', 'KungFu@IsB3st', 'shifu@kungfu.com', 'Dustin', 'Hoffman', 'Mexico', '4460 Shifu Street', 'Tijuana', '78402', '3617283165');
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('FGump', 'Bubb4.Gump*', 'chocolates@bgshrimp.com', 'Tom', 'Hanks', 'United Kingdom','3173 Lincoln Court', 'London', '78465', '3611303328');
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('Hannibal', 'P3opleRTasty)', 'Chef@hannibal.com', 'Anthony', 'Hopkins', 'New Zealand', '2982 Hannibal Street', 'Wellington', '78410', '3612695776');
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('MalcomX', 'Bl4ck.Power!', 'malcom@bpower.com', 'Denzel', 'Washington', 'USA', '6729 Unstoppable Ave', 'Seattle', '78416', '3618093010');
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('God', 'Sup4h!S3cur3*', 'god@almighty.com', 'Morgan', 'Freeman', 'USA', '9483 Sundance Drive', 'New York City' , '78414', '3613180737');
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('Flubber', 'C4pta!nH00k', 'president@tomdobbs.com', 'Robin', 'Williams', 'USA', '4551 Flubber Drive', 'San Diego', '78418', '3619062552');
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('Katniss', 'Arch3ry*is*B3st?', 'mockingjay@disctrict13.com', 'Jennifer', 'Lawrence', 'Panem', '6367 District Twelve Ave', 'D12', '78416', '3618726651');
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('PBunny', 'L!kesT0Pl4y&', 'easterbunny@playboy.com', 'Kate', 'Upton', 'USA', '6813 Playboy Court', 'Los Angeles', '76135', '3618162885');
	
INSERT INTO [Category] (CategoryName) VALUES ('A/C Compressor');
	INSERT INTO [Category] (CategoryName) VALUES ('A/C Clutch');
	INSERT INTO [Category] (CategoryName) VALUES ('A/C Expansion Valve');
	INSERT INTO [Category] (CategoryName) VALUES ('A/C Blower Motor');
	INSERT INTO [Category] (CategoryName) VALUES ('Brake Pads');
	INSERT INTO [Category] (CategoryName) VALUES ('Brake Rotors');
	INSERT INTO [Category] (CategoryName) VALUES ('Brake Calipers');
	INSERT INTO [Category] (CategoryName) VALUES ('Belts');
	INSERT INTO [Category] (CategoryName) VALUES ('Hoses');
	INSERT INTO [Category] (CategoryName) VALUES ('Battery');
	INSERT INTO [Category] (CategoryName) VALUES ('Battery Chargers');
	INSERT INTO [Category] (CategoryName) VALUES ('Battery Terminals');
	INSERT INTO [Category] (CategoryName) VALUES ('Body Parts');
	INSERT INTO [Category] (CategoryName) VALUES ('Fasteners');
	INSERT INTO [Category] (CategoryName) VALUES ('Paint');
	INSERT INTO [Category] (CategoryName) VALUES ('Mounts');
	INSERT INTO [Category] (CategoryName) VALUES ('Cylinder Heads');
	INSERT INTO [Category] (CategoryName) VALUES ('Camshafts & Cranks');
	INSERT INTO [Category] (CategoryName) VALUES ('Timing Parts');	
	INSERT INTO [Category] (CategoryName) VALUES ('Clamps');
	INSERT INTO [Category] (CategoryName) VALUES ('Pipe');
	INSERT INTO [Category] (CategoryName) VALUES ('Muffler');
	INSERT INTO [Category] (CategoryName) VALUES ('Tips');

-- A/C Compressor - ID 1
INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC001', '1', 'Compressor Works', '21', '194.99', 'Each unit is assembled with ICE32 lubricant to reduce internal friction promoting enhanced system performance and longevity.');
INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC002', '1', 'EverCo', '18', '209.99', 'Endurance tested the equivalent of 50k miles.');
-- A/C Clutch - ID 2
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC003', '2', 'Compressor Works', '7', '98.99', 'Coated to prevent corrosion and every coil is tested for proper ohms');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC004', '2', 'EverCo', '5', '78.99', 'Coated to prevent corrosion and every coil is tested for proper ohms');
-- A/C Expansion Valve - ID 3
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC005', '3', 'Compressor Works', '23', '19.99', 'Tube to cap; double soldered to ensure integrity');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC006', '3', 'EverCo', '18', '24.99', 'Precision machined ports');
-- A/C Blower Motor - ID 4
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC007', '4', 'VDO', '31', '40.99', 'Dual Bearing design technology provides quieter, more efficient motor operation');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC008', '4', 'EverCo', '17', '80.99', 'Magnetic size and properties compare or exceed OEM');
-- Belts - ID 8
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BH005', '8', 'Serpentine Belt', '10', '15.99', 'The specialized rubber incorporates a high temperature polymer formulated to maximize load carrying requirements and belt life');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BH001', '8', 'Timing Belt', '12', '14.99', 'Provides exceptional resistance to abrasion; resulting in extended pulley and belt life');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BH002', '8', 'V Belt', '15', '9.99', 'Made with bottom cogs to provide the maximum flexibility and grip required on v-belt drives');
-- Hoses - ID 9
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BH003', '9', 'Brake Hose - Rear', '13', '24.99', 'Quality construction ensures strength, chemical and thermal resistance for longer life');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BH004', '9', 'Brake Hose - Front', '17', '22.99', 'Brake hoses with banjo end fittings include new copper washers to ensure proper sealing');
-- Brake Pads - ID 5	
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BP001', '5', 'Brake Pads - Front', '17', '23.99', 'One size fits all');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BP002', '5', 'Brake Pads - Rear', '20', '22.99', 'One size fits all');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BP003', '5', 'Brake Drums', '8', '64.99', 'One size fits all');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BP004', '5', 'Brake Pad Lubricant', '75', '2.99', 'Keep your brake pads from squeeling, apply this when putting on new pads');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BP005', '5', 'Brake Shoes', '23', '19.99', 'Rear Brake Shoes');
-- Brake Rotors - ID 6	
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BR001', '6', 'Duralast - Front', '31', '19.99', 'Manufactured using high quality raw materials which conform to SAE J431');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BR002', '6', 'Duralast - Rear', '28', '39.99', 'High strength alloy for long life and increased resistance to warping');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BR003', '6', 'Raybestos - Front', '18', ' 149.99', 'Engineered to reduce brake noise');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BR004', '6', 'Raybestos - Rear', '21', '199.99', 'Manufactured in TS16949 certified facilities');
-- Brake Calipers - ID 7	
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC001', '7', 'Duralast Reman - Front', '56', '79.99', 'New bleeder screws provide trouble-free bleeding and a positive seal');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC002', '7', 'Duralast Reman - Rear', '42', '99.99', 'New copper washers are included for a perfect seal');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC003', '7', 'Duralast Bracketed - Front', '37', '49.99', '100% S.A.E. specific rubber seals ensure like-new performance');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC004', '7', 'Duralast Bracketed - Rear', '40', '69.99', '100% pressure tested to guarantee proper function under all driving conditions');	
-- Body Parts - ID 13
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT001', '13', 'Polished Aluminum Hood Scoop', '3', '269.99', 'Universal for single 4 barrel.  Fits carbs with 5-1/8in neck');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT002', '13', 'Bug Deflector', '7', '129.99', 'Mounts directly to the hood with no hardware or drilling');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT003', '13', 'Front End Cover', '2', '69.99', 'Glove like fit that contours to your vehicle');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT004', '13', 'Valance', '1', '172.99', 'Installs easily using 3M tape');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT005', '13', 'Vent Shade', '10', '49.99', 'Keeps rain out and fresh air in');
-- Fasteners - ID 14
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('FT001', '14', 'Doorman Panel Retainer', '172', '1.99', 'Comes with two');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('FT002', '14', 'Doorman Grill & Shield Retainers', '157', '1.99', 'Comes with eight');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('FT003', '14', 'Doorman Hood Retainer', '138', '1.99', 'Comes with three');
-- Paint - ID 15
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('PT001', '15', 'Duplicolor Scratch Fix Paint', '13', '14.99', 'Universal Flat Black');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('PT002', '15', 'VHT Paints', '17', '7.98', 'Fire Truck Red');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('PT003', '15', 'Duplicolor Perfect Match', '13', '7.99', 'Avignon Blue Metallic');
-- Mounts - ID 16
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('MT001', '16', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('MT002', '16', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('MT003', '16', );
-- Battery - ID 10
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT001', '10', '450 CCA Automobile Battery', '23', '199.99', 'For extreme conditions where the battery performs deep cycle & starting jobs!');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT002', '10', '700 CCA Automobile Battery', '13', '169.99', 'Specially designed paste to improve performance');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT003', '10', 'Super Start Extreme', '8', '121.99', 'Delivers high cranking power for quick starts');
-- Battery Chargers - ID 11	
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC001', '11', 'Schumaker Fleet Rated Charger', '8', '699.99', '12 Volt, 70 amp output, 250 amp crank assist, UL rated safe in any weather');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC002', '11', 'Schumaker Mountable Battery Charger', '3', '90.00', 'Fully Automatic Microprocessor Control');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC003', '11', 'Schumaker Multi Batter Charging Station', '2', '999.99', 'Eight Independent Charging Banks');
-- Battery Terminals - ID 12
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BY001', '12', 'Super Start - Side Terminal', '82', '5.99', 'For Post Terminal Batteries');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BY002', '12', 'Super Start - Battery Charge Post', '66', '3.49', 'Charging Post With Ears');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BY003', '12', 'Super Start - Battery Bolt and Nut', '72', '2.49', '5/6in-18x x 1-1/4in Bolt');
-- Cylinder Heads - ID 17
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('CH001', '17', 'Spartan/ATK Engines', '6', '199.99', 'Remanufactured. Complete rebuild and includes new valve stem and seals');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('CH002', '17', 'Edelbrock E-Tec 170', '2', '599.99', 'Hand-Blended Intake and Exhaust Bowls');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('CH003', '17', 'Omix-Ada', '1', '499.99', 'OE style, direct fit');
-- Camshafts & Cranks- ID 18
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('CC001', '18', 'Crankshaft Rebuilers', '3', '299.99', 'Includes matching main and rod bearings');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('CC002', '18', 'Melling Camshaft', '7', '109.99', 'OEM hydraulic camshaft');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('CC003', '18', 'Edelbrock Camshaft', '2', '99.99', 'Performance grade camshaft');
-- Timing Parts - ID 19
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('TP001', '19', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('TP002', '19', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('TP003', '19', );
-- Clamps - ID 20
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('CP001', '20', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('CP002', '20', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('CP003', '20', );
-- Pipe - ID 21
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('PP001', '21', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('PP002', '21', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('PP003', '21', );
-- Muffler - ID 22
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('MF001', '22', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('MF002', '22', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('MF003', '22', );
-- Tips - ID 23
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('TP001', '23', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('TP002', '23', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('TP003', '23', );
	
	