USE [Course]
GO
/****** Object:  Table [dbo].[Dishes]    Script Date: 24.02.2024 0:54:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dishes](
	[ID_Dishes] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ID_Group] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Images] [nvarchar](max) NULL,
 CONSTRAINT [PK_Dishes] PRIMARY KEY CLUSTERED 
(
	[ID_Dishes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 24.02.2024 0:54:34 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 24.02.2024 0:54:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID_Order] [int] IDENTITY(1,1) NOT NULL,
	[ID_Dishes] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Summa] [float] NOT NULL,
	[Order_Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24.02.2024 0:54:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dishes] ON 

INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (1, N'Лосось запеченный с овощами', 1, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Лосось запеченный с овощами.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (2, N'Форель в миндале', 1, 220, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Форель в миндале.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (3, N'Свинина по-французки', 1, 160, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Свинина по-французки.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (4, N'Свинина "по-охотничьи"', 1, 240, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Свинина по-охотничьи.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (5, N'Куриное филе "Гаваи"', 1, 220, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Куриное филе Гаваи.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (6, N'Индейка "по-Болгарски"', 1, 170, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Индейка по-Болгарски.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (7, N'Борщ', 2, 199, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Борщ.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (8, N'Суп куриный', 2, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Суп куринный.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (9, N'Окрошка на квасе', 2, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Окрошка на квасе.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (10, N'Солянка мясная', 2, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Солянка мясная.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (11, N'"Греческий" Салат', 5, 120, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Греческий Салат.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (12, N'Салат "Цезарь"', 5, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Салат Цезарь.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (13, N'"Оливье"', 5, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Оливье.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (14, N'Салат "Московский" классический', 5, 120, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Салат Московский классический.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (15, N'Салат "Императрица"', 5, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Салат Императрица.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (16, N'Картофель Фри', 6, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Картофель Фри.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (17, N'Картофельное пюре', 6, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Картофельное пюре.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (18, N'Овощи гриль', 6, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Овощи гриль.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (19, N'Картофель "по-деревенски"', 6, 120, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Картофель по-деревенски.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (20, N'Пшеничная булочка', 6, 150, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Пшеничная булочка.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (21, N'Ржаная булочка', 6, 120, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Ржаная булочка.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (22, N'Лаваш', 6, 150, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Лаваш.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (23, N'Сырный соус', 6, 150, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Сырный соус.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (24, N'Майонез', 6, 99, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Майонез.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (25, N'Кетчуп', 6, 99, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Кетчуп.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (26, N'Кисло-сладкий соус', 6, 99, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Кисло-сладский соус.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (27, N'Соус барбекю', 6, 99, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Соус барбекю.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (28, N'Имбирь', 6, 10, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Имбирь.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (29, N'Сметана', 6, 10, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Сметана.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (30, N'Орео', 7, 15, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Орео.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (31, N'Макарон', 7, 20, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Макарон.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (32, N'Наполеон слоеный', 7, 50, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Наполеон слоенный.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (33, N'Шоколадный трюфель', 7, 50, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Шоколадный трюфель.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (34, N'Медовик классический', 7, 20, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Медовик классический.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (36, N'Мороженое фруктовое', 7, 20, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Мороженое фруктовое.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (37, N'Мороженое шоколадное', 7, 20, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Мороженое шоколадное.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (38, N'Мороженое ванильное', 7, 20, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Мороженое ванильное.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (39, N'Тирамису', 7, 350, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Тирамису.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (40, N'Шарлотка', 7, 350, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Шарлотка.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (41, N'Эклер', 7, 350, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Эклер.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (42, N'Яблочный штрудель', 7, 500, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Яблочный штрудель.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (43, N'Панкейк ягоды', 7, 500, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Панкейк ягоды.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (44, N'Сорбет', 7, 90, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Сорбет.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (45, N'Наггетсы', 8, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Наггетсы.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (46, N'Гамбургер', 8, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Гамбургер.png')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (47, N'Чизбургер', 8, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Чизбургер.png')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (48, N'Чикенбургер', 8, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Чикенбургер.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (49, N'Крылышки фри', 8, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Крылышки фри.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (50, N'Стрипсы куриные', 8, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Стрипсы куриные.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (51, N'Сендвич с беконом', 8, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Сендвич с беконом.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (52, N'Буррито с яичницей и стейком', 8, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Буррито с яичницей и стейком.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (53, N'Бутерброд с салатом из помидоров', 8, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Бутерброд с салатом из помидоров.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (54, N'Шаурма с курицей', 8, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Шаурма с курицей.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (55, N'Сырная пицца', 9, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Сырная.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (56, N'Ветчина и сыр', 9, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Ветчина и сыр.png')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (57, N'Пеперони фреш', 9, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Пепперони фреш.png')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (58, N'Карбонара', 9, 500, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Карбонара пицца.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (59, N'Мясная', 9, 500, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Мясная пицца.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (60, N'Пеперони', 9, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Пепперони.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (61, N'Четыре сезона', 9, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Четыре сезона.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (62, N'Гавайская', 9, 500, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Гавайская.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (63, N'Четыре сыра', 9, 500, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Четыре сыра.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (64, N'Маргарита', 9, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Маргарита.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (65, N'Нежная маргарита', 9, 200, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Нежная маргарита.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (66, N'Двойная пепперони', 9, 500, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Двойная пепперони.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (67, N'Стейк "Чак"', 10, 1500, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Стейк Чак.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (68, N'Филе Миньон', 10, 1900, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Филе Миньон.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (69, N'Шатобриан', 10, 1850, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Шатобриан.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (70, N'Стриплойн', 10, 2250, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Стриплойн.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (71, N'Мачете', 10, 1850, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Мачете.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (72, N'Денвер', 10, 1500, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Денвер.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (73, N'Пиканья', 10, 1290, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Пиканья.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (74, N'Стейк из лосося', 10, 1390, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Стейк из лосося.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (75, N'Стейк из индейки с морковью и соусом блю чиз', 10, 799, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Стейк из индейки с морковью и соусом блю чиз.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (76, N'Английский чай', 3, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Английский чай.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (77, N'Облепиховый чай', 3, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Облепиховый чай.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (78, N'Марокканский чай', 3, 120, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Марокканский чай.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (79, N'Имбирный чай', 3, 100, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Имбирный чай.jpeg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (80, N'Ягодный чай', 3, 110, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Ягодный чай.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (81, N'Эспрессо', 3, 99, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Эспрессо.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (82, N'Американо', 3, 99, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Американо.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (83, N'Капучино', 3, 119, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Капучино.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (84, N'Латте', 3, 149, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Латте.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (85, N'Какао', 3, 150, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Какао.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (86, N'Горячий шоколад', 3, 150, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Горячий шоколад.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (87, N'Добрый Кола', 4, 199, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Добрый Кола.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (88, N'Лимонад "Ежевика"', 4, 159, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Лимонад Ежевика.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (89, N'Лимонад Оригинальный', 4, 199, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Лимонад Оригинальный.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (90, N'Морс Вишневый', 4, 159, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Морс Вишневый.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (91, N'Морс Клюквенный', 4, 199, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Морс Клюквенный.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (92, N'Сок Яблочный', 4, 99, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Сок Яблочный.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (93, N'Сок Апельсиновый', 4, 99, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Сок Апельсиновый.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (94, N'Сок Мультифрукт', 4, 99, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Сок Мультифрукт.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (95, N'Сок Вишневый', 4, 119, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Сок Вишневый.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (96, N'Добрый', 4, 99, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Добрый.jpg')
INSERT [dbo].[Dishes] ([ID_Dishes], [Name], [ID_Group], [Price], [Images]) VALUES (97, N'Добрый Апельсин', 4, 99, N'C:\Users\sereb\OneDrive\Рабочий стол\Фото для курсача\Добрый Апельсин.jpg')
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
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [Login], [Password], [Role]) VALUES (1, N'admin', N'admin', 1)
INSERT [dbo].[Users] ([id], [Login], [Password], [Role]) VALUES (2, N'12', N'12', 0)
INSERT [dbo].[Users] ([id], [Login], [Password], [Role]) VALUES (3, N'vlad', N'vlas', NULL)
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
