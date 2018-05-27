--
-- Скрипт сгенерирован Devart dbForge Studio for SQL Server, Версия 5.5.279.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/sql/studio
-- Дата скрипта: 22.05.2018 23:21:39
-- Версия сервера: 10.50.4000
--



USE LibraryDB
GO

IF DB_NAME() <> N'LibraryDB' SET NOEXEC ON
GO

--
-- Создать таблицу [dbo].[Worker]
--
PRINT (N'Создать таблицу [dbo].[Worker]')
GO
CREATE TABLE dbo.Worker (
  id int IDENTITY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  IsDelete bit NULL DEFAULT (0),
  DateCreate datetime NULL DEFAULT (getdate()),
  CONSTRAINT PK_Worker_id PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[Users]
--
PRINT (N'Создать таблицу [dbo].[Users]')
GO
CREATE TABLE dbo.Users (
  id int IDENTITY,
  type varchar(10) NOT NULL DEFAULT ('librarian'),
  user_id int NOT NULL,
  login varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  passMD5 binary(16) NULL,
  CONSTRAINT PK_Users_id PRIMARY KEY CLUSTERED (id),
  CONSTRAINT KEY_Users_user_id UNIQUE (user_id, type, login)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[ReservationStatus]
--
PRINT (N'Создать таблицу [dbo].[ReservationStatus]')
GO
CREATE TABLE dbo.ReservationStatus (
  id int IDENTITY,
  name varchar(50) NOT NULL,
  CONSTRAINT PK_ReservationStatus_id PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[Reader]
--
PRINT (N'Создать таблицу [dbo].[Reader]')
GO
CREATE TABLE dbo.Reader (
  id int IDENTITY,
  FirstName varchar(20) NULL,
  LastName varchar(20) NULL,
  MiddleName varchar(20) NULL,
  Phone varchar(16) NULL,
  Adress varchar(30) NULL,
  CONSTRAINT PK_Reader_id PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[Publishing]
--
PRINT (N'Создать таблицу [dbo].[Publishing]')
GO
CREATE TABLE dbo.Publishing (
  id int IDENTITY,
  name varchar(20) NULL,
  city varchar(10) NULL,
  CONSTRAINT PK_Publishing PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[Orders]
--
PRINT (N'Создать таблицу [dbo].[Orders]')
GO
CREATE TABLE dbo.Orders (
  id int IDENTITY,
  publishing_id int NOT NULL,
  book_id varchar(13) NOT NULL,
  count int NULL,
  processed bit NULL DEFAULT (0),
  CONSTRAINT PK_Order_id PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[Exemplar]
--
PRINT (N'Создать таблицу [dbo].[Exemplar]')
GO
CREATE TABLE dbo.Exemplar (
  id int IDENTITY,
  placement varchar(10) NOT NULL,
  ISBN varchar(13) NULL,
  DateCreate datetime NULL DEFAULT (getdate()),
  IsDelete bit NULL DEFAULT (0),
  CONSTRAINT PK_Exemplar PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[BookCategory]
--
PRINT (N'Создать таблицу [dbo].[BookCategory]')
GO
CREATE TABLE dbo.BookCategory (
  id int IDENTITY,
  name varchar(70) NULL,
  CONSTRAINT PK_BookCategory_id PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[Book]
--
PRINT (N'Создать таблицу [dbo].[Book]')
GO
CREATE TABLE dbo.Book (
  ISBN varchar(13) NOT NULL,
  Title varchar(40) NOT NULL,
  publishing_id int NOT NULL,
  year date NULL,
  category int NOT NULL,
  CONSTRAINT PK_Book PRIMARY KEY CLUSTERED (ISBN)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[AuthorBook]
--
PRINT (N'Создать таблицу [dbo].[AuthorBook]')
GO
CREATE TABLE dbo.AuthorBook (
  id int IDENTITY,
  author_id int NOT NULL,
  ISBN varchar(13) NOT NULL,
  CONSTRAINT PK_AuthorBook PRIMARY KEY CLUSTERED (id),
  CONSTRAINT IX_AuthorBook UNIQUE (author_id, ISBN)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[Author]
--
PRINT (N'Создать таблицу [dbo].[Author]')
GO
CREATE TABLE dbo.Author (
  id int IDENTITY,
  FirstName varchar(20) NULL,
  LastName varchar(20) NULL,
  MiddleName varchar(20) NULL,
  CONSTRAINT PK_Author PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[Reservation]
--
PRINT (N'Создать таблицу [dbo].[Reservation]')
GO
CREATE TABLE dbo.Reservation (
  id int IDENTITY,
  date datetime NULL,
  exemplar_id int NULL,
  reader_id int NULL,
  status int NULL,
  CONSTRAINT PK_Reservation_id PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу [dbo].[BookIssuing]
--
PRINT (N'Создать таблицу [dbo].[BookIssuing]')
GO
CREATE TABLE dbo.BookIssuing (
  id int IDENTITY,
  Exemplar_id int NOT NULL,
  Reader_id int NOT NULL,
  DateIssue date NULL,
  DateReturnExpected date NULL,
  DateReturnReal date NULL,
  Worker_id int NOT NULL,
  DateCreate datetime NULL DEFAULT (getdate()),
  CONSTRAINT PK_BookIssuing PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

--
-- Создать представление [dbo].[exemplar_history]
--
GO
PRINT (N'Создать представление [dbo].[exemplar_history]')
GO
CREATE VIEW dbo.exemplar_history 
AS SELECT
  bi.Exemplar_id
 ,r.FirstName + ' ' + SUBSTRING(r.LastName, 1, 1) + '.' + SUBSTRING(r.MiddleName, 1, 1) + '.' AS 'Reader'
 ,bi.DateIssue
 ,bi.DateReturnExpected
 ,bi.DateReturnReal
FROM LibraryDB.dbo.BookIssuing bi

LEFT JOIN Reader r
  ON bi.Reader_id = r.id
--  WHERE bi.Exemplar_id = @id
--ORDER BY bi.DateIssue
GO

--
-- Создать представление [dbo].[AvailableBooks]
--
GO
PRINT (N'Создать представление [dbo].[AvailableBooks]')
GO

CREATE VIEW dbo.AvailableBooks
AS
SELECT
  ex.id
 ,b.ISBN
 ,b.Title
 ,b.publishing_id
 ,p.name AS 'publishing'
 ,b.year
 ,b.category AS 'category_id'
 ,bc.name AS 'category'
 ,ex.placement
FROM LibraryDB.dbo.Exemplar ex
LEFT JOIN Book b
  ON ex.ISBN = b.ISBN
LEFT JOIN publishing p
  ON b.publishing_id = p.id
LEFT JOIN BookCategory bc
  ON b.category = bc.id
WHERE ex.id NOT IN (SELECT
    bi.Exemplar_id
  FROM BookIssuing bi
  WHERE bi.DateReturnReal IS NULL)
AND ex.id NOT IN (SELECT
    r.Exemplar_id
  FROM Reservation r
  LEFT JOIN ReservationStatus rs
    ON r.status = rs.id
  WHERE rs.name IN ('Забронирован', 'Ожидание выдачи')) AND ex.IsDelete <> 1
GO

--
-- Создать представление [dbo].[catalog]
--
GO
PRINT (N'Создать представление [dbo].[catalog]')
GO
CREATE VIEW dbo.catalog 
AS SELECT
  b.ISBN
 ,bc.name AS 'category'
 ,b.Title
 ,FirstName + ' ' + SUBSTRING(a.LastName, 1, 1) + '.' + SUBSTRING(a.MiddleName, 1, 1) + '.' AS 'Author'
 ,p.name
 ,p.city
 ,b.year
 ,COUNT(*) AS 'CountAll'
 ,avb.cnt AS 'AvailableCount'
FROM LibraryDB.dbo.Exemplar e
LEFT JOIN Book b
  ON e.ISBN = b.ISBN
LEFT JOIN BookCategory bc
  ON b.category = bc.id
LEFT JOIN Publishing p
  ON b.publishing_id = p.id
LEFT JOIN AuthorBook ab
  ON b.ISBN = ab.ISBN
LEFT JOIN Author a
  ON ab.author_id = a.id
JOIN (SELECT
    ISBN
   ,COUNT(*) AS 'cnt'
  FROM LibraryDB.dbo.AvailableBooks
  GROUP BY ISBN) avb
  ON b.ISBN = avb.ISBN

GROUP BY b.ISBN
        ,bc.name
        ,b.Title
        ,FirstName + ' ' + SUBSTRING(a.LastName, 1, 1) + '.' + SUBSTRING(a.MiddleName, 1, 1) + '.'
        ,p.name
        ,p.city
        ,b.year
        ,avb.cnt
GO

--
-- Создать функцию [dbo].[fn_diagramobjects]
--
GO
PRINT (N'Создать функцию [dbo].[fn_diagramobjects]')
GO

	CREATE FUNCTION dbo.fn_diagramobjects() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
	
GO
-- 
-- Вывод данных для таблицы Author
--
SET IDENTITY_INSERT dbo.Author ON
GO
INSERT dbo.Author(id, FirstName, LastName, MiddleName) VALUES (1, N'Мухин', N'Юрий                ', N'Игнатьевич          ')
INSERT dbo.Author(id, FirstName, LastName, MiddleName) VALUES (5, N'Прозоров', N'Лев                 ', N'Рудольфович         ')
INSERT dbo.Author(id, FirstName, LastName, MiddleName) VALUES (6, N'Ратушняк', N'Валерий             ', N'Николаевич          ')
INSERT dbo.Author(id, FirstName, LastName, MiddleName) VALUES (7, N'Климов', N'Александр           ', N'Петрович            ')
INSERT dbo.Author(id, FirstName, LastName, MiddleName) VALUES (8, N'Сиерра', N'Кэти ', N'Бэйл')
GO
SET IDENTITY_INSERT dbo.Author OFF
GO
-- 
-- Вывод данных для таблицы AuthorBook
--
SET IDENTITY_INSERT dbo.AuthorBook ON
GO
INSERT dbo.AuthorBook(id, author_id, ISBN) VALUES (2, 1, N'9785995505792')
INSERT dbo.AuthorBook(id, author_id, ISBN) VALUES (4, 6, N'9785699648986')
INSERT dbo.AuthorBook(id, author_id, ISBN) VALUES (6, 7, N'9785941576307')
INSERT dbo.AuthorBook(id, author_id, ISBN) VALUES (5, 7, N'9785977501743')
INSERT dbo.AuthorBook(id, author_id, ISBN) VALUES (7, 7, N'9785977503617')
INSERT dbo.AuthorBook(id, author_id, ISBN) VALUES (11, 8, N'9780596007124')
INSERT dbo.AuthorBook(id, author_id, ISBN) VALUES (9, 8, N'9785496032100')
INSERT dbo.AuthorBook(id, author_id, ISBN) VALUES (8, 8, N'9785699545742')
GO
SET IDENTITY_INSERT dbo.AuthorBook OFF
GO
-- 
-- Вывод данных для таблицы Book
--
INSERT dbo.Book VALUES (N'9780596007124', N'Head First Design Patterns', 5, '2004-05-22', 4)
INSERT dbo.Book VALUES (N'9785496032100', N'Паттерны проектирования', 4, '2018-05-22', 4)
INSERT dbo.Book VALUES (N'9785699545742', N'Изучаем Java', 2, '2017-05-22', 4)
INSERT dbo.Book VALUES (N'9785699648986', N'Волхвы войны. Правда о русских богатырях', 2, '2013-04-13', 1)
INSERT dbo.Book VALUES (N'9785941576307', N'Windows                                 ', 4, '2006-04-16', 4)
INSERT dbo.Book VALUES (N'9785977501743', N'С#. Советы программистам                ', 4, '2008-04-16', 4)
INSERT dbo.Book VALUES (N'9785977503617', N'JavaScript на примерах                  ', 4, '2011-04-16', 4)
INSERT dbo.Book VALUES (N'9785995505792', N'Уроки Великой Отечественной             ', 1, '2013-04-16', 1)
GO
-- 
-- Вывод данных для таблицы BookCategory
--
SET IDENTITY_INSERT dbo.BookCategory ON
GO
INSERT dbo.BookCategory(id, name) VALUES (1, N'История. Исторические науки')
INSERT dbo.BookCategory(id, name) VALUES (4, N'Компьютерные технологии. Программное обеспечение. Программирование')
GO
SET IDENTITY_INSERT dbo.BookCategory OFF
GO
-- 
-- Вывод данных для таблицы BookIssuing
--
SET IDENTITY_INSERT dbo.BookIssuing ON
GO
INSERT dbo.BookIssuing(id, Exemplar_id, Reader_id, DateIssue, DateReturnExpected, DateReturnReal, Worker_id, DateCreate) VALUES (2, 1, 1, '2018-04-16', '2018-04-23', '2018-04-23', 1, NULL)
INSERT dbo.BookIssuing(id, Exemplar_id, Reader_id, DateIssue, DateReturnExpected, DateReturnReal, Worker_id, DateCreate) VALUES (3, 3, 2, '2018-04-16', '2018-04-23', '2018-04-23', 1, NULL)
INSERT dbo.BookIssuing(id, Exemplar_id, Reader_id, DateIssue, DateReturnExpected, DateReturnReal, Worker_id, DateCreate) VALUES (6, 1, 3, '2017-04-16', '2017-04-23', '2017-04-23', 1, NULL)
INSERT dbo.BookIssuing(id, Exemplar_id, Reader_id, DateIssue, DateReturnExpected, DateReturnReal, Worker_id, DateCreate) VALUES (10, 1, 4, '2016-04-13', '2016-04-20', '2016-04-25', 1, NULL)
INSERT dbo.BookIssuing(id, Exemplar_id, Reader_id, DateIssue, DateReturnExpected, DateReturnReal, Worker_id, DateCreate) VALUES (12, 5, 4, '2018-04-16', '2018-04-20', NULL, 1, NULL)
INSERT dbo.BookIssuing(id, Exemplar_id, Reader_id, DateIssue, DateReturnExpected, DateReturnReal, Worker_id, DateCreate) VALUES (15, 14, 4, '2018-04-15', '2018-04-15', '2018-04-20', 1, NULL)
INSERT dbo.BookIssuing(id, Exemplar_id, Reader_id, DateIssue, DateReturnExpected, DateReturnReal, Worker_id, DateCreate) VALUES (16, 25, 2, '2018-04-15', '2018-04-15', NULL, 7, NULL)
INSERT dbo.BookIssuing(id, Exemplar_id, Reader_id, DateIssue, DateReturnExpected, DateReturnReal, Worker_id, DateCreate) VALUES (17, 22, 1, '2018-04-15', '2018-04-21', NULL, 7, NULL)
INSERT dbo.BookIssuing(id, Exemplar_id, Reader_id, DateIssue, DateReturnExpected, DateReturnReal, Worker_id, DateCreate) VALUES (18, 19, 2, '2018-04-15', '2018-04-21', NULL, 7, NULL)
INSERT dbo.BookIssuing(id, Exemplar_id, Reader_id, DateIssue, DateReturnExpected, DateReturnReal, Worker_id, DateCreate) VALUES (19, 21, 1, '2018-04-15', '2018-04-21', NULL, 7, NULL)
GO
SET IDENTITY_INSERT dbo.BookIssuing OFF
GO
-- 
-- Вывод данных для таблицы Exemplar
--
SET IDENTITY_INSERT dbo.Exemplar ON
GO
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (1, N'1 полка   ', N'9785699648986', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (2, N'1 полка   ', N'9785699648986', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (3, N'2 полка   ', N'9785995505792', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (4, N'1 полка   ', N'9785699648986', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (5, N'1 полка   ', N'9785995505792', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (6, N'полка 3   ', N'9785941576307', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (7, N'полка 3   ', N'9785977501743', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (8, N'полка 3   ', N'9785977503617', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (9, N'полка 3   ', N'9785941576307', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (10, N'полка 3   ', N'9785977501743', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (11, N'полка 3   ', N'9785977503617', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (12, N'полка 3   ', N'9785941576307', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (13, N'полка 3   ', N'9785977501743', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (14, N'полка 3   ', N'9785977503617', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (16, N'полка 1', N'9785941576307', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (17, N'полка 1', N'9785941576307', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (18, N'полка 1', N'9785941576307', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (19, N'полка 1', N'9785699545742', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (20, N'полка 1', N'9785699545742', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (21, N'полка 1', N'9785699545742', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (22, N'полка 1', N'9785496032100', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (23, N'полка 1', N'9785496032100', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (24, N'полка 1', N'9785496032100', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (25, N'полка 1', N'9780596007124', 2018-05-22, CONVERT(bit, 'False'))
INSERT dbo.Exemplar(id, placement, ISBN, DateCreate, IsDelete) VALUES (26, N'полка 1', N'9780596007124', 2018-05-22, CONVERT(bit, 'False'))
GO
SET IDENTITY_INSERT dbo.Exemplar OFF
GO
-- 
-- Вывод данных для таблицы Orders
--
SET IDENTITY_INSERT dbo.Orders ON
GO
INSERT dbo.Orders(id, publishing_id, book_id, count, processed) VALUES (1, 2, N'9785941576307', 3, CONVERT(bit, 'True'))
INSERT dbo.Orders(id, publishing_id, book_id, count, processed) VALUES (2, 4, N'9785941576307', 2, CONVERT(bit, 'True'))
INSERT dbo.Orders(id, publishing_id, book_id, count, processed) VALUES (3, 4, N'9785977501743', 1, CONVERT(bit, 'True'))
INSERT dbo.Orders(id, publishing_id, book_id, count, processed) VALUES (4, 4, N'9785977503617', 1, CONVERT(bit, 'True'))
INSERT dbo.Orders(id, publishing_id, book_id, count, processed) VALUES (5, 5, N'9780596007124', 2, CONVERT(bit, 'True'))
INSERT dbo.Orders(id, publishing_id, book_id, count, processed) VALUES (6, 4, N'9785496032100', 3, CONVERT(bit, 'True'))
INSERT dbo.Orders(id, publishing_id, book_id, count, processed) VALUES (7, 2, N'9785699545742', 3, CONVERT(bit, 'True'))
GO
SET IDENTITY_INSERT dbo.Orders OFF
GO
-- 
-- Вывод данных для таблицы Publishing
--
SET IDENTITY_INSERT dbo.Publishing ON
GO
INSERT dbo.Publishing(id, name, city) VALUES (1, N'Яуза-пресс          ', N'Москва    ')
INSERT dbo.Publishing(id, name, city) VALUES (2, N'Эксмо               ', N'Москва    ')
INSERT dbo.Publishing(id, name, city) VALUES (4, N'БХВ-Петербург       ', N'СПб.      ')
INSERT dbo.Publishing(id, name, city) VALUES (5, N'O''Reilly Media', N'London')
GO
SET IDENTITY_INSERT dbo.Publishing OFF
GO
-- 
-- Вывод данных для таблицы Reader
--
SET IDENTITY_INSERT dbo.Reader ON
GO
INSERT dbo.Reader(id, FirstName, LastName, MiddleName, Phone, Adress) VALUES (1, N'Иванов', N'Алексей', N'Перрович', NULL, NULL)
INSERT dbo.Reader(id, FirstName, LastName, MiddleName, Phone, Adress) VALUES (2, N'Перков', N'Василий', N'Сергеевич', NULL, NULL)
INSERT dbo.Reader(id, FirstName, LastName, MiddleName, Phone, Adress) VALUES (3, N'Мотков ', N'Игорь', N'Анатольевич', NULL, NULL)
INSERT dbo.Reader(id, FirstName, LastName, MiddleName, Phone, Adress) VALUES (4, N'Сиркин', N'Владимир', N'Семенович', NULL, NULL)
INSERT dbo.Reader(id, FirstName, LastName, MiddleName, Phone, Adress) VALUES (5, N'Владимир', N'Иванов', N'Сидорович', NULL, NULL)
INSERT dbo.Reader(id, FirstName, LastName, MiddleName, Phone, Adress) VALUES (6, N'Пиригов', N'Артём', N'Валерьевич', NULL, NULL)
INSERT dbo.Reader(id, FirstName, LastName, MiddleName, Phone, Adress) VALUES (7, N'Сухих', N'Полина', N'Андреевна', NULL, NULL)
INSERT dbo.Reader(id, FirstName, LastName, MiddleName, Phone, Adress) VALUES (8, N'Фетюкова', N'Елена', N'Игнатьевна', NULL, NULL)
GO
SET IDENTITY_INSERT dbo.Reader OFF
GO
-- 
-- Вывод данных для таблицы Reservation
--
SET IDENTITY_INSERT dbo.Reservation ON
GO
INSERT dbo.Reservation(id, date, exemplar_id, reader_id, status) VALUES (1, 2018-05-21, 3, 1, 3)
INSERT dbo.Reservation(id, date, exemplar_id, reader_id, status) VALUES (2, 2018-05-22, 25, 1, 1)
INSERT dbo.Reservation(id, date, exemplar_id, reader_id, status) VALUES (3, 2018-05-22, 22, 7, 1)
GO
SET IDENTITY_INSERT dbo.Reservation OFF
GO
-- 
-- Вывод данных для таблицы ReservationStatus
--
SET IDENTITY_INSERT dbo.ReservationStatus ON
GO
INSERT dbo.ReservationStatus(id, name) VALUES (1, N'Забронирован')
INSERT dbo.ReservationStatus(id, name) VALUES (2, N'Ожидание выдачи')
INSERT dbo.ReservationStatus(id, name) VALUES (3, N'Отменено')
INSERT dbo.ReservationStatus(id, name) VALUES (4, N'Выдано')
GO
SET IDENTITY_INSERT dbo.ReservationStatus OFF
GO
-- 
-- Вывод данных для таблицы Users
--
SET IDENTITY_INSERT dbo.Users ON
GO
INSERT dbo.Users(id, type, user_id, login, password, passMD5) VALUES (3, N'librarian', 7, N'librarian', N'pass', 0x1A1DC91C907325C69271DDF0C944BC72)
INSERT dbo.Users(id, type, user_id, login, password, passMD5) VALUES (4, N'admin', 1, N'admin', N'admin', 0x21232F297A57A5A743894A0E4A801FC3)
INSERT dbo.Users(id, type, user_id, login, password, passMD5) VALUES (5, N'librarian', 8, N'dmitry.v', N'12345678', 0x25D55AD283AA400AF464C76D713C07AD)
GO
SET IDENTITY_INSERT dbo.Users OFF
GO
-- 
-- Вывод данных для таблицы Worker
--
SET IDENTITY_INSERT dbo.Worker ON
GO
INSERT dbo.Worker(id, FirstName, LastName, IsDelete, DateCreate) VALUES (1, N'Валишна', N'Наталья', CONVERT(bit, 'False'), 2017-01-11)
INSERT dbo.Worker(id, FirstName, LastName, IsDelete, DateCreate) VALUES (7, N'Иванов', 	N'Иванв', 	CONVERT(bit, 'False'), 2018-05-21)
INSERT dbo.Worker(id, FirstName, LastName, IsDelete, DateCreate) VALUES (8, N'Дмитрий', N'Волков', 	CONVERT(bit, 'False'), 2018-05-22)
GO
SET IDENTITY_INSERT dbo.Worker OFF
GO

USE LibraryDB
GO

IF DB_NAME() <> N'LibraryDB' SET NOEXEC ON
GO

--
-- Создать внешний ключ [FK_Book_category] для объекта типа таблица [dbo].[Book]
--
PRINT (N'Создать внешний ключ [FK_Book_category] для объекта типа таблица [dbo].[Book]')
GO
ALTER TABLE dbo.Book
  ADD CONSTRAINT FK_Book_category FOREIGN KEY (category) REFERENCES dbo.BookCategory (id)
GO

--
-- Создать внешний ключ [FK_Book_Publishing] для объекта типа таблица [dbo].[Book]
--
PRINT (N'Создать внешний ключ [FK_Book_Publishing] для объекта типа таблица [dbo].[Book]')
GO
ALTER TABLE dbo.Book
  ADD CONSTRAINT FK_Book_Publishing FOREIGN KEY (publishing_id) REFERENCES dbo.Publishing (id)
GO

--
-- Создать внешний ключ [FK_Order_book_id] для объекта типа таблица [dbo].[Orders]
--
PRINT (N'Создать внешний ключ [FK_Order_book_id] для объекта типа таблица [dbo].[Orders]')
GO
ALTER TABLE dbo.Orders
  ADD CONSTRAINT FK_Order_book_id FOREIGN KEY (book_id) REFERENCES dbo.Book (ISBN)
GO

--
-- Создать внешний ключ [FK_Order_publishing_id] для объекта типа таблица [dbo].[Orders]
--
PRINT (N'Создать внешний ключ [FK_Order_publishing_id] для объекта типа таблица [dbo].[Orders]')
GO
ALTER TABLE dbo.Orders
  ADD CONSTRAINT FK_Order_publishing_id FOREIGN KEY (publishing_id) REFERENCES dbo.Publishing (id)
GO

--
-- Создать внешний ключ [FK_Exemplar_ISBN] для объекта типа таблица [dbo].[Exemplar]
--
PRINT (N'Создать внешний ключ [FK_Exemplar_ISBN] для объекта типа таблица [dbo].[Exemplar]')
GO
ALTER TABLE dbo.Exemplar
  ADD CONSTRAINT FK_Exemplar_ISBN FOREIGN KEY (ISBN) REFERENCES dbo.Book (ISBN)
GO

--
-- Создать внешний ключ [FK_Reservation_exemplar_id] для объекта типа таблица [dbo].[Reservation]
--
PRINT (N'Создать внешний ключ [FK_Reservation_exemplar_id] для объекта типа таблица [dbo].[Reservation]')
GO
ALTER TABLE dbo.Reservation
  ADD CONSTRAINT FK_Reservation_exemplar_id FOREIGN KEY (exemplar_id) REFERENCES dbo.Exemplar (id)
GO

--
-- Создать внешний ключ [FK_Reservation_reader_id] для объекта типа таблица [dbo].[Reservation]
--
PRINT (N'Создать внешний ключ [FK_Reservation_reader_id] для объекта типа таблица [dbo].[Reservation]')
GO
ALTER TABLE dbo.Reservation
  ADD CONSTRAINT FK_Reservation_reader_id FOREIGN KEY (reader_id) REFERENCES dbo.Reader (id)
GO

--
-- Создать внешний ключ [FK_Reservation_status] для объекта типа таблица [dbo].[Reservation]
--
PRINT (N'Создать внешний ключ [FK_Reservation_status] для объекта типа таблица [dbo].[Reservation]')
GO
ALTER TABLE dbo.Reservation
  ADD CONSTRAINT FK_Reservation_status FOREIGN KEY (status) REFERENCES dbo.ReservationStatus (id)
GO

--
-- Создать внешний ключ [FK_BookIssuing_Exemplar] для объекта типа таблица [dbo].[BookIssuing]
--
PRINT (N'Создать внешний ключ [FK_BookIssuing_Exemplar] для объекта типа таблица [dbo].[BookIssuing]')
GO
ALTER TABLE dbo.BookIssuing
  ADD CONSTRAINT FK_BookIssuing_Exemplar FOREIGN KEY (Exemplar_id) REFERENCES dbo.Exemplar (id)
GO

--
-- Создать внешний ключ [FK_BookIssuing_Reader] для объекта типа таблица [dbo].[BookIssuing]
--
PRINT (N'Создать внешний ключ [FK_BookIssuing_Reader] для объекта типа таблица [dbo].[BookIssuing]')
GO
ALTER TABLE dbo.BookIssuing
  ADD CONSTRAINT FK_BookIssuing_Reader FOREIGN KEY (Reader_id) REFERENCES dbo.Reader (id)
GO

--
-- Создать внешний ключ [FK_BookIssuing_Worker_id] для объекта типа таблица [dbo].[BookIssuing]
--
PRINT (N'Создать внешний ключ [FK_BookIssuing_Worker_id] для объекта типа таблица [dbo].[BookIssuing]')
GO
ALTER TABLE dbo.BookIssuing
  ADD CONSTRAINT FK_BookIssuing_Worker_id FOREIGN KEY (Worker_id) REFERENCES dbo.Worker (id)
GO

--
-- Создать внешний ключ [FK_AuthorBook_Author] для объекта типа таблица [dbo].[AuthorBook]
--
PRINT (N'Создать внешний ключ [FK_AuthorBook_Author] для объекта типа таблица [dbo].[AuthorBook]')
GO
ALTER TABLE dbo.AuthorBook
  ADD CONSTRAINT FK_AuthorBook_Author FOREIGN KEY (author_id) REFERENCES dbo.Author (id)
GO

--
-- Создать внешний ключ [FK_AuthorBook_ISBN] для объекта типа таблица [dbo].[AuthorBook]
--
PRINT (N'Создать внешний ключ [FK_AuthorBook_ISBN] для объекта типа таблица [dbo].[AuthorBook]')
GO
ALTER TABLE dbo.AuthorBook
  ADD CONSTRAINT FK_AuthorBook_ISBN FOREIGN KEY (ISBN) REFERENCES dbo.Book (ISBN)
GO
SET NOEXEC OFF
GO