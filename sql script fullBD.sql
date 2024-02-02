USE [Course]
GO
/****** Object:  Table [dbo].[Dishes]    Script Date: 26.01.2024 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dishes](
	[ID_Dishes] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ID_Group] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Dishes] PRIMARY KEY CLUSTERED 
(
	[ID_Dishes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drink]    Script Date: 26.01.2024 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drink](
	[ID_Drink] [int] IDENTITY(1,1) NOT NULL,
	[Name_Drink] [nvarchar](50) NOT NULL,
	[ID_Group] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Drink] PRIMARY KEY CLUSTERED 
(
	[ID_Drink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 26.01.2024 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID_Group] [int] NOT NULL,
	[Name_Group] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID_Group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 26.01.2024 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID_order] [int] IDENTITY(1,1) NOT NULL,
	[ID_dishes] [int] NOT NULL,
	[ID_Drink] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Summa] [float] NOT NULL,
	[Order_Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26.01.2024 21:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dishes] ON 

INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (1, N'Лосось запеченный с овощами', 1, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (2, N'Форель в миндале', 1, 220)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (3, N'Свинина по-французки', 1, 160)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (4, N'Свининеа "по-охотничьи"', 1, 240)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (5, N'Куриное филе "Гаваи"', 1, 220)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (6, N'Индейка "по-Болгарски"', 1, 170)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (7, N'Борщ', 2, 199)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (8, N'Суп куринный', 2, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (9, N'Окрошка на квасе', 2, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (10, N'Солянка мясная', 2, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (11, N'"Греческий" Салат', 5, 120)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (12, N'Салат "Цезарь"', 5, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (13, N'"Оливье"', 5, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (14, N'Салат "Московский" классический', 5, 120)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (15, N'Салат "Императрица"', 5, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (16, N'Картофель Фри', 6, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (17, N'Картофельное пюре', 6, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (18, N'Овощи гриль', 6, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (19, N'Картофель "по-деревенски"', 6, 120)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (20, N'Пшеничная булочка', 6, 150)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (21, N'Ржаная булочка', 6, 120)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (22, N'Лаваш', 6, 150)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (23, N'Сырный соус', 6, 150)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (24, N'Майонез', 6, 99)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (25, N'Кетчуп', 6, 99)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (26, N'Кисло-сладский соус', 6, 99)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (27, N'Соус барбекю', 6, 99)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (28, N'Имбирь', 6, 10)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (29, N'Сметана', 6, 10)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (30, N'Орео', 7, 15)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (31, N'Макарон', 7, 20)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (32, N'Наполеон слоенный', 7, 50)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (33, N'Шоколадный трюфель', 7, 50)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (34, N'Медовик классический', 7, 20)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (36, N'Мороженое фруктовое', 7, 20)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (37, N'Мороженое шоколадное', 7, 20)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (38, N'Мороженое ванильное', 7, 20)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (39, N'Тирамису', 7, 350)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (40, N'Шарлотка', 7, 350)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (41, N'Эклер', 7, 350)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (42, N'Яблочный штрудель', 7, 500)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (43, N'Панкейн ягоды', 7, 500)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (44, N'Сорбет', 7, 90)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (45, N'Наггетсы', 8, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (46, N'Гамбургер', 8, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (47, N'Чизбургер', 8, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (48, N'Чикунбургер', 8, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (49, N'Крылашки фри', 8, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (50, N'Стрипсы куриные', 8, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (51, N'Сендвич с беконом', 8, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (52, N'Буррито с яичницей и стейком', 8, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (53, N'Бутерброд с салатом из помидоров', 8, 100)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (54, N'Шаурма с курицей', 8, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (55, N'Сырная', 9, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (56, N'Ветчина и сыр', 9, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (57, N'Пепперони фреш', 9, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (58, N'Карбонара', 9, 500)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (59, N'Мясная', 9, 500)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (60, N'Пепперони', 9, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (61, N'Четыре сезона', 9, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (62, N'Гавайская', 9, 500)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (63, N'Четыре сыра', 9, 500)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (64, N'Маргарита', 9, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (65, N'Нежная маргарита', 9, 200)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (66, N'Двойная пепперони', 9, 500)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (67, N'Стейк "Чак"', 10, 1500)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (68, N'Филе Миньон', 10, 1900)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (69, N'Шатобриан', 10, 1850)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (70, N'Стриплойн', 10, 2250)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (71, N'Мачете', 10, 1850)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (72, N'Денвер', 10, 1500)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (73, N'Пиканья', 10, 1290)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (74, N'Стейк из лосося', 10, 1390)
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price]) VALUES (75, N'Стейк из индейки с морковью и соусом блю чиз', 10, 799)
SET IDENTITY_INSERT [dbo].[Dishes] OFF
GO
SET IDENTITY_INSERT [dbo].[Drink] ON 

INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (2, N'Английский чай', 3, 100)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (3, N'Облепиховый чай', 3, 100)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (4, N'Марокканский чай', 3, 120)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (6, N'Имбирный чай', 3, 100)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (7, N'Ягодный чай', 3, 110)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (9, N'Эспрессо', 3, 99)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (10, N'Американо', 3, 99)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (11, N'Капучино', 3, 119)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (12, N'Латте', 3, 149)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (13, N'Какао', 3, 150)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (14, N'Горячий шоколад', 3, 150)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (15, N'Кока-кола', 4, 199)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (16, N'Лимонад "Ежевика"', 4, 159)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (17, N'Лимонад Оригинальный', 4, 199)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (18, N'Морс Вишневый', 4, 159)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (19, N'Морс Клюквенный', 4, 199)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (20, N'Сок Яблочный', 4, 99)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (21, N'Сок Апельсиновый', 4, 99)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (22, N'Сок Мультифрукт', 4, 99)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (23, N'Сок Вишневый', 4, 119)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (24, N'Спрайт', 4, 99)
INSERT [dbo].[Drink] ([ID_Drink], [Name_Drink], [ID_Group], [Price]) VALUES (25, N'Фанта', 4, 99)
SET IDENTITY_INSERT [dbo].[Drink] OFF
GO
INSERT [dbo].[Group] ([ID_Group], [Name_Group]) VALUES (1, N'Горячие блюда')
INSERT [dbo].[Group] ([ID_Group], [Name_Group]) VALUES (2, N'Супы')
INSERT [dbo].[Group] ([ID_Group], [Name_Group]) VALUES (3, N'Горячие напитки')
INSERT [dbo].[Group] ([ID_Group], [Name_Group]) VALUES (4, N'Холодные напитки')
INSERT [dbo].[Group] ([ID_Group], [Name_Group]) VALUES (5, N'Салаты')
INSERT [dbo].[Group] ([ID_Group], [Name_Group]) VALUES (6, N'Гарниры и соусы')
INSERT [dbo].[Group] ([ID_Group], [Name_Group]) VALUES (7, N'Десерты')
INSERT [dbo].[Group] ([ID_Group], [Name_Group]) VALUES (8, N'Фаст-фуд')
INSERT [dbo].[Group] ([ID_Group], [Name_Group]) VALUES (9, N'Пицца')
INSERT [dbo].[Group] ([ID_Group], [Name_Group]) VALUES (10, N'Стейки')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [Login], [Password]) VALUES (1, N'admin', N'admin')
INSERT [dbo].[Users] ([id], [Login], [Password]) VALUES (2, N'12', N'12')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Dishes]  WITH CHECK ADD  CONSTRAINT [FK_Dishes_Group] FOREIGN KEY([ID_Group])
REFERENCES [dbo].[Group] ([ID_Group])
GO
ALTER TABLE [dbo].[Dishes] CHECK CONSTRAINT [FK_Dishes_Group]
GO
ALTER TABLE [dbo].[Drink]  WITH CHECK ADD  CONSTRAINT [FK_Drink_Group] FOREIGN KEY([ID_Group])
REFERENCES [dbo].[Group] ([ID_Group])
GO
ALTER TABLE [dbo].[Drink] CHECK CONSTRAINT [FK_Drink_Group]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Dishes] FOREIGN KEY([ID_dishes])
REFERENCES [dbo].[Dishes] ([ID_Dishes])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Dishes]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Drink] FOREIGN KEY([ID_Drink])
REFERENCES [dbo].[Drink] ([ID_Drink])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Drink]
GO
