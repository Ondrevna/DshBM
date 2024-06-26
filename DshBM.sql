USE [DshBM]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 16.06.2024 17:14:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DenNed]    Script Date: 16.06.2024 17:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DenNed](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IdSubject] [int] NOT NULL,
 CONSTRAINT [PK_DenNed] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DomZadanie]    Script Date: 16.06.2024 17:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DomZadanie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSubject] [int] NOT NULL,
	[IdClass] [int] NOT NULL,
	[Zadanie] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DomZadanie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ochenki]    Script Date: 16.06.2024 17:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ochenki](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IdSubject] [int] NOT NULL,
	[IdClass] [int] NOT NULL,
	[Numbr] [int] NOT NULL,
 CONSTRAINT [PK_Ochenki] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 16.06.2024 17:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 16.06.2024 17:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 16.06.2024 17:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[Stazh] [nchar](10) NOT NULL,
	[IdSubject] [int] NOT NULL,
	[DenNed] [nvarchar](100) NULL,
	[Phone] [nchar](12) NULL,
	[Image] [nvarchar](100) NULL,
	[Dolzhost] [nvarchar](100) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testirovanie]    Script Date: 16.06.2024 17:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testirovanie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShXorosh] [nvarchar](max) NOT NULL,
	[Obraz] [nvarchar](max) NOT NULL,
	[TeaXor] [nvarchar](max) NOT NULL,
	[Remont] [nvarchar](max) NOT NULL,
	[OchenkaSh] [nvarchar](20) NOT NULL,
	[Otzov] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Testirovanie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 16.06.2024 17:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nchar](10) NOT NULL,
	[Password] [nchar](10) NOT NULL,
	[IdRole] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([Id], [Name]) VALUES (1, N'1А')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (2, N'2А')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (3, N'3А')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (4, N'4А')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (5, N'4Б')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (6, N'5А')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (7, N'6А')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (8, N'7А')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (9, N'7Б')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (10, N'8А')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (11, N'8Б')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (12, N'11А')
INSERT [dbo].[Class] ([Id], [Name]) VALUES (13, N'11Б')
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
SET IDENTITY_INSERT [dbo].[DenNed] ON 

INSERT [dbo].[DenNed] ([Id], [Name], [IdSubject]) VALUES (2, N'Понедельник', 1)
INSERT [dbo].[DenNed] ([Id], [Name], [IdSubject]) VALUES (3, N'Вторник', 2)
INSERT [dbo].[DenNed] ([Id], [Name], [IdSubject]) VALUES (4, N'Среда', 3)
INSERT [dbo].[DenNed] ([Id], [Name], [IdSubject]) VALUES (5, N'Четверг', 4)
INSERT [dbo].[DenNed] ([Id], [Name], [IdSubject]) VALUES (6, N'Пятница', 5)
SET IDENTITY_INSERT [dbo].[DenNed] OFF
GO
SET IDENTITY_INSERT [dbo].[DomZadanie] ON 

INSERT [dbo].[DomZadanie] ([Id], [IdSubject], [IdClass], [Zadanie]) VALUES (1, 1, 1, N'стр 17 уп 2')
INSERT [dbo].[DomZadanie] ([Id], [IdSubject], [IdClass], [Zadanie]) VALUES (2, 2, 1, N'стр 12 упр 10,11,12')
INSERT [dbo].[DomZadanie] ([Id], [IdSubject], [IdClass], [Zadanie]) VALUES (3, 3, 3, N'стр 20 упр 5')
INSERT [dbo].[DomZadanie] ([Id], [IdSubject], [IdClass], [Zadanie]) VALUES (4, 10, 12, N'стр 36 упр 12')
SET IDENTITY_INSERT [dbo].[DomZadanie] OFF
GO
SET IDENTITY_INSERT [dbo].[Ochenki] ON 

