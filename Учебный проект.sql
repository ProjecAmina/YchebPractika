USE [wpf_ycheb_Amina]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 20.11.2023 19:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[ID_Application] [int] NOT NULL,
	[Number_Specialization] [char](50) NOT NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[ID_Application] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 20.11.2023 19:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID_Department] [int] NOT NULL,
	[Shifr] [varchar](2) NULL,
	[Name_Department] [varchar](50) NULL,
	[ID_Faculty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Department] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discipline]    Script Date: 20.11.2023 19:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline](
	[ID_Discipline] [int] NOT NULL,
	[Hour] [int] NOT NULL,
	[Name_Dicsipline] [varchar](50) NOT NULL,
	[ID_Department] [int] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Discipline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 20.11.2023 19:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Tab_Number] [int] NOT NULL,
	[ID_Department] [int] NULL,
	[Name_Employee] [varchar](50) NULL,
	[ID_Post] [int] NULL,
	[Salary] [decimal](10, 2) NULL,
	[ChiefTabNumber] [int] NULL,
	[Stag] [int] NULL,
	[Rang] [varchar](50) NULL,
	[Degree] [varchar](50) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Tab_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 20.11.2023 19:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ID_Exam] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[ID_Discipline] [int] NOT NULL,
	[ID_Student] [int] NOT NULL,
	[Tab_Number] [int] NOT NULL,
	[Room] [varchar](10) NOT NULL,
	[Grade] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Exam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 20.11.2023 19:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[ID_Faculty] [int] NOT NULL,
	[Abbreviation] [varchar](2) NULL,
	[Name_Faculty] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Faculty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 20.11.2023 19:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID_Post] [int] NOT NULL,
	[Name_Post] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Post] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialization]    Script Date: 20.11.2023 19:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialization](
	[Number] [char](50) NOT NULL,
	[Name_Specialization] [varchar](50) NOT NULL,
	[ID_Department] [int] NULL,
 CONSTRAINT [PK__Speciali__78A1A19CFA71F6B7] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 20.11.2023 19:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID_Student] [int] NOT NULL,
	[Number_Specialization] [char](50) NOT NULL,
	[Name_Student] [varchar](50) NOT NULL,
	[Age] [int] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__Student__0ADDC14C6FAC453B] PRIMARY KEY CLUSTERED 
(
	[ID_Student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentDisc]    Script Date: 20.11.2023 19:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDisc](
	[ID_Student] [int] NULL,
	[ID_Discipline] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Application] ([ID_Application], [Number_Specialization]) VALUES (220, N'01.03.2004                                        ')
