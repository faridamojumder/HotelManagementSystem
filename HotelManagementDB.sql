USE [master]
GO
/****** Object:  Database [HotelManagementDB_Data]    Script Date: 09 02 2020 2:19:01 AM ******/


If DB_ID ('HotelManagementDB_Data') IS NOT NULL 
DROP DATABASE HotelManagementDB_Data;

GO

CREATE DATABASE [HotelManagementDB_Data];
GO
ALTER DATABASE [HotelManagementDB_Data] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelManagementDB_Data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelManagementDB_Data] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HotelManagementDB_Data] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelManagementDB_Data] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelManagementDB_Data] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HotelManagementDB_Data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelManagementDB_Data] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HotelManagementDB_Data] SET  MULTI_USER 
GO
ALTER DATABASE [HotelManagementDB_Data] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelManagementDB_Data] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelManagementDB_Data] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelManagementDB_Data] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelManagementDB_Data] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelManagementDB_Data] SET QUERY_STORE = OFF
GO
USE [HotelManagementDB_Data]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 09 02 2020 2:19:01 AM ******/
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
/****** Object:  Table [dbo].[Adult]    Script Date: 09 02 2020 2:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adult](
	[AdultId] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfAdults] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 09 02 2020 2:19:01 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 09 02 2020 2:19:01 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 09 02 2020 2:19:01 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 09 02 2020 2:19:01 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 09 02 2020 2:19:01 AM ******/
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
/****** Object:  Table [dbo].[BeddingType]    Script Date: 09 02 2020 2:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeddingType](
	[BeddingTypeId] [int] IDENTITY(1,1) NOT NULL,
	[BeddingTypeName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BeddingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 09 02 2020 2:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
	[Address] [varchar](100) NOT NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NOT NULL,
	[NID_No] [varchar](50) NOT NULL,
	[ArrivalTime] [datetime] NULL,
	[DepartureDate] [datetime] NULL,
	[AdultId] [int] NULL,
	[ChildId] [int] NULL,
	[RoomTypeId] [int] NULL,
	[BeddingTypeId] [int] NULL,
	[RoomQuantityId] [int] NULL,
	[Notes] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Child]    Script Date: 09 02 2020 2:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Child](
	[ChildId] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfChild] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ChildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 09 02 2020 2:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[FoodId] [int] IDENTITY(1,1) NOT NULL,
	[FoodName] [varchar](500) NULL,
	[ImageUrl] [varchar](500) NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[FoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 09 02 2020 2:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest](
	[GuestId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
	[Address] [varchar](100) NOT NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NOT NULL,
	[NID_No] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GuestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderFood]    Script Date: 09 02 2020 2:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderFood](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[GuestId] [int] NULL,
	[FoodId] [int] NULL,
	[Quntity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservasion]    Script Date: 09 02 2020 2:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservasion](
	[ReservasionId] [int] IDENTITY(1,1) NOT NULL,
	[GuestId] [int] NULL,
	[RoomId] [int] NULL,
	[AdultId] [int] NULL,
	[ChildId] [int] NULL,
	[RoomQuantityId] [int] NULL,
	[ArrivalTime] [datetime] NULL,
	[DepartureDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReservasionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 09 02 2020 2:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeName] [varchar](50) NOT NULL,
	[RoomTypeId] [int] NULL,
	[BeddingTypeId] [int] NULL,
	[ImageUrl] [varchar](1000) NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomQuantity]    Script Date: 09 02 2020 2:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomQuantity](
	[RoomQuantityId] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfRoom] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomQuantityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 09 02 2020 2:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[RoomTypeId] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202002081334118_InitialCreate', N'HotelManagementSystem.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416592B97EE621BD82DB24ED20D9A1BD6D945DF16B4443BC24A942A516982A25FD6877E527FA14389BAF1A28BADD8CEA240118BC333C3E121392487FBDF3FFF8E7F79F43DE30147B11B90897930DA370D4CECC071C972622674F1EAADF9CBCFDF7E333E73FC47E3532E77C4E4A0268927E63DA5E1B165C5F63DF6513CF25D3B0AE260414776E05BC809ACC3FDFD9FAC83030B038409588631FE9010EAFA38FD013FA701B1714813E45D050EF662FE1D4A6629AA718D7C1C87C8C613F37D40B17785085A621F133A7B8A29F647593DD338F15C0436CDB0B7300D44484011058B8F3FC67846A3802C67217C40DEDD5388416E81BC18F3961C97E25D1BB57FC81A65951573283B8969E0F7043C38E25EB2C4EA2BF9DA2CBC087E3C037FD327D6EAD49713F3C2C1E9A70F81070E10151E4FBD88094FCCAB42C5491C5E633ACA2B8E32C8F308E0FE0CA22FA32AE29ED1B9DE5EC1AAC3D13EFB6FCF98261E4D223C2138A111F2F68CDB64EEB9F66FF8E92EF882C9E4E860BE387AFBFA0D728EDEFC888F5E575B0A6D05B9DA07F8741B05218EC036BC28DA6F1A56BD9E25562CAA55EA645E012EC100318D2BF47889C992DEC3D0397C6B1AE7EE2376F22F9C5C1F890BE3092AD128819FD789E7A1B9878B72AB5127FB7F83D6C3D76F06D17A8D1EDC65DAF5827E1838118CAB0FD84B4BE37B37CC8657ADBF3F73B1F328F0D9EF3ABFB2D2CFB320896CD698402B7287A225A675EBC65649DE4E946650C3D33A47DD7D6A334B657A2B455983561909B98A4D8F86DCDEE7D5DB99712761089D97528B79A489704DCBD648C0D93394D2259D0EBAD2894033BFE6D9F1CC47AE37C0F4D8410BC4280B37F271D1CA7701901191DE36DFA23886D9C1798FE2FB06D3E1CF014C9F613B8980B4338AFCF0D9B5DDDE07045F27FE9C8D85CDE91AAC6BEEFE0CCE914D83E88CB05A6BE35D06F69720A167C43945147FA4760EC87EDEB97E778041CC39B16D1CC7E74066EC4C0308C173C00B428F0E7BC3B1A96ADBE1C9D443AEAF8E4F8449F5732E5AC6286A09294ED188A9629526532F83A54BBA999A8BEA4DCD245A4DE5627D4D6560DD2CE5927A435381563B33A9C1A2BFB487860FFF52D8DD8FFFD65BBC757341C58D339821F1AF98E008A631E716518A2352F6409779631BC142DA7D4CE9B3AF4DA9A64FC84B8656B5D268482781E147430ABBFBA32135133E3FB80E8B4A3A6C8A726180EF24AFDE6FB58F39C1B24D0F875A3337AD7C3373806EB89CC47160BBE928501C87F1C38CBAFD10C319ED271B596BC4D311681810DD654B1E7C81B69922A96EC829F630C5C6899D1D174E516C2347762334C8E96158BEA22A0C2B4F49EAC6FD20E904A6E38855426C1314C34875099587854B6C37445EAB97849A1D9730D6F6428758728A434C98C2564F7451AE3E146106147A844E69F3D0D8AA30AE99889AA855D7E76D216CD9EFD259C54638D9123B6B78C9E3B7672166B3C73640CE66977431407BC0B70D82F2BD4A5702881B975D23A8B063D2109487541B2168DD635B2068DD252F8EA0D916B56BFF0BFBD55DA3677DA3BCF965BDD15D5BE066CD1F3B46CD2CF6843A146AE048A6E7E99C15E247AAD89C819D7C7F16F35057A408039F615A3FB229E35D651C6A358388246A022C89D602CAAF0625206940F5302E3FCB6BB48E47113D60F373B746583EF70BB0150EC8D8D52BD28AA0FE22552467A7DD47D1B2820D12C93B6D162A380A42889357BDE11D9CA23B97951DD32516EE130D571AC63BA3C1412D91ABC649796306F7524ECD762FA902B23E21D95A5E12C2278D97F2C60CEE25CED176272982821E61C15A2EAA2FE1030DB6FCA4A3586D8AB2B195E550F10F634B936C35BE4261E8926525F98A7F316659E6D5F4D5AC7F22929F615876ACC8472AAC2D34D120424B2C94826AB0F4DC8D627A8A289A2376CE33757C494CB9B66AA6FF5C6575F9943B315F077269F67756A3F142BFB6EACA6109473B87B6B2BA69B3B18209EAEA064B8B431E8A1467F8D3C04B7CA20FB5F4B5B39BBC6AFDEC8B8C30B604FBA5504AF29B14F0D63BA15317C9C363F0EE2A629AD5BB4C0FA1737C1E91565DAF8B52F528F9A15515457790B5B52ED405372B769B1841F6EFB55684E7196B3C6DA50AC03FF5C4A8643E486095B2EEA8F5E4942A66BDA43BA290815285148A7A5859CD33A919592D58094FE351B544770D726649155D2EED8EACC831A9422B8A57C056D82C96754755A4A1548115C5DDB1CB9C14713ADDE1D54CBBAF196039CB36C1EBAD671A8CE7991B87590E2B77FD55A0CAE79E58FC365F02E3DF779257DA9DE000BCCA4E41D6E39506433F1BD5EECBEB9351E325BF1EB376095E9BF09B9200F478FDD8FBAC1C91B684A248A1BDD81A0A5BC031DF8EB53FCA91F667998869E46E84C53EA3121318CDFEF0A69E8BD9D49E0B00E7DC058E6996F8611EEE1F1C0AAF7976E7658D15C78EA7D8CEEA9ED7D4FB6C03395CE40145F63D8AE48C8A355E9F94A0D261F50571F0E3C4FC2BAD759C9E7BB0BFD2CF7BC645FC91B87F2450701725D8F85BCE101D261BBFC3FB8FC2D0BF5FC4C38AEE2EBFF8FD735675CFB88960381D1BFB82A357E9FEFA738B5ED66455D7B066E547182F77B4D55E33285185D1B2FAE385B94B0779B8905BF99D8F1EBFEF6B9AF271C25A888A070843E10DE242DD038355B0B48F0B1CF849D3C705FD1AAB7E6CB08A69DA87062EE90F263E33E83E0DE535B7B80E29B64E9B9892523FB7A669AF95B3B9EDB549CAE65E6BA0CB19DB3DE006CDCA5E2F447961D9CE832D9D8A64E6C1B0B7C9FB67CF60DE95A4E53268DF6EAEF226D3931BAE9BBEAAACE41DC8A353E4056D3FF778D35CD39D05EF780267BF0CE31D231B5FE6B79F47BC69B2E90E88779C6CBDB285778C6BDB5A3FB7CCB4CE4BE8D6737FE53426CD9D8EEA14B92DB7373B7287EDFF3C0012641165F624539D4CA653569245ABB014D12BD567B1898AA58123E995249AD5F66B2B5FF01B1BCB659AD56A723F9B74F3F9BF51379769D6ADC9A8DC4656B232A7519529DE328F352557BDA42CE45A4B5A92DEDB62D6C60BFA9794743C88536AA34773BBFC72728C0771C99043A7474EB17C510C6B67E5DF7884F53B76972504FB171F09B66BAB662173411641BE780B16E522C209CD15A6C88125F524A2EE02D9148AD90174FAA63C3DD463D72073EC5C909B8486098526637FEED50EBC5810D0A43F4D9CAEDB3CBE09D9AF78882680992E3BB8BF21EF12D7730ABBCF1567421A08165DF0E35ED697941DFB2E9F0AA4EB807404E2EE2B82A23BEC871E80C53764861EF02AB601FD2EF112D94FE509A00EA4BD23EA6E1F9FBA6819213FE618657DF8091C76FCC79FFF0793CAC89BEA540000, N'6.2.0-61023')
SET IDENTITY_INSERT [dbo].[Adult] ON 

INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (1, 1)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (2, 2)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (3, 3)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (4, 4)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (5, 5)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (6, 6)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (7, 7)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (8, 8)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (9, 9)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (10, 10)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (11, 11)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (12, 12)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (13, 13)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (14, 14)
INSERT [dbo].[Adult] ([AdultId], [NumberOfAdults]) VALUES (15, 15)
SET IDENTITY_INSERT [dbo].[Adult] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8acde79d-bb4b-4946-a54f-196d143d89e7', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'89b73279-63a2-4028-8a12-79b57d85f378', N'Manager')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'ee332fa5-9689-4564-bb6d-0fd71fd9a2ad', N'Office Clark')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8ce2301e-622c-4455-a643-5a76a9319ffe', N'staff')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'732f8bbc-e454-4f46-8bca-3fcc84e017d9', N'User')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4fe0414b-de80-45e8-b6da-2cdc81cc0f9b', N'732f8bbc-e454-4f46-8bca-3fcc84e017d9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a901893-effb-4c1e-824d-51b21c2d1d63', N'89b73279-63a2-4028-8a12-79b57d85f378')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ca20ef88-2152-457c-92ec-2cbce8a92eb0', N'8acde79d-bb4b-4946-a54f-196d143d89e7')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3a901893-effb-4c1e-824d-51b21c2d1d63', N'manager@gmail.com', 0, N'AK3DCpvs1mjssZR6fwwrWvVg5aa/ZLkq7AF76dNPBki6Nsf/ls6+DT6vfVOocYja/w==', N'551a710f-97b7-4e58-8c85-d74fbdfe05ec', NULL, 0, 0, NULL, 1, 0, N'manager@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4fe0414b-de80-45e8-b6da-2cdc81cc0f9b', N'rh@gmail.com', 0, N'AIk3mL641jYlwuU/HUylEaAQ+tFsF1w92VPbGMCb6iahB5F28hhUSKG9cb3vb0avKQ==', N'c9e8af02-a28d-4aaa-8004-3bf814826d99', NULL, 0, 0, NULL, 1, 0, N'rh@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ca20ef88-2152-457c-92ec-2cbce8a92eb0', N'admin@gmail.com', 0, N'AL9LJgYaNEkfZmBTxVUOe3YvoQlYJusaWxzfBWScmNgijDYq6ONLsp9DcUFWfUV6bg==', N'15624aea-18c6-492e-9323-0bdf98efce78', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com')
SET IDENTITY_INSERT [dbo].[BeddingType] ON 

INSERT [dbo].[BeddingType] ([BeddingTypeId], [BeddingTypeName]) VALUES (1, N'Single Room')
INSERT [dbo].[BeddingType] ([BeddingTypeId], [BeddingTypeName]) VALUES (2, N'Duble Room')
INSERT [dbo].[BeddingType] ([BeddingTypeId], [BeddingTypeName]) VALUES (3, N'Triple Room')
INSERT [dbo].[BeddingType] ([BeddingTypeId], [BeddingTypeName]) VALUES (4, N'quad Room')
INSERT [dbo].[BeddingType] ([BeddingTypeId], [BeddingTypeName]) VALUES (5, N'None')
SET IDENTITY_INSERT [dbo].[BeddingType] OFF
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([BookingId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No], [ArrivalTime], [DepartureDate], [AdultId], [ChildId], [RoomTypeId], [BeddingTypeId], [RoomQuantityId], [Notes]) VALUES (1, N'Robiul', N'Hossain', N'Dhaka', N'rh@gmail.com', N'01812783839', N'dj25462-56482', CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-05T00:00:00.000' AS DateTime), 1, 1, 1, 1, 1, N'I am a student, we are five friends want to book one room')
INSERT [dbo].[Booking] ([BookingId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No], [ArrivalTime], [DepartureDate], [AdultId], [ChildId], [RoomTypeId], [BeddingTypeId], [RoomQuantityId], [Notes]) VALUES (2, N'akram', N'Ali', N'Khulna', N'akram@gmail.com', N'01812783839', N'362654-25241521', CAST(N'2020-02-13T00:00:00.000' AS DateTime), CAST(N'2020-02-10T00:00:00.000' AS DateTime), 4, 3, 2, 2, 3, N'we are four member.')
INSERT [dbo].[Booking] ([BookingId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No], [ArrivalTime], [DepartureDate], [AdultId], [ChildId], [RoomTypeId], [BeddingTypeId], [RoomQuantityId], [Notes]) VALUES (3, N'Robiul', N'Hassan', N'Cumailla', N'Rh@gmail.com', N'012312121', N'125125-25456', CAST(N'2020-02-07T00:00:00.000' AS DateTime), CAST(N'2020-02-08T00:00:00.000' AS DateTime), 6, 1, 3, 1, 2, N'AAAA')
INSERT [dbo].[Booking] ([BookingId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No], [ArrivalTime], [DepartureDate], [AdultId], [ChildId], [RoomTypeId], [BeddingTypeId], [RoomQuantityId], [Notes]) VALUES (4, N'Robiul', N'ab', N'Cumilla', N'aaa@gmail.com', N'093955333', N'3284938r439', CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-02-20T00:00:00.000' AS DateTime), 1, 1, 1, 1, 1, N'This is me!')
INSERT [dbo].[Booking] ([BookingId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No], [ArrivalTime], [DepartureDate], [AdultId], [ChildId], [RoomTypeId], [BeddingTypeId], [RoomQuantityId], [Notes]) VALUES (5, N'Robiul', N'ddddd', N'Cumailla', N'aaaa@gmail.com', N'1111111111111111', N'4343434434', CAST(N'2020-02-02T00:00:00.000' AS DateTime), CAST(N'2020-02-04T00:00:00.000' AS DateTime), 1, 1, 1, 1, 1, N'ffffffffdfdf')
INSERT [dbo].[Booking] ([BookingId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No], [ArrivalTime], [DepartureDate], [AdultId], [ChildId], [RoomTypeId], [BeddingTypeId], [RoomQuantityId], [Notes]) VALUES (6, N'Robiul', N'ddddd', N'Cumailla', N'aaaa@gmail.com', N'1111111111111111', N'4343434434', CAST(N'2020-02-02T00:00:00.000' AS DateTime), CAST(N'2020-02-04T00:00:00.000' AS DateTime), 1, 1, 1, 1, 1, N'ffffffffdfdf')
INSERT [dbo].[Booking] ([BookingId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No], [ArrivalTime], [DepartureDate], [AdultId], [ChildId], [RoomTypeId], [BeddingTypeId], [RoomQuantityId], [Notes]) VALUES (7, N'Robiul', N'ddddd', N'Cumailla', N'aaaa@gmail.com', N'1111111111111111', N'4343434434', CAST(N'2020-02-02T00:00:00.000' AS DateTime), CAST(N'2020-02-04T00:00:00.000' AS DateTime), 1, 1, 1, 1, 1, N'ffffffffdfdf')
INSERT [dbo].[Booking] ([BookingId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No], [ArrivalTime], [DepartureDate], [AdultId], [ChildId], [RoomTypeId], [BeddingTypeId], [RoomQuantityId], [Notes]) VALUES (12, N'aa', N'aa', N'dd', N'dd@gmail.com', N'43242', N'fdfd', CAST(N'2020-02-04T00:00:00.000' AS DateTime), CAST(N'2020-02-03T00:00:00.000' AS DateTime), 1, 1, 1, 1, 1, N'asdfs')
SET IDENTITY_INSERT [dbo].[Booking] OFF
SET IDENTITY_INSERT [dbo].[Child] ON 

INSERT [dbo].[Child] ([ChildId], [NumberOfChild]) VALUES (1, 0)
INSERT [dbo].[Child] ([ChildId], [NumberOfChild]) VALUES (2, 1)
INSERT [dbo].[Child] ([ChildId], [NumberOfChild]) VALUES (3, 2)
INSERT [dbo].[Child] ([ChildId], [NumberOfChild]) VALUES (4, 3)
INSERT [dbo].[Child] ([ChildId], [NumberOfChild]) VALUES (5, 4)
INSERT [dbo].[Child] ([ChildId], [NumberOfChild]) VALUES (6, 5)
INSERT [dbo].[Child] ([ChildId], [NumberOfChild]) VALUES (7, 6)
INSERT [dbo].[Child] ([ChildId], [NumberOfChild]) VALUES (8, 7)
INSERT [dbo].[Child] ([ChildId], [NumberOfChild]) VALUES (9, 8)
INSERT [dbo].[Child] ([ChildId], [NumberOfChild]) VALUES (10, 9)
INSERT [dbo].[Child] ([ChildId], [NumberOfChild]) VALUES (17, 0)
SET IDENTITY_INSERT [dbo].[Child] OFF
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([FoodId], [FoodName], [ImageUrl], [Price]) VALUES (1, N'Daily Hot Side(Vegetable and rice)', N'~/Images/Food/aa.jpg', 100.0000)
INSERT [dbo].[Food] ([FoodId], [FoodName], [ImageUrl], [Price]) VALUES (2, N'Sandwich', N'~/Images/Food/bb.jpg', 80.0000)
INSERT [dbo].[Food] ([FoodId], [FoodName], [ImageUrl], [Price]) VALUES (3, N'Apple Slice', N'~/Images/Food/cc.jpg', 120.0000)
INSERT [dbo].[Food] ([FoodId], [FoodName], [ImageUrl], [Price]) VALUES (4, N'Meat Portion and special', N'~/Images/Food/dd.jpg', 220.0000)
INSERT [dbo].[Food] ([FoodId], [FoodName], [ImageUrl], [Price]) VALUES (5, N'Patato Fried Wedges', N'~/Images/Food/ee.jpg', 60.0000)
INSERT [dbo].[Food] ([FoodId], [FoodName], [ImageUrl], [Price]) VALUES (6, N'Pizza single pack', N'~/Images/Food/ff.jpg', 100.0000)
INSERT [dbo].[Food] ([FoodId], [FoodName], [ImageUrl], [Price]) VALUES (7, N'Pizza Familly pack', N'~/Images/Food/gg.jpg', 390.0000)
INSERT [dbo].[Food] ([FoodId], [FoodName], [ImageUrl], [Price]) VALUES (10, N'C# new', N'~/Images/Food/Rh_IT_Profile.png', 500.0000)
SET IDENTITY_INSERT [dbo].[Food] OFF
SET IDENTITY_INSERT [dbo].[Guest] ON 

INSERT [dbo].[Guest] ([GuestId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No]) VALUES (1, N'Ali1', N'Ahamed', N'Cumilla', N'Ali@gmail.com', N'0181414141', N'2145-256481')
INSERT [dbo].[Guest] ([GuestId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No]) VALUES (2, N'Ali2', N'Ahamed', N'Cumilla', N'Ali@gmail.com', N'0181414141', N'2145-256481')
INSERT [dbo].[Guest] ([GuestId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No]) VALUES (3, N'Ali3', N'Ahamed', N'Cumilla', N'Ali@gmail.com', N'0181414141', N'2145-256481')
INSERT [dbo].[Guest] ([GuestId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No]) VALUES (4, N'Ali4', N'Ahamed', N'Cumilla', N'Ali@gmail.com', N'0181414141', N'2145-256481')
INSERT [dbo].[Guest] ([GuestId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No]) VALUES (5, N'Ali5', N'Ahamed', N'Cumilla', N'Ali@gmail.com', N'0181414141', N'2145-256481')
INSERT [dbo].[Guest] ([GuestId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No]) VALUES (6, N'Ali6', N'Ahamed', N'Cumilla', N'Ali@gmail.com', N'0181414141', N'2145-256481')
INSERT [dbo].[Guest] ([GuestId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No]) VALUES (7, N'Ali7', N'Ahamed', N'Cumilla', N'Ali@gmail.com', N'0181414141', N'2145-256481')
INSERT [dbo].[Guest] ([GuestId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No]) VALUES (8, N'Ali8', N'Ahamed', N'Cumilla', N'Ali@gmail.com', N'0181414141', N'2145-256481')
INSERT [dbo].[Guest] ([GuestId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No]) VALUES (9, N'aaddd', N'adfad', N'fdsda', N'safaf', N'3434324', N'345435')
INSERT [dbo].[Guest] ([GuestId], [FirstName], [LastName], [Address], [Email], [Phone], [NID_No]) VALUES (10, N'afdsf', N'asfswfd', N'sdfa', N'adsf', N'423423', N'34534435')
SET IDENTITY_INSERT [dbo].[Guest] OFF
SET IDENTITY_INSERT [dbo].[OrderFood] ON 

INSERT [dbo].[OrderFood] ([OrderId], [GuestId], [FoodId], [Quntity]) VALUES (1, 1, 1, 1)
INSERT [dbo].[OrderFood] ([OrderId], [GuestId], [FoodId], [Quntity]) VALUES (2, 1, 4, 2)
INSERT [dbo].[OrderFood] ([OrderId], [GuestId], [FoodId], [Quntity]) VALUES (3, 2, 2, 2)
INSERT [dbo].[OrderFood] ([OrderId], [GuestId], [FoodId], [Quntity]) VALUES (4, 2, 1, 1)
INSERT [dbo].[OrderFood] ([OrderId], [GuestId], [FoodId], [Quntity]) VALUES (5, 2, 3, 2)
INSERT [dbo].[OrderFood] ([OrderId], [GuestId], [FoodId], [Quntity]) VALUES (6, 4, 6, 4)
INSERT [dbo].[OrderFood] ([OrderId], [GuestId], [FoodId], [Quntity]) VALUES (7, 8, 7, 3)
SET IDENTITY_INSERT [dbo].[OrderFood] OFF
SET IDENTITY_INSERT [dbo].[Reservasion] ON 

INSERT [dbo].[Reservasion] ([ReservasionId], [GuestId], [RoomId], [AdultId], [ChildId], [RoomQuantityId], [ArrivalTime], [DepartureDate]) VALUES (1, 1, 1, 1, 2, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Reservasion] ([ReservasionId], [GuestId], [RoomId], [AdultId], [ChildId], [RoomQuantityId], [ArrivalTime], [DepartureDate]) VALUES (2, 2, 1, 1, 2, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Reservasion] ([ReservasionId], [GuestId], [RoomId], [AdultId], [ChildId], [RoomQuantityId], [ArrivalTime], [DepartureDate]) VALUES (3, 3, 1, 1, 2, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Reservasion] ([ReservasionId], [GuestId], [RoomId], [AdultId], [ChildId], [RoomQuantityId], [ArrivalTime], [DepartureDate]) VALUES (4, 7, 6, 7, 2, 4, CAST(N'2020-02-02T00:00:00.000' AS DateTime), CAST(N'2020-02-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Reservasion] ([ReservasionId], [GuestId], [RoomId], [AdultId], [ChildId], [RoomQuantityId], [ArrivalTime], [DepartureDate]) VALUES (5, 2, 2, 2, 1, 5, CAST(N'2020-02-06T00:00:00.000' AS DateTime), CAST(N'2020-02-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Reservasion] ([ReservasionId], [GuestId], [RoomId], [AdultId], [ChildId], [RoomQuantityId], [ArrivalTime], [DepartureDate]) VALUES (6, 6, 1, 4, 1, 1, CAST(N'2020-02-14T00:00:00.000' AS DateTime), CAST(N'2020-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Reservasion] ([ReservasionId], [GuestId], [RoomId], [AdultId], [ChildId], [RoomQuantityId], [ArrivalTime], [DepartureDate]) VALUES (7, 3, 1, 1, 1, 1, CAST(N'2020-02-01T00:00:00.000' AS DateTime), CAST(N'2020-02-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Reservasion] ([ReservasionId], [GuestId], [RoomId], [AdultId], [ChildId], [RoomQuantityId], [ArrivalTime], [DepartureDate]) VALUES (8, 1, 1, 1, 1, 1, CAST(N'2020-02-13T00:00:00.000' AS DateTime), CAST(N'2020-02-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Reservasion] OFF
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([RoomId], [RoomTypeName], [RoomTypeId], [BeddingTypeId], [ImageUrl], [Price]) VALUES (1, N'Superior Single', 1, 1, N'~/Images/Room/aa.jpg', 9000.0000)
INSERT [dbo].[Room] ([RoomId], [RoomTypeName], [RoomTypeId], [BeddingTypeId], [ImageUrl], [Price]) VALUES (2, N'Deluxe Single', 2, 1, N'~/Images/Room/bb.jpg', 6000.0000)
INSERT [dbo].[Room] ([RoomId], [RoomTypeName], [RoomTypeId], [BeddingTypeId], [ImageUrl], [Price]) VALUES (3, N'Guest Single', 3, 1, N'~/Images/Room/cc.jpg', 3000.0000)
INSERT [dbo].[Room] ([RoomId], [RoomTypeName], [RoomTypeId], [BeddingTypeId], [ImageUrl], [Price]) VALUES (4, N'Superior Duble', 1, 2, N'~/Images/Room/aa.jpg', 10000.0000)
INSERT [dbo].[Room] ([RoomId], [RoomTypeName], [RoomTypeId], [BeddingTypeId], [ImageUrl], [Price]) VALUES (5, N'Deluxe Duble', 2, 2, N'~/Images/Room/bb.jpg', 8000.0000)
INSERT [dbo].[Room] ([RoomId], [RoomTypeName], [RoomTypeId], [BeddingTypeId], [ImageUrl], [Price]) VALUES (6, N'Guest Duble', 3, 2, N'~/Images/Room/cc.jpg', 4000.0000)
INSERT [dbo].[Room] ([RoomId], [RoomTypeName], [RoomTypeId], [BeddingTypeId], [ImageUrl], [Price]) VALUES (7, N'Superior Triple', 1, 3, N'~/Images/Room/aa.jpg', 11000.0000)
INSERT [dbo].[Room] ([RoomId], [RoomTypeName], [RoomTypeId], [BeddingTypeId], [ImageUrl], [Price]) VALUES (8, N'Deluxe Triple', 2, 3, N'~/Images/Room/bb.jpg', 8500.0000)
INSERT [dbo].[Room] ([RoomId], [RoomTypeName], [RoomTypeId], [BeddingTypeId], [ImageUrl], [Price]) VALUES (9, N'Guest Triple', 3, 3, N'~/Images/Room/cc.jpg', 4200.0000)
INSERT [dbo].[Room] ([RoomId], [RoomTypeName], [RoomTypeId], [BeddingTypeId], [ImageUrl], [Price]) VALUES (12, N'normal', 3, 1, N'~/Images/Food/1212908_1361_2.jpg', 1000.0000)
SET IDENTITY_INSERT [dbo].[Room] OFF
SET IDENTITY_INSERT [dbo].[RoomQuantity] ON 

INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (1, 1)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (2, 2)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (3, 3)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (4, 4)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (5, 5)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (6, 6)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (7, 7)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (8, 8)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (9, 9)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (10, 10)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (11, 11)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (12, 12)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (13, 13)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (14, 14)
INSERT [dbo].[RoomQuantity] ([RoomQuantityId], [NumberOfRoom]) VALUES (15, 15)
SET IDENTITY_INSERT [dbo].[RoomQuantity] OFF
SET IDENTITY_INSERT [dbo].[RoomType] ON 

INSERT [dbo].[RoomType] ([RoomTypeId], [RoomTypeName]) VALUES (1, N'Superior Room')
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomTypeName]) VALUES (2, N'Deluxe Room')
INSERT [dbo].[RoomType] ([RoomTypeId], [RoomTypeName]) VALUES (3, N'Guest Room')
SET IDENTITY_INSERT [dbo].[RoomType] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 09 02 2020 2:19:01 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 09 02 2020 2:19:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 09 02 2020 2:19:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 09 02 2020 2:19:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 09 02 2020 2:19:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 09 02 2020 2:19:01 AM ******/
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
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([AdultId])
REFERENCES [dbo].[Adult] ([AdultId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([BeddingTypeId])
REFERENCES [dbo].[BeddingType] ([BeddingTypeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([ChildId])
REFERENCES [dbo].[Child] ([ChildId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([RoomQuantityId])
REFERENCES [dbo].[RoomQuantity] ([RoomQuantityId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomType] ([RoomTypeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderFood]  WITH CHECK ADD FOREIGN KEY([FoodId])
REFERENCES [dbo].[Food] ([FoodId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderFood]  WITH CHECK ADD FOREIGN KEY([GuestId])
REFERENCES [dbo].[Guest] ([GuestId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reservasion]  WITH CHECK ADD FOREIGN KEY([AdultId])
REFERENCES [dbo].[Adult] ([AdultId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reservasion]  WITH CHECK ADD FOREIGN KEY([ChildId])
REFERENCES [dbo].[Child] ([ChildId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reservasion]  WITH CHECK ADD FOREIGN KEY([GuestId])
REFERENCES [dbo].[Guest] ([GuestId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reservasion]  WITH CHECK ADD FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([RoomId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reservasion]  WITH CHECK ADD FOREIGN KEY([RoomQuantityId])
REFERENCES [dbo].[RoomQuantity] ([RoomQuantityId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD FOREIGN KEY([BeddingTypeId])
REFERENCES [dbo].[BeddingType] ([BeddingTypeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomType] ([RoomTypeId])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [HotelManagementDB_Data] SET  READ_WRITE 
GO