INSERT [dbo].[Ochenki] ([Id], [Name], [IdSubject], [IdClass], [Numbr]) VALUES (1, N'Петров', 1, 1, 5)
INSERT [dbo].[Ochenki] ([Id], [Name], [IdSubject], [IdClass], [Numbr]) VALUES (2, N'Кислов', 15, 13, 5)
SET IDENTITY_INSERT [dbo].[Ochenki] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Администратор                 ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Учитель                       ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Пользователь                  ')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([Id], [Name]) VALUES (1, N'английский язык')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (2, N'математика')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (3, N'ОРКиСЭ')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (4, N'литературное чтение')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (5, N'ИЗО')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (6, N'социально-бытовая ориентировка')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (7, N'всеобщая история')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (8, N'филология')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (9, N'экономика')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (10, N'биология')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (11, N'геометрия')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (12, N'алгебра')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (13, N'география')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (14, N'профильный труд')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (15, N'Технология')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (16, N'родной русский')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (17, N'обществознание')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (18, N'родная литература')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (19, N'технология')
INSERT [dbo].[Subject] ([Id], [Name]) VALUES (20, N'ОБЖ')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (1, N'Нефедов Илья Ильич                                ', N'20        ', 1, N'Понедельник', N'89632146545 ', N'img1.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (2, N'Николаева София Артемьевна                        ', N'32        ', 2, N'Вторник', N'89632845302 ', N'img2.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (3, N'Волков Сергей Ярославович                         ', N'40        ', 3, N'Среда', N'89628951452 ', N'img3.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (4, N'Устинова Виктория Дамировна                       ', N'15        ', 4, N'Четверг', N'89658630215 ', N'img4.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (5, N'Соболев Егор Артёмович                            ', N'26        ', 5, N'Пятница', N'82629632014 ', N'img5.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (6, N'Волков Давид Львович                              ', N'30        ', 6, N'Понедельник', N'89514454122 ', N'img6.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (7, N'Михайлов Демьян Дмитриевич                        ', N'32        ', 7, N'Вторник', N'89151553245 ', N'img7.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (8, N'Кузнецова Татьяна Максимовна                      ', N'33        ', 8, N'Среда', N'89432316252 ', N'img8.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (9, N'Зыкова Милана Елисеевна                           ', N'41        ', 9, N'Четверг', N'89548752155 ', N'img9.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (10, N'Богданов Демид Фёдорович                          ', N'21        ', 10, N'Пятница', N'89630302321 ', N'img10.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (11, N'Голубева Милана Игоревна                          ', N'36        ', 11, N'Понедельник', N'89521189852 ', N'img11.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (12, N'Астахова Варвара Егоровна                         ', N'10        ', 12, N'Вторник', N'89555965366 ', N'img12.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (13, N'Кузнецова Мария Данииловна                        ', N'15        ', 13, N'Среда', N'89245322500 ', N'img13.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (14, N'Шувалов Марк Арсентьевич                          ', N'25        ', 14, N'Четверг', N'89504054530 ', N'img14.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (15, N'Гончаров Артём Максимович                         ', N'19        ', 15, N'Пятница', N'89202555547 ', N'img15.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (16, N'Степанова Алина Ивановна                          ', N'23        ', 16, N'Понедельник', N'89562514424 ', N'img16.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (17, N'Волков Матвей Александрович                       ', N'29        ', 17, N'Вторник', N'89158982152 ', N'img17.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (18, N'Кулакова Таисия Владимировна                      ', N'43        ', 18, N'Среда', N'89153278915 ', N'img18.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (19, N'Румянцева Агата Савельевна                        ', N'10        ', 19, N'Четверг', N'89256389214 ', N'img19.jpg', N'Учитель')
INSERT [dbo].[Teacher] ([Id], [Name], [Stazh], [IdSubject], [DenNed], [Phone], [Image], [Dolzhost]) VALUES (20, N'Ульянов Арсений Матвеевич                         ', N'12        ', 20, N'Пятница', N'89204118900 ', N'img20.jpg', N'Учитель')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[Testirovanie] ON 

INSERT [dbo].[Testirovanie] ([Id], [ShXorosh], [Obraz], [TeaXor], [Remont], [OchenkaSh], [Otzov]) VALUES (1, N'Хорошая', N'Хорошее', N'Достаточно', N'Хороший', N'10', N'Хорошая школа, ребенку нравится здесь учиться. Учителя очень хорошие и всегда помогут')
INSERT [dbo].[Testirovanie] ([Id], [ShXorosh], [Obraz], [TeaXor], [Remont], [OchenkaSh], [Otzov]) VALUES (2, N'очень', N'да', N'конечно', N'ага', N'10', N'Все понравилось')
SET IDENTITY_INSERT [dbo].[Testirovanie] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [IdRole]) VALUES (1, N'1         ', N'1         ', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [IdRole]) VALUES (2, N'2         ', N'2         ', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [IdRole]) VALUES (3, N'3         ', N'3         ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[DenNed]  WITH CHECK ADD  CONSTRAINT [FK_DenNed_Subject] FOREIGN KEY([IdSubject])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[DenNed] CHECK CONSTRAINT [FK_DenNed_Subject]
GO
ALTER TABLE [dbo].[DomZadanie]  WITH CHECK ADD  CONSTRAINT [FK_DomZadanie_Class] FOREIGN KEY([IdClass])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[DomZadanie] CHECK CONSTRAINT [FK_DomZadanie_Class]
GO
ALTER TABLE [dbo].[DomZadanie]  WITH CHECK ADD  CONSTRAINT [FK_DomZadanie_Subject] FOREIGN KEY([IdSubject])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[DomZadanie] CHECK CONSTRAINT [FK_DomZadanie_Subject]
GO
ALTER TABLE [dbo].[Ochenki]  WITH CHECK ADD  CONSTRAINT [FK_Ochenki_Class] FOREIGN KEY([IdClass])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[Ochenki] CHECK CONSTRAINT [FK_Ochenki_Class]
GO
ALTER TABLE [dbo].[Ochenki]  WITH CHECK ADD  CONSTRAINT [FK_Ochenki_Subject] FOREIGN KEY([IdSubject])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[Ochenki] CHECK CONSTRAINT [FK_Ochenki_Subject]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject] FOREIGN KEY([IdSubject])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Subject]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