INSERT [dbo].[Application] ([ID_Application], [Number_Specialization]) VALUES (221, N'09.03.2002                                        ')
INSERT [dbo].[Application] ([ID_Application], [Number_Specialization]) VALUES (222, N'09.03.2003                                        ')
INSERT [dbo].[Application] ([ID_Application], [Number_Specialization]) VALUES (223, N'14.03.2002                                        ')
INSERT [dbo].[Application] ([ID_Application], [Number_Specialization]) VALUES (224, N'38.03.05                                          ')
INSERT [dbo].[Department] ([ID_Department], [Shifr], [Name_Department], [ID_Faculty]) VALUES (1, N'вм', N'Высшая математика', 1)
INSERT [dbo].[Department] ([ID_Department], [Shifr], [Name_Department], [ID_Faculty]) VALUES (2, N'ис', N'Информационные системы', 2)
INSERT [dbo].[Department] ([ID_Department], [Shifr], [Name_Department], [ID_Faculty]) VALUES (3, N'мм', N'Математическое моделирование', 3)
INSERT [dbo].[Department] ([ID_Department], [Shifr], [Name_Department], [ID_Faculty]) VALUES (4, N'оф', N'Общая физика', 4)
INSERT [dbo].[Department] ([ID_Department], [Shifr], [Name_Department], [ID_Faculty]) VALUES (5, N'пи', N'Прикладная информатика', 1)
INSERT [dbo].[Department] ([ID_Department], [Shifr], [Name_Department], [ID_Faculty]) VALUES (6, N'эф', N'Экспериментальная физика', 2)
INSERT [dbo].[Discipline] ([ID_Discipline], [Hour], [Name_Dicsipline], [ID_Department], [IsDeleted]) VALUES (101, 320, N'Математика', 1, NULL)
INSERT [dbo].[Discipline] ([ID_Discipline], [Hour], [Name_Dicsipline], [ID_Department], [IsDeleted]) VALUES (102, 160, N'Информатика', 5, NULL)
INSERT [dbo].[Discipline] ([ID_Discipline], [Hour], [Name_Dicsipline], [ID_Department], [IsDeleted]) VALUES (103, 160, N'Физика', 4, NULL)
INSERT [dbo].[Discipline] ([ID_Discipline], [Hour], [Name_Dicsipline], [ID_Department], [IsDeleted]) VALUES (202, 120, N'Базы данных', 2, NULL)
INSERT [dbo].[Discipline] ([ID_Discipline], [Hour], [Name_Dicsipline], [ID_Department], [IsDeleted]) VALUES (204, 160, N'Электроника', 6, NULL)
INSERT [dbo].[Discipline] ([ID_Discipline], [Hour], [Name_Dicsipline], [ID_Department], [IsDeleted]) VALUES (205, 80, N'Программирование', 5, NULL)
INSERT [dbo].[Discipline] ([ID_Discipline], [Hour], [Name_Dicsipline], [ID_Department], [IsDeleted]) VALUES (209, 80, N'Моделирование', 3, NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (101, 5, N'Прохоров П.П.', 1, CAST(35000.00 AS Decimal(10, 2)), 101, 10, N'профессор', N'д. т.н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (102, 5, N'Семенов С.С.', 2, CAST(25000.00 AS Decimal(10, 2)), 101, 5, N'доцент', N'к. ф.-м. н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (105, 5, N'Петров П.П.', 2, CAST(25000.00 AS Decimal(10, 2)), 101, 4, N'доцент', N'к. т.н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (153, 5, N'Сидорова С.С.', 3, CAST(15000.00 AS Decimal(10, 2)), 102, 3, N'', N'', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (201, 2, N'Андреев А.А.', 1, CAST(35000.00 AS Decimal(10, 2)), 201, 12, N'профессор', N'д. ф.-м. н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (202, 2, N'Борисов Б.Б.', 2, CAST(25000.00 AS Decimal(10, 2)), 201, 15, N'доцент', N'к. ф.-м. н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (241, 2, N'Глухов Г.Г.', 3, CAST(20000.00 AS Decimal(10, 2)), 201, 2, N'', N'', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (242, 2, N'Чернов Ч.Ч.', 3, CAST(15000.00 AS Decimal(10, 2)), 202, 10, N'', N'', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (301, 3, N'Басов Б.Б.', 1, CAST(35000.00 AS Decimal(10, 2)), 301, 5, N'профессор', N'д. т.н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (302, 3, N'Сергеева С.С.', 2, CAST(25000.00 AS Decimal(10, 2)), 301, 6, N'доцент', N'к. т.н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (401, 4, N'Волков В.В.', 1, CAST(35000.00 AS Decimal(10, 2)), 401, 2, N'', N'', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (402, 4, N'Зайцев З.З.', 2, CAST(25000.00 AS Decimal(10, 2)), 401, 1, N'профессор', N'д. т.н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (403, 4, N'Смирнов С.С.', 2, CAST(15000.00 AS Decimal(10, 2)), 401, 3, N'доцент', N'к. т.н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (435, 4, N'Лисин Л.Л.', 3, CAST(20000.00 AS Decimal(10, 2)), 402, 4, N'', N'', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (501, 1, N'Кузнецов К.К.', 1, CAST(35000.00 AS Decimal(10, 2)), 501, 2, N'профессор', N'д. ф.-м. н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (502, 1, N'Романцев Р.Р.', 2, CAST(25000.00 AS Decimal(10, 2)), 501, 3, N'профессор', N'д. ф.-м. н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (503, 1, N'Соловьев С.С.', 2, CAST(25000.00 AS Decimal(10, 2)), 501, 4, N'доцент', N'к. ф.-м. н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (601, 6, N'Зверев З.З.', 1, CAST(35000.00 AS Decimal(10, 2)), 601, 9, N'профессор', N'д. ф.-м. н.', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (602, 6, N'Сорокина С.С.', 2, CAST(25000.00 AS Decimal(10, 2)), 601, 2, N'', N'', NULL)
INSERT [dbo].[Employee] ([Tab_Number], [ID_Department], [Name_Employee], [ID_Post], [Salary], [ChiefTabNumber], [Stag], [Rang], [Degree], [IsDeleted]) VALUES (614, 6, N'Григорьев Г.Г.', 3, CAST(20000.00 AS Decimal(10, 2)), 602, 7, N'', N'', NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (1, CAST(N'2015-06-05' AS Date), 102, 10101, 102, N'т505', 4, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (2, CAST(N'2015-06-05' AS Date), 102, 10102, 102, N'т505', 4, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (3, CAST(N'2015-06-05' AS Date), 202, 20101, 202, N'т506', 4, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (4, CAST(N'2015-06-05' AS Date), 202, 20102, 202, N'т506', 3, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (5, CAST(N'2015-06-07' AS Date), 102, 30101, 105, N'ф419', 3, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (6, CAST(N'2015-06-07' AS Date), 102, 30102, 101, N'т506', 4, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (7, CAST(N'2015-06-07' AS Date), 102, 80101, 102, N'м425', 5, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (8, CAST(N'2015-06-09' AS Date), 205, 80102, 402, N'м424', 4, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (9, CAST(N'2015-06-09' AS Date), 209, 20101, 302, N'ф333', 3, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (10, CAST(N'2015-06-10' AS Date), 101, 10101, 501, N'т506', 4, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (11, CAST(N'2015-06-10' AS Date), 101, 10102, 501, N'т506', 4, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (12, CAST(N'2015-06-10' AS Date), 204, 30102, 601, N'ф349', 5, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (13, CAST(N'2015-06-10' AS Date), 209, 80101, 301, N'э105', 5, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (14, CAST(N'2015-06-10' AS Date), 209, 80102, 301, N'э105', 4, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (15, CAST(N'2015-06-12' AS Date), 101, 80101, 502, N'с324', 4, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (16, CAST(N'2015-06-15' AS Date), 101, 30101, 503, N'ф417', 4, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (17, CAST(N'2015-06-15' AS Date), 101, 50101, 501, N'ф201', 5, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (18, CAST(N'2015-06-15' AS Date), 101, 50102, 501, N'ф201', 3, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (19, CAST(N'2015-06-15' AS Date), 103, 10101, 403, N'ф414', 4, NULL)
INSERT [dbo].[Exam] ([ID_Exam], [Date], [ID_Discipline], [ID_Student], [Tab_Number], [Room], [Grade], [IsDeleted]) VALUES (20, CAST(N'2015-06-17' AS Date), 102, 10101, 102, N'т505', 5, NULL)
INSERT [dbo].[Faculty] ([ID_Faculty], [Abbreviation], [Name_Faculty]) VALUES (1, N'Ен', N'Естественные науки')
INSERT [dbo].[Faculty] ([ID_Faculty], [Abbreviation], [Name_Faculty]) VALUES (2, N'Гн', N'Гуманитарные науки')
INSERT [dbo].[Faculty] ([ID_Faculty], [Abbreviation], [Name_Faculty]) VALUES (3, N'Ит', N'Информационные технологии')
INSERT [dbo].[Faculty] ([ID_Faculty], [Abbreviation], [Name_Faculty]) VALUES (4, N'Фм', N'Физико-математический')
INSERT [dbo].[Post] ([ID_Post], [Name_Post]) VALUES (1, N'Зав.кафедрой')
INSERT [dbo].[Post] ([ID_Post], [Name_Post]) VALUES (2, N'Преподаватель')
INSERT [dbo].[Post] ([ID_Post], [Name_Post]) VALUES (3, N'Инженер')
INSERT [dbo].[Specialization] ([Number], [Name_Specialization], [ID_Department]) VALUES (N'01.03.2004                                        ', N'Прикладная математика', 5)
INSERT [dbo].[Specialization] ([Number], [Name_Specialization], [ID_Department]) VALUES (N'09.03.2002                                        ', N'Информационные системы и технологии', 4)
INSERT [dbo].[Specialization] ([Number], [Name_Specialization], [ID_Department]) VALUES (N'09.03.2003                                        ', N'Прикладная информатика', 2)
INSERT [dbo].[Specialization] ([Number], [Name_Specialization], [ID_Department]) VALUES (N'14.03.2002                                        ', N'Ядерные физика и технологии', 1)
INSERT [dbo].[Specialization] ([Number], [Name_Specialization], [ID_Department]) VALUES (N'38.03.05                                          ', N'Бизнес-информатика', 3)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (10101, N'09.03.2003                                        ', N'Николаева Н. Н.', 18, NULL)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (10102, N'09.03.2003                                        ', N'Иванов И. И.', 16, NULL)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (10103, N'09.03.2003                                        ', N'Крюков К. К.', 20, NULL)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (20101, N'09.03.2002                                        ', N'Андреев А. А.', 22, NULL)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (20102, N'09.03.2002                                        ', N'Федоров Ф. Ф.', 18, NULL)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (30101, N'14.03.2002                                        ', N'Бондаренко Б. Б.', 18, NULL)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (30102, N'14.03.2002                                        ', N'Цветков К. К.', 19, NULL)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (30103, N'14.03.2002                                        ', N'Петров П. П.', 19, NULL)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (50101, N'01.03.2004                                        ', N'Сергеев С. С.', 19, NULL)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (50102, N'01.03.2004                                        ', N'Кудрявцев К. К.', 19, NULL)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (80101, N'38.03.05                                          ', N'Макаров М. М.', 20, NULL)
INSERT [dbo].[Student] ([ID_Student], [Number_Specialization], [Name_Student], [Age], [IsDeleted]) VALUES (80102, N'38.03.05                                          ', N'Яковлев Я. Я.', 21, NULL)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (10101, 101)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (10102, 102)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (10103, 103)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (20101, 202)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (20102, 204)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (30101, 205)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (30102, 209)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (30103, 101)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (50101, 102)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (50102, 103)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (80101, 202)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (80102, 204)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (10101, 205)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (10102, 209)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (10103, 101)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (20101, 102)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (20102, 103)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (30101, 202)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (30102, 204)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (30103, 205)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (50101, 209)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (50102, 101)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (80101, 102)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (80102, 103)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (50101, 202)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (50102, 202)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (80101, 204)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (80102, 205)
INSERT [dbo].[StudentDisc] ([ID_Student], [ID_Discipline]) VALUES (10101, 209)
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Specialization] FOREIGN KEY([Number_Specialization])
REFERENCES [dbo].[Specialization] ([Number])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Specialization]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Faculty] FOREIGN KEY([ID_Faculty])
REFERENCES [dbo].[Faculty] ([ID_Faculty])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Faculty]
GO
ALTER TABLE [dbo].[Discipline]  WITH CHECK ADD  CONSTRAINT [FK_Discipline_Department] FOREIGN KEY([ID_Department])
REFERENCES [dbo].[Department] ([ID_Department])
GO
ALTER TABLE [dbo].[Discipline] CHECK CONSTRAINT [FK_Discipline_Department]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([ChiefTabNumber])
REFERENCES [dbo].[Employee] ([Tab_Number])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([ID_Department])
REFERENCES [dbo].[Department] ([ID_Department])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Post] FOREIGN KEY([ID_Post])
REFERENCES [dbo].[Post] ([ID_Post])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Post]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Discipline] FOREIGN KEY([ID_Discipline])
REFERENCES [dbo].[Discipline] ([ID_Discipline])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Discipline]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Employee] FOREIGN KEY([Tab_Number])
REFERENCES [dbo].[Employee] ([Tab_Number])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Employee]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Student] FOREIGN KEY([ID_Student])
REFERENCES [dbo].[Student] ([ID_Student])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Student]
GO
ALTER TABLE [dbo].[Specialization]  WITH CHECK ADD  CONSTRAINT [FK_Specialization_Department] FOREIGN KEY([ID_Department])
REFERENCES [dbo].[Department] ([ID_Department])
GO
ALTER TABLE [dbo].[Specialization] CHECK CONSTRAINT [FK_Specialization_Department]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Specialization] FOREIGN KEY([Number_Specialization])
REFERENCES [dbo].[Specialization] ([Number])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Specialization]
GO
ALTER TABLE [dbo].[StudentDisc]  WITH CHECK ADD  CONSTRAINT [FK_StudentDisc_Discipline] FOREIGN KEY([ID_Discipline])
REFERENCES [dbo].[Discipline] ([ID_Discipline])
GO
ALTER TABLE [dbo].[StudentDisc] CHECK CONSTRAINT [FK_StudentDisc_Discipline]
GO
ALTER TABLE [dbo].[StudentDisc]  WITH CHECK ADD  CONSTRAINT [FK_StudentDisc_Student] FOREIGN KEY([ID_Student])
REFERENCES [dbo].[Student] ([ID_Student])
GO
ALTER TABLE [dbo].[StudentDisc] CHECK CONSTRAINT [FK_StudentDisc_Student]
GO
