USE Учебная
GO
/****** Object:  Table [dbo].[Dishes]    Script Date: 07.03.2024 19:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dishes](
	[ID_Dishes] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ID_Group] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Dishes] PRIMARY KEY CLUSTERED 
(
	[ID_Dishes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 07.03.2024 19:42:28 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 07.03.2024 19:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID_Order] [int] IDENTITY(1,1) NOT NULL,
	[ID_Dishes] [int] NOT NULL,
	[id_Users] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Summa] [float] NOT NULL,
	[Order_Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 07.03.2024 19:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID_Role] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07.03.2024 19:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id_Users] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id_Users] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dishes] ON 

INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (1, N'Лосось запеченный с овощами', 1, 200, N'\Images\Лосось запеченный с овощами.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (2, N'Форель в миндале', 1, 220, N'\Images\Форель в миндале.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (3, N'Свинина по-французки', 1, 160, N'\Images\Свинина по-французки.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (4, N'Свинина "по-охотничьи"', 1, 240, N'\Images\Свинина по-охотничьи.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (5, N'Куриное филе "Гаваи"', 1, 220, N'\Images\Куриное филе Гаваи.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (6, N'Индейка "по-Болгарски"', 1, 170, N'\Images\Индейка по-Болгарски.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (7, N'Борщ', 2, 199, N'\Images\Борщ.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (8, N'Суп куриный', 2, 200, N'\Images\Суп куринный.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (9, N'Окрошка на квасе', 2, 200, N'\Images\Окрошка на квасе.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (10, N'Солянка мясная', 2, 200, N'\Images\Солянка мясная.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (11, N'"Греческий" Салат', 5, 120, N'\Images\Греческий Салат.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (12, N'Салат "Цезарь"', 5, 100, N'\Images\Салат Цезарь.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (13, N'"Оливье"', 5, 100, N'\Images\Оливье.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (14, N'Салат "Московский" классический', 5, 120, N'\Images\Салат Московский классический.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (15, N'Салат "Императрица"', 5, 200, N'\Images\Салат Императрица.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (16, N'Картофель Фри', 6, 100, N'\Images\Картофель Фри.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (17, N'Картофельное пюре', 6, 100, N'\Images\Картофельное пюре.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (18, N'Овощи гриль', 6, 100, N'\Images\Овощи гриль.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (19, N'Картофель "по-деревенски"', 6, 120, N'\Images\Картофель по-деревенски.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (20, N'Пшеничная булочка', 6, 150, N'\Images\Пшеничная булочка.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (21, N'Ржаная булочка', 6, 120, N'\Images\Ржаная булочка.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (22, N'Лаваш', 6, 150, N'\Images\Лаваш.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (23, N'Сырный соус', 6, 150, N'\Images\Сырный соус.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (24, N'Майонез', 6, 99, N'\Images\Майонез.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (25, N'Кетчуп', 6, 99, N'\Images\Кетчуп.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (26, N'Кисло-сладкий соус', 6, 99, N'\Images\Кисло-сладский соус.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (27, N'Соус барбекю', 6, 99, N'\Images\Соус барбекю.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (28, N'Имбирь', 6, 10, N'\Images\Имбирь.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (29, N'Сметана', 6, 10, N'\Images\Сметана.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (30, N'Орео', 7, 15, N'\Images\Орео.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (31, N'Макарон', 7, 20, N'\Images\Макарон.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (32, N'Наполеон слоеный', 7, 50, N'\Images\Наполеон слоенный.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (33, N'Шоколадный трюфель', 7, 50, N'\Images\Шоколадный трюфель.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (34, N'Медовик классический', 7, 20, N'\Images\Медовик классический.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (36, N'Мороженое фруктовое', 7, 20, N'\Images\Мороженое фруктовое.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (37, N'Мороженое шоколадное', 7, 20, N'\Images\Мороженое шоколадное.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (38, N'Мороженое ванильное', 7, 20, N'\Images\Мороженое ванильное.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (39, N'Тирамису', 7, 350, N'\Images\Тирамису.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (40, N'Шарлотка', 7, 350, N'\Images\Шарлотка.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (41, N'Эклер', 7, 350, N'\Images\Эклер.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (42, N'Яблочный штрудель', 7, 500, N'\Images\Яблочный штрудель.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (43, N'Панкейк ягоды', 7, 500, N'\Images\Панкейк ягоды.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (44, N'Сорбет', 7, 90, N'\Images\Сорбет.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (45, N'Наггетсы', 8, 100, N'\Images\Наггетсы.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (46, N'Гамбургер', 8, 100, N'\Images\Гамбургер.png')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (47, N'Чизбургер', 8, 100, N'\Images\Чизбургер.png')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (48, N'Чикенбургер', 8, 100, N'\Images\Чикенбургер.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (49, N'Крылышки фри', 8, 100, N'\Images\Крылышки фри.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (50, N'Стрипсы куриные', 8, 100, N'\Images\Стрипсы куриные.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (51, N'Сендвич с беконом', 8, 100, N'\Images\Сендвич с беконом.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (52, N'Буррито с яичницей и стейком', 8, 100, N'\Images\Буррито с яичницей и стейком.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (53, N'Бутерброд с салатом из помидоров', 8, 100, N'\Images\Бутерброд с салатом из помидоров.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (54, N'Шаурма с курицей', 8, 200, N'\Images\Шаурма с курицей.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (55, N'Сырная пицца', 9, 200, N'\Images\Сырная.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (56, N'Ветчина и сыр', 9, 200, N'\Images\Ветчина и сыр.png')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (57, N'Пеперони фреш', 9, 200, N'\Images\Пепперони фреш.png')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (58, N'Карбонара', 9, 500, N'\Images\Карбонара пицца.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (59, N'Мясная', 9, 500, N'\Images\Мясная пицца.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (60, N'Пеперони', 9, 200, N'\Images\Пепперони.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (61, N'Четыре сезона', 9, 200, N'\Images\Четыре сезона.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (62, N'Гавайская', 9, 500, N'\Images\Гавайская.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (63, N'Четыре сыра', 9, 500, N'\Images\Четыре сыра.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (64, N'Маргарита', 9, 200, N'\Images\Маргарита.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (65, N'Нежная маргарита', 9, 200, N'\Images\Нежная маргарита.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (66, N'Двойная пепперони', 9, 500, N'\Images\Двойная пепперони.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (67, N'Стейк "Чак"', 10, 1500, N'\Images\Стейк Чак.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (68, N'Филе Миньон', 10, 1900, N'\Images\Филе Миньон.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (69, N'Шатобриан', 10, 1850, N'\Images\Шатобриан.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (70, N'Стриплойн', 10, 2250, N'\Images\Стриплойн.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (71, N'Мачете', 10, 1850, N'\Images\Мачете.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (72, N'Денвер', 10, 1500, N'\Images\Денвер.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (73, N'Пиканья', 10, 1290, N'\Images\Пиканья.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (74, N'Стейк из лосося', 10, 1390, N'\Images\Стейк из лосося.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (75, N'Стейк из индейки с морковью и соусом блю чиз', 10, 799, N'\Images\Стейк из индейки с морковью и соусом блю чиз.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (76, N'Английский чай', 3, 100, N'\Images\Английский чай.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (77, N'Облепиховый чай', 3, 100, N'\Images\Облепиховый чай.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (78, N'Марокканский чай', 3, 120, N'\Images\Марокканский чай.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (79, N'Имбирный чай', 3, 100, N'\Images\Имбирный чай.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (80, N'Ягодный чай', 3, 110, N'\Images\Ягодный чай.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (81, N'Эспрессо', 3, 99, N'\Images\Эспрессо.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (82, N'Американо', 3, 99, N'\Images\Американо.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (83, N'Капучино', 3, 119, N'\Images\Капучино.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (84, N'Латте', 3, 149, N'\Images\Латте.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (85, N'Какао', 3, 150, N'\Images\Какао.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (86, N'Горячий шоколад', 3, 150, N'\Images\Горячий шоколад.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (87, N'Добрый Кола', 4, 199, N'\Images\Добрый Кола.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (88, N'Лимонад "Ежевика"', 4, 159, N'\Images\Лимонад Ежевика.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (89, N'Лимонад Оригинальный', 4, 199, N'\Images\Лимонад Оригинальный.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (90, N'Морс Вишневый', 4, 159, N'\Images\Морс Вишневый.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (91, N'Морс Клюквенный', 4, 199, N'\Images\Морс Клюквенный.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (92, N'Сок Яблочный', 4, 99, N'\Images\Сок Яблочный.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (93, N'Сок Апельсиновый', 4, 99, N'\Images\Сок Апельсиновый.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (94, N'Сок Мультифрукт', 4, 99, N'\Images\Сок Мультифрукт.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (95, N'Сок Вишневый', 4, 119, N'\Images\Сок Вишневый.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (96, N'Добрый', 4, 99, N'\Images\Добрый.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [ImagePath]) VALUES (97, N'Добрый Апельсин', 4, 99, N'\Images\Добрый Апельсин.jpg')
SET IDENTITY_INSERT [dbo].[Dishes] OFF
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
INSERT [dbo].[Roles] ([ID_Role], [RoleName]) VALUES (0, N'Пользователь')
INSERT [dbo].[Roles] ([ID_Role], [RoleName]) VALUES (1, N'Администратор')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id_Users], [Login], [Password], [Role]) VALUES (1, N'admin', N'admin', 1)
INSERT [dbo].[Users] ([id_Users], [Login], [Password], [Role]) VALUES (2, N'12', N'12', 0)
INSERT [dbo].[Users] ([id_Users], [Login], [Password], [Role]) VALUES (21, N'Vlad', N'vlad', 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Dishes]  WITH CHECK ADD  CONSTRAINT [FK_Dishes_Group] FOREIGN KEY([ID_Group])
REFERENCES [dbo].[Group] ([ID_Group])
GO
ALTER TABLE [dbo].[Dishes] CHECK CONSTRAINT [FK_Dishes_Group]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Dishes] FOREIGN KEY([ID_Dishes])
REFERENCES [dbo].[Dishes] ([ID_Dishes])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Dishes]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([id_Users])
REFERENCES [dbo].[Users] ([id_Users])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([Role])
REFERENCES [dbo].[Roles] ([ID_Role])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
