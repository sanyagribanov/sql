USE [master]
GO
/****** Object:  Database [gornolyzhnyi_kompleks]    Script Date: 26.09.2022 10:29:52 ******/
CREATE DATABASE [gornolyzhnyi_kompleks]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gornolyzhnyi_kompleks', FILENAME = N'H:\databases\gornolyzhnyi_kompleks.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'gornolyzhnyi_kompleks_log', FILENAME = N'H:\databases\gornolyzhnyi_kompleks_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gornolyzhnyi_kompleks].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET ARITHABORT OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET  MULTI_USER 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET QUERY_STORE = OFF
GO
USE [gornolyzhnyi_kompleks]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 26.09.2022 10:29:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [varchar](max) NULL,
	[Code_Clienta] [int] NULL,
	[Passport_Data] [varchar](max) NULL,
	[Birthday] [date] NULL,
	[Adress] [varchar](max) NULL,
	[e-mail] [varchar](max) NULL,
	[Password] [varchar](max) NULL,
	[id_zakaza] [int] NULL,
 CONSTRAINT [PK_clients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uslugi]    Script Date: 26.09.2022 10:29:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uslugi](
	[ID] [int] NOT NULL,
	[title] [varchar](max) NULL,
	[code] [nvarchar](max) NULL,
	[price] [int] NULL,
	[id_zakazy] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zakazy]    Script Date: 26.09.2022 10:29:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zakazy](
	[id] [int] NOT NULL,
	[code] [varchar](max) NULL,
	[date_creation] [date] NULL,
	[time] [time](7) NULL,
	[code_client] [int] NULL,
	[uslugi] [nvarchar](max) NULL,
	[status] [varchar](max) NULL,
	[date_of_closing] [date] NULL,
	[time_prokat] [nvarchar](max) NULL,
 CONSTRAINT [PK_zakazy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[clients] ON 

INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (1, N'Фролов Андрей Иванович', 45462526, N'Серия 1180 Номер 176596', CAST(N'2001-07-14' AS Date), N'344288, г. Барнаул, ул. Чехова, 1, кв. 34', N'gohufreilagrau-3818@yopmail.com', N'cl12345', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (2, N'Николаев Даниил Всеволодович', 45462527, N'Серия 2280 Номер 223523', CAST(N'2001-10-02' AS Date), N'614164, г. Барнаул, ул. Степная, 30, кв. 75', N'xawugosune-1385@yopmail.com', N'cl12346', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (3, N'Снегирев Макар Иванович', 45462528, N'Серия 4560 Номер 354155', CAST(N'1998-05-21' AS Date), N'394242, г. Барнаул, ул. Коммунистическая, 43, кв. 57', N'satrahuddusei-4458@yopmail.com', N'cl12347', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (4, N'Иванов Иван Ильич', 45462529, N'Серия 9120 Номер 554296', CAST(N'1998-01-10' AS Date), N'660540, г. Барнаул, ул. Солнечная, 25, кв. 78', N'boippaxeufrepra-7093@yopmail.com', N'cl12348', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (5, N'Филиппова Анна Глебовна', 45462530, N'Серия 2367 Номер 558134', CAST(N'1976-05-31' AS Date), N'125837, г. Барнаул, ул. Шоссейная, 40, кв. 92', N'zapramaxesu-7741@yopmail.com', N'cl12349', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (6, N'Иванов Михаил Владимирович', 45462531, N'Серия 7101 Номер 669343', CAST(N'1985-04-11' AS Date), N'125703, г. Барнаул, ул. Партизанская, 49, кв. 84', N'rouzecroummegre-3899@yopmail.com', N'cl12350', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (7, N'Власов Дмитрий Александрович', 45462532, N'Серия 3455 Номер 719630', CAST(N'1998-08-17' AS Date), N'625283, г. Барнаул, ул. Победы, 46, кв. 7', N'ziyeuddocrabri-4748@yopmail.com', N'cl12351', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (8, N'Серова Екатерина Львовна', 45462533, N'Серия 2377 Номер 871623', CAST(N'1984-10-24' AS Date), N'614611, г. Барнаул, ул. Молодежная, 50, кв. 78', N'ketameissoinnei-1951@yopmail.com', N'cl12352', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (9, N'Борисова Ирина Ивановна', 45462534, N'Серия 8755 Номер 921148', CAST(N'1976-10-14' AS Date), N'454311, г. Барнаул, ул. Новая, 19, кв. 78', N'yipraubaponou-5849@yopmail.com', N'cl12353', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (10, N'Зайцев Никита Артёмович', 45462535, N'Серия 4355 Номер 104594', CAST(N'1999-10-14' AS Date), N'660007, г. Барнаул, ул. Октябрьская, 19, кв. 42', N'crapedocouca-3572@yopmail.com', N'cl12354', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (11, N'Медведев Святослав Евгеньевич', 45462536, N'Серия 2791 Номер 114390', CAST(N'1985-07-13' AS Date), N'603036, г. Барнаул, ул. Садовая, 4, кв. 13', N'ceigoixakaunni-9227@yopmail.com', N'cl12355', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (12, N'Коротков Кирилл Алексеевич', 45462537, N'Серия 5582 Номер 126286', CAST(N'1976-05-26' AS Date), N'450983, г. Барнаул, ул. Комсомольская, 26, кв. 60', N'yeimmeiwauzomo-7054@yopmail.com', N'cl12356', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (13, N'Калашникова Арина Максимовна', 45462538, N'Серия 2978 Номер 133653', CAST(N'1999-08-13' AS Date), N'394782, г. Барнаул, ул. Чехова, 3, кв. 14', N'poleifenevi-1560@yopmail.com', N'cl12357', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (14, N'Минина Таисия Кирилловна', 45462539, N'Серия 7512 Номер 141956', CAST(N'1985-10-13' AS Date), N'603002, г. Барнаул, ул. Дзержинского, 28, кв. 56', N'kauprezofautei-6607@yopmail.com', N'cl12358', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (15, N'Наумов Серафим Романович', 45462540, N'Серия 5046 Номер 158433', CAST(N'1999-04-15' AS Date), N'450558, г. Барнаул, ул. Набережная, 30, кв. 71', N'quaffaullelourei-1667@yopmail.com', N'cl12359', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (16, N'Воробьева Василиса Евгеньевна', 45462541, N'Серия 2460 Номер 169505', CAST(N'1999-01-13' AS Date), N'394060, г. Барнаул, ул. Фрунзе, 43, кв. 79', N'jsteele@rojas-robinson.net', N'cl12360', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (17, N'Калинин Александр Андреевич', 45462542, N'Серия 3412 Номер 174593', CAST(N'1999-07-01' AS Date), N'410661, г. Барнаул, ул. Школьная, 50, кв. 53', N'vhopkins@lewis-mullen.com', N'cl12361', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (18, N'Кузнецова Милана Владиславовна', 45462543, N'Серия 4950 Номер 183034', CAST(N'1999-01-24' AS Date), N'625590, г. Барнаул, ул. Коммунистическая, 20, кв. 34', N'nlewis@yahoo.com', N'cl12362', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (19, N'Фирсов Егор Романович', 45462544, N'Серия 5829 Номер 219464', CAST(N'1993-02-09' AS Date), N'625683, г. Барнаул, ул. 8 Марта, 20, кв. 21', N'garciadavid@mckinney-mcbride.com', N'cl12363', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (20, N'Зимина Агния Александровна', 45462545, N'Серия 6443 Номер 208059', CAST(N'1998-03-09' AS Date), N'400562, г. Барнаул, ул. Зеленая, 32, кв. 67', N'cbradley@castro.com', N'cl12364', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (21, N'Титов Андрей Глебович', 45462546, N'Серия 7079 Номер 213265', CAST(N'1985-10-23' AS Date), N'614510, г. Барнаул, ул. Маяковского, 47, кв. 72', N'cuevascatherine@carlson.biz', N'cl12365', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (22, N'Орлов Николай Егорович', 45462547, N'Серия 8207 Номер 522702', CAST(N'1985-07-27' AS Date), N'410542, г. Барнаул, ул. Светлая, 46, кв. 82', N'thomasmoore@wilson-singh.net', N'cl12366', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (23, N'Кузнецова Аиша Михайловна', 45462548, N'Серия 9307 Номер 232158', CAST(N'1998-04-10' AS Date), N'620839, г. Барнаул, ул. Цветочная, 8, кв. 100', N'jessica84@hotmail.com', N'cl12367', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (24, N'Куликов Никита Георгиевич', 45462549, N'Серия 1357 Номер 242839', CAST(N'1999-04-23' AS Date), N'443890, г. Барнаул, ул. Коммунистическая, 1, кв. 10', N'jessicapark@hotmail.com', N'cl12368', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (25, N'Карпова София Егоровна', 45462550, N'Серия 1167 Номер 256636', CAST(N'1993-01-10' AS Date), N'603379, г. Барнаул, ул. Спортивная, 46, кв. 95', N'ginaritter@schneider-buchanan.com', N'cl12369', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (26, N'Смирнова Дарья Макаровна', 45462551, N'Серия 1768 Номер 266986', CAST(N'1976-03-22' AS Date), N'603721, г. Барнаул, ул. Гоголя, 41, кв. 57', N'stephen99@yahoo.com', N'cl12370', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (27, N'Абрамова Александра Мироновна', 45462552, N'Серия 1710 Номер 427875', CAST(N'1999-03-26' AS Date), N'410172, г. Барнаул, ул. Северная, 13, кв. 86', N'lopezlisa@hotmail.com', N'cl12371', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (28, N'Наумов Руслан Михайлович', 45462553, N'Серия 1806 Номер 289145', CAST(N'1999-11-10' AS Date), N'420151, г. Барнаул, ул. Вишневая, 32, кв. 81', N'lori17@hotmail.com', N'cl12372', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (29, N'Бочаров Никита Матвеевич', 45462554, N'Серия 1587 Номер 291249', CAST(N'1997-06-29' AS Date), N'125061, г. Барнаул, ул. Подгорная, 8, кв. 74', N'campbellkevin@gardner.com', N'cl12373', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (30, N'Соловьев Давид Ильич', 45462555, N'Серия 1647 Номер 306372', CAST(N'1984-06-03' AS Date), N'630370, г. Барнаул, ул. Шоссейная, 24, кв. 81', N'morganhoward@clark.com', N'cl12374', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (31, N'Васильева Валерия Дмитриевна', 45462556, N'Серия 1742 Номер 316556', CAST(N'1999-09-30' AS Date), N'614753, г. Барнаул, ул. Полевая, 35, кв. 39', N'carsontamara@gmail.com', N'cl12375', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (32, N'Макарова Василиса Андреевна', 45462557, N'Серия 1474 Номер 326347', CAST(N'1999-08-04' AS Date), N'426030, г. Барнаул, ул. Маяковского, 44, кв. 93', N'kevinpatel@gmail.com', N'cl12376', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (33, N'Алексеев Матвей Викторович', 45462558, N'Серия 1452 Номер 339539', CAST(N'1998-02-08' AS Date), N'450375, г. Барнаул, ул. Клубная, 44, кв. 80', N'sethbishop@yahoo.com', N'cl12377', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (34, N'Никитина Полина Александровна', 45462559, N'Серия 2077 Номер 443480', CAST(N'1976-09-19' AS Date), N'625560, г. Барнаул, ул. Некрасова, 12, кв. 66', N'drollins@schultz-soto.net', N'cl12378', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (35, N'Окулова Олеся Алексеевна', 45462560, N'Серия 2147 Номер 357518', CAST(N'1999-03-04' AS Date), N'630201, г. Барнаул, ул. Комсомольская, 17, кв. 25', N'pblack@copeland-winters.org', N'cl12379', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (36, N'Захарова Полина Яновна', 45462561, N'Серия 2687 Номер 363884', CAST(N'1976-04-21' AS Date), N'190949, г. Барнаул, ул. Мичурина, 26, кв. 93', N'johnathon.oberbrunner@yahoo.com', N'cl12380', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (37, N'Зайцев Владимир Давидович', 45462562, N'Серия 2376 Номер 443711', CAST(N'1998-01-26' AS Date), N'350501, г. Барнаул, ул. Парковая, 2, кв. 7', N'bradly29@gmail.com', N'cl12381', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (38, N'Иванов Виталий Даниилович', 45462563, N'Серия 2568 Номер 386237', CAST(N'1976-11-08' AS Date), N'450048, г. Барнаул, ул. Коммунистическая, 21, кв. 3', N'stark.cristina@hilpert.biz', N'cl12382', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (39, N'Захаров Матвей Романович', 45462564, N'Серия 2556 Номер 439376', CAST(N'1993-12-07' AS Date), N'644921, г. Барнаул, ул. Школьная, 46, кв. 37', N'bruen.eleanore@yahoo.com', N'cl12383', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (40, N'Иванов Степан Степанович', 45462565, N'Серия 2737 Номер 407501', CAST(N'1998-09-19' AS Date), N'614228, г. Барнаул, ул. Дорожная, 36, кв. 54', N'percival.halvorson@yahoo.com', N'cl12384', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (41, N'Ткачева Милана Тимуровна', 45462566, N'Серия 2581 Номер 441645', CAST(N'1998-05-24' AS Date), N'350940, г. Барнаул, ул. Первомайская, 23, кв. 2', N'javonte71@kuhlman.biz', N'cl12385', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (42, N'Семенов Даниил Иванович', 45462567, N'Серия 2675 Номер 427933', CAST(N'1976-04-01' AS Date), N'344990, г. Барнаул, ул. Красноармейская, 19, кв. 92', N'vconnelly@kautzer.com', N'cl12386', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (43, N'Виноградов Вячеслав Дмитриевич', 45462568, N'Серия 2967 Номер 434531', CAST(N'1976-12-07' AS Date), N'410248, г. Барнаул, ул. Чкалова, 11, кв. 75', N'anabelle07@schultz.info', N'cl12387', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (44, N'Соболева Николь Фёдоровна', 45462569, N'Серия 3070 Номер 449655', CAST(N'1976-02-05' AS Date), N'400839, г. Барнаул, ул. 8 Марта, 46, кв. 44', N'nitzsche.katlynn@yahoo.com', N'cl12388', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (45, N'Тихонова Анна Львовна', 45462570, N'Серия 3108 Номер 451174', CAST(N'1985-03-23' AS Date), N'450539, г. Барнаул, ул. Заводская, 3, кв. 81', N'corine16@von.com', N'cl12389', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (46, N'Кузнецова Ульяна Савельевна', 45462571, N'Серия 3250 Номер 464705', CAST(N'1999-03-06' AS Date), N'614591, г. Барнаул, ул. Цветочная, 20, кв. 40', N'otha.wisozk@lubowitz.org', N'cl12390', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (47, N'Смирнова Анна Германовна', 45462572, N'Серия 3392 Номер 471644', CAST(N'1997-07-18' AS Date), N'400260, г. Барнаул, ул. Больничная, 30, кв. 53', N'may.kirlin@hotmail.com', N'cl12391', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (48, N'Черепанова Анна Давидовна', 45462573, N'Серия 3497 Номер 487819', CAST(N'1985-06-11' AS Date), N'660924, г. Барнаул, ул. Молодежная, 32, кв. 59', N'bryana.kautzer@yahoo.com', N'cl12392', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (49, N'Григорьев Максим Кириллович', 45462574, N'Серия 3560 Номер 491260', CAST(N'1999-05-26' AS Date), N'644133, г. Барнаул, ул. Гагарина, 28, кв. 69', N'deborah.christiansen@quigley.biz', N'cl12393', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (50, N'Голубев Даниэль Александрович', 45462575, N'Серия 3620 Номер 506034', CAST(N'1999-06-14' AS Date), N'450698, г. Барнаул, ул. Вокзальная, 14, кв. 37', N'connelly.makayla@yahoo.com', N'cl12394', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (51, N'Миронов Юрий Денисович', 45462576, N'Серия 3774 Номер 511438', CAST(N'1985-01-26' AS Date), N'620653, г. Барнаул, ул. Западная, 15, кв. 25', N'tatum.collins@fay.org', N'cl12395', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (52, N'Терехов Михаил Андреевич', 45462577, N'Серия 3862 Номер 521377', CAST(N'1976-06-07' AS Date), N'644321, г. Барнаул, ул. Клубная, 32, кв. 10', N'itzel73@anderson.com', N'cl12396', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (53, N'Орлова Алиса Михайловна', 45462578, N'Серия 3084 Номер 535966', CAST(N'1997-02-24' AS Date), N'603653, г. Барнаул, ул. Молодежная, 2, кв. 45', N'arjun39@hotmail.com', N'cl12397', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (54, N'Кулаков Константин Даниилович', 45462579, N'Серия 4021 Номер 541528', CAST(N'1993-06-20' AS Date), N'410181, г. Барнаул, ул. Механизаторов, 16, кв. 74', N'ohara.rebeka@yahoo.com', N'cl12398', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (55, N'Кудрявцев Максим Романович', 45462580, N'Серия 4109 Номер 554053', CAST(N'1998-10-05' AS Date), N'394207, г. Барнаул, ул. Свердлова, 31, кв. 28', N'danika58@rath.com', N'cl12399', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (56, N'Соболева Кира Фёдоровна', 45462581, N'Серия 4537 Номер 564868', CAST(N'1998-03-14' AS Date), N'420633, г. Барнаул, ул. Матросова, 18, кв. 41', N'janae.bogan@gmail.com', N'cl12400', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (57, N'Коновалов Арсений Максимович', 45462582, N'Серия 4914 Номер 572471', CAST(N'1985-02-18' AS Date), N'445720, г. Барнаул, ул. Матросова, 50, кв. 67', N'vern91@yahoo.com', N'cl12401', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (58, N'Гусев Михаил Дмитриевич', 45462583, N'Серия 4445 Номер 581302', CAST(N'1999-11-23' AS Date), N'400646, г. Барнаул, ул. Октябрьская, 47, кв. 65', N'mariana.leannon@larkin.net', N'cl12402', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (59, N'Суханова Варвара Матвеевна', 45462584, N'Серия 4743 Номер 598180', CAST(N'1993-09-13' AS Date), N'644410, г. Барнаул, ул. Красная, 17, кв. 69', N'vmoore@gmail.com', N'cl12403', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (60, N'Орлова Ясмина Васильевна', 45462585, N'Серия 4741 Номер 601821', CAST(N'1984-06-24' AS Date), N'400750, г. Барнаул, ул. Школьная, 36, кв. 71', N'damon.mcclure@mills.com', N'cl12404', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (61, N'Васильева Ксения Константиновна', 45462586, N'Серия 4783 Номер 612567', CAST(N'1999-01-08' AS Date), N'660590, г. Барнаул, ул. Дачная, 37, кв. 70', N'grady.reilly@block.com', N'cl12405', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (62, N'Борисова Тамара Данииловна', 45462587, N'Серия 4658 Номер 621200', CAST(N'1993-05-29' AS Date), N'426083, г. Барнаул, ул. Механизаторов, 41, кв. 26', N'boyd.koss@yahoo.com', N'cl12406', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (63, N'Дмитриев Мирон Ильич', 45462588, N'Серия 4908 Номер 634613', CAST(N'1985-04-13' AS Date), N'410569, г. Барнаул, ул. Парковая, 36, кв. 17', N'obartell@franecki.info', N'cl12407', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (64, N'Лебедева Анна Александровна', 45462589, N'Серия 5092 Номер 642468', CAST(N'1985-03-30' AS Date), N'443375, г. Барнаул, ул. Дзержинского, 50, кв. 95', N'reina75@ferry.net', N'cl12408', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (65, N'Пономарев Артём Маркович', 45462590, N'Серия 5155 Номер 465274', CAST(N'1984-02-06' AS Date), N'614316, г. Барнаул, ул. Первомайская, 48, кв. 31', N'karson28@hotmail.com', N'cl12409', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (66, N'Борисова Елена Михайловна', 45462591, N'Серия 5086 Номер 666893', CAST(N'1976-05-23' AS Date), N'445685, г. Барнаул, ул. Зеленая, 7, кв. 47', N'damaris61@okon.com', N'cl12410', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (67, N'Моисеев Камиль Максимович', 45462592, N'Серия 5333 Номер 675375', CAST(N'1999-06-17' AS Date), N'614505, г. Барнаул, ул. Нагорная, 37, кв. 31', N'carroll.jerod@hotmail.com', N'cl12411', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (68, N'Герасимова Дарья Константиновна', 45462593, N'Серия 5493 Номер 684572', CAST(N'1984-10-13' AS Date), N'426629, г. Барнаул, ул. Весенняя, 32, кв. 46', N'ron.treutel@quitzon.com', N'cl12412', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (69, N'Михайлова Мария Марковна', 45462594, N'Серия 5150 Номер 696226', CAST(N'1976-02-12' AS Date), N'603743, г. Барнаул, ул. Матросова, 19, кв. 20', N'olen79@yahoo.com', N'cl12413', NULL)
INSERT [dbo].[clients] ([id], [FIO], [Code_Clienta], [Passport_Data], [Birthday], [Adress], [e-mail], [Password], [id_zakaza]) VALUES (70, N'Коршунов Кирилл Максимович', 45462595, N'Серия 1308 Номер 703305', CAST(N'1985-05-22' AS Date), N'450750, г. Барнаул, ул. Клубная, 23, кв. 90', N'pacocha.robbie@yahoo.com', N'cl12414', NULL)
SET IDENTITY_INSERT [dbo].[clients] OFF
GO
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (336, N'Прокат лыж', N'8HFJHG443
', 800, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Прокат лыжных палок', N'87FDJKHJ
', 100, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Прокат сноуборда', N'JUR8R
', 1200, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Прокат обуви для сноуборда', N'JKFBJ09
', 400, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Прокат шлема', N'63748HF
', 300, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Прокат защитных подушек для сноубордистов
', N'JFH7382
', 300, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Прокат очков для лыжников
', N'OIJNB12
', 150, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Прокат ватрушки
', N'BSFBHV63
', 100, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Прокат санок
', N'HJBUJE21J
', 300, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Прокат коньков
', N'DHBGFY563
', 450, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Подъем на 1 уровень', N'JHVSJF6
', 300, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Подъем на 2 уровень', N'DJHGBS982
', 700, NULL)
INSERT [dbo].[uslugi] ([ID], [title], [code], [price], [id_zakazy]) VALUES (353, N'Подъем на 3 уровень', N'638VVNQ3
', 1200, NULL)
GO
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (1, N'45462526/44632', CAST(N'2022-12-03' AS Date), CAST(N'09:10:00' AS Time), 45462526, N'34, 31, 353, 336', N'Новая', NULL, N'120 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (2, N'45462526/44632', CAST(N'2022-03-13' AS Date), CAST(N'10:10:00' AS Time), 45462527, N'98, 45, 89, 99, 123', N'В прокате', NULL, N'600 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (3, N'45462528/44634', CAST(N'2022-03-14' AS Date), CAST(N'11:10:00' AS Time), 45462528, N'92, 45, 57, 88', N'В прокате', NULL, N'2 часа')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (4, N'45462529/44635', CAST(N'2022-03-15' AS Date), CAST(N'12:10:00' AS Time), 45462529, N'92, 45, 57, 88, 44', N'Новая', NULL, N'10 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (5, N'45462530/44636', CAST(N'2022-03-16' AS Date), CAST(N'13:10:00' AS Time), 45462530, N'98, 45, 89, 353, 336, 34', N'Закрыта', CAST(N'2022-04-16' AS Date), N'320 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (6, N'45462531/44637', CAST(N'2022-03-17' AS Date), CAST(N'14:10:00' AS Time), 45462531, N'34, 31, 353, 337', N'Новая', NULL, N'480 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (7, N'45462532/44638', CAST(N'2022-03-18' AS Date), CAST(N'15:10:00' AS Time), 45462532, N'98, 45, 89, 99, 124', N'Новая', NULL, N'4 часа')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (8, N'45462533/44639', CAST(N'2022-03-19' AS Date), CAST(N'16:10:00' AS Time), 45462533, N'92, 45, 57, 89', N'В прокате', NULL, N'6 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (9, N'45462534/44640', CAST(N'2022-03-20' AS Date), CAST(N'10:00:00' AS Time), 45462534, N'92, 45, 57, 88, 45', N'В прокате', NULL, N'12 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (10, N'45462535/44641', CAST(N'2022-03-21' AS Date), CAST(N'11:00:00' AS Time), 45462535, N'98, 45, 89, 353, 336, 35', N'Новая', NULL, N'120 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (11, N'45462536/44642', CAST(N'2022-03-22' AS Date), CAST(N'12:00:00' AS Time), 45462536, N'34, 31, 353, 338', N'Закрыта', CAST(N'2022-03-22' AS Date), N'720 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (12, N'45462537/44643', CAST(N'2022-03-23' AS Date), CAST(N'13:00:00' AS Time), 45462537, N'98, 45, 89, 99, 125', N'В прокате', NULL, N'2 часа')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (13, N'45462538/44644', CAST(N'2022-03-24' AS Date), CAST(N'14:00:00' AS Time), 45462538, N'92, 45, 57, 90', N'В прокате', NULL, N'10 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (14, N'45462539/44645', CAST(N'2022-03-25' AS Date), CAST(N'15:00:00' AS Time), 45462539, N'92, 45, 57, 88, 46', N'В прокате', NULL, N'320 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (15, N'45462540/44646', CAST(N'2022-03-26' AS Date), CAST(N'16:00:00' AS Time), 45462540, N'98, 45, 89, 353, 336, 36', N'Закрыта', CAST(N'2022-04-26' AS Date), N'480 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (16, N'45462541/44647', CAST(N'2022-03-27' AS Date), CAST(N'17:00:00' AS Time), 45462541, N'34, 31, 353, 339', N'Новая', NULL, N'4 часа')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (17, N'45462542/44648', CAST(N'2022-03-28' AS Date), CAST(N'18:00:00' AS Time), 45462542, N'98, 45, 89, 99, 126', N'В прокате', NULL, N'6 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (18, N'45462543/44649', CAST(N'2022-03-29' AS Date), CAST(N'19:00:00' AS Time), 45462543, N'92, 45, 57, 91', N'В прокате', NULL, N'12 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (19, N'45462544/44650', CAST(N'2022-03-30' AS Date), CAST(N'12:30:00' AS Time), 45462544, N'92, 45, 57, 88, 47', N'Новая', NULL, N'120 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (20, N'45462545/44651', CAST(N'2022-03-31' AS Date), CAST(N'13:30:00' AS Time), 45462545, N'98, 45, 89, 353, 336, 37', N'Новая', NULL, N'600 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (21, N'45462546/44652', CAST(N'2022-01-04' AS Date), CAST(N'14:30:00' AS Time), 45462546, N'34, 31, 353, 340', N'Закрыта', CAST(N'2022-01-04' AS Date), N'2 часа')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (22, N'45462547/44653', CAST(N'2022-02-04' AS Date), CAST(N'15:30:00' AS Time), 45462547, N'98, 45, 89, 99, 127', N'Новая', NULL, N'10 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (23, N'45462548/44654', CAST(N'2022-03-04' AS Date), CAST(N'16:30:00' AS Time), 45462548, N'92, 45, 57, 92', N'Новая', NULL, N'320 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (24, N'45462549/44655', CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462549, N'92, 45, 57, 88, 48', N'В прокате', NULL, N'480 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (25, N'45462550/44656', CAST(N'2022-05-04' AS Date), CAST(N'18:30:00' AS Time), 45462550, N'98, 45, 89, 353, 336, 38', N'В прокате', NULL, N'4 часа')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (26, N'45462551/44657', CAST(N'2022-06-04' AS Date), CAST(N'15:30:00' AS Time), 45462551, N'34, 31, 353, 341', N'В прокате', NULL, N'6 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (27, N'45462552/44658', CAST(N'2022-07-04' AS Date), CAST(N'16:30:00' AS Time), 45462552, N'98, 45, 89, 99, 128', N'В прокате', NULL, N'12 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (28, N'45462553/44659', CAST(N'2022-08-04' AS Date), CAST(N'17:30:00' AS Time), 45462553, N'92, 45, 57, 93', N'Закрыта', CAST(N'2022-08-04' AS Date), N'120 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (29, N'45462554/44660', CAST(N'2022-09-04' AS Date), CAST(N'18:30:00' AS Time), 45462554, N'92, 45, 57, 88, 49', N'Новая', NULL, N'600 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (30, N'45462555/44661', CAST(N'2022-10-04' AS Date), CAST(N'19:30:00' AS Time), 45462555, N'98, 45, 89, 353, 336, 39', N'В прокате', NULL, N'2 часа')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (31, N'45462556/44662', CAST(N'2022-11-04' AS Date), CAST(N'10:30:00' AS Time), 45462556, N'34, 31, 353, 342', N'В прокате', NULL, N'10 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (32, N'45462557/44663', CAST(N'2022-12-04' AS Date), CAST(N'11:30:00' AS Time), 45462557, N'98, 45, 89, 99, 129', N'Новая', NULL, N'320 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (33, N'45462558/44664', CAST(N'2022-04-13' AS Date), CAST(N'12:30:00' AS Time), 45462558, N'92, 45, 57, 94', N'Новая', NULL, N'480 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (34, N'45462559/44665', CAST(N'2022-04-14' AS Date), CAST(N'13:30:00' AS Time), 45462559, N'92, 45, 57, 88, 50', N'Новая', NULL, N'4 часа')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (35, N'45462560/44666', CAST(N'2022-04-15' AS Date), CAST(N'14:30:00' AS Time), 45462560, N'98, 45, 89, 353, 336, 40', N'В прокате', NULL, N'6 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (36, N'45462561/44653', CAST(N'2022-02-04' AS Date), CAST(N'15:30:00' AS Time), 45462561, N'34, 31, 353, 343', N'В прокате', NULL, N'12 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (37, N'45462562/44654', CAST(N'2022-03-04' AS Date), CAST(N'16:30:00' AS Time), 45462562, N'98, 45, 89, 99, 130', N'В прокате', NULL, N'120 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (38, N'45462563/44655', CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462563, N'92, 45, 57, 95', N'Закрыта', CAST(N'2022-04-04' AS Date), N'600 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (39, N'45462564/44656', CAST(N'2022-05-04' AS Date), CAST(N'10:15:00' AS Time), 45462564, N'92, 45, 57, 88, 51', N'В прокате', NULL, N'2 часа')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (40, N'45462565/44657', CAST(N'2022-06-04' AS Date), CAST(N'11:15:00' AS Time), 45462565, N'98, 45, 89, 353, 336, 41', N'Новая', NULL, N'10 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (41, N'45462566/44658', CAST(N'2022-07-04' AS Date), CAST(N'12:15:00' AS Time), 45462566, N'34, 31, 353, 344', N'Закрыта', CAST(N'2022-07-04' AS Date), N'320 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (42, N'45462567/44659', CAST(N'2022-08-04' AS Date), CAST(N'13:15:00' AS Time), 45462567, N'98, 45, 89, 99, 131', N'В прокате', NULL, N'480 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (43, N'45462568/44660', CAST(N'2022-09-04' AS Date), CAST(N'14:15:00' AS Time), 45462568, N'92, 45, 57, 96', N'В прокате', NULL, N'4 часа')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (44, N'45462569/44652', CAST(N'2022-01-04' AS Date), CAST(N'15:15:00' AS Time), 45462569, N'92, 45, 57, 88, 52', N'В прокате', NULL, N'6 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (45, N'45462570/44653', CAST(N'2022-02-04' AS Date), CAST(N'16:15:00' AS Time), 45462570, N'98, 45, 89, 353, 336, 42', N'В прокате', NULL, N'12 часов')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (46, N'45462571/44654', CAST(N'2022-03-04' AS Date), CAST(N'10:45:00' AS Time), 45462571, N'34, 31, 353, 345', N'В прокате', NULL, N'480 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (47, N'45462572/44655', CAST(N'2022-04-04' AS Date), CAST(N'11:45:00' AS Time), 45462572, N'98, 45, 89, 99, 132', N'Закрыта', CAST(N'2022-04-04' AS Date), N'320 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (48, N'45462573/44656', CAST(N'2022-05-04' AS Date), CAST(N'12:45:00' AS Time), 45462573, N'92, 45, 57, 97', N'Новая', NULL, N'480 минут')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (49, N'45462574/44657', CAST(N'2022-06-04' AS Date), CAST(N'13:45:00' AS Time), 45462574, N'92, 45, 57, 88, 53', N'Новая', NULL, N'4 часа')
INSERT [dbo].[zakazy] ([id], [code], [date_creation], [time], [code_client], [uslugi], [status], [date_of_closing], [time_prokat]) VALUES (50, N'45462575/44658', CAST(N'2022-07-04' AS Date), CAST(N'14:45:00' AS Time), 45462575, N'98, 45, 89, 353, 336, 43', N'Новая', NULL, N'6 часов')
GO
ALTER TABLE [dbo].[clients]  WITH CHECK ADD  CONSTRAINT [FK_clients_zakazy] FOREIGN KEY([id_zakaza])
REFERENCES [dbo].[zakazy] ([id])
GO
ALTER TABLE [dbo].[clients] CHECK CONSTRAINT [FK_clients_zakazy]
GO
ALTER TABLE [dbo].[uslugi]  WITH CHECK ADD  CONSTRAINT [FK_uslugi_zakazy] FOREIGN KEY([id_zakazy])
REFERENCES [dbo].[zakazy] ([id])
GO
ALTER TABLE [dbo].[uslugi] CHECK CONSTRAINT [FK_uslugi_zakazy]
GO
USE [master]
GO
ALTER DATABASE [gornolyzhnyi_kompleks] SET  READ_WRITE 
GO
