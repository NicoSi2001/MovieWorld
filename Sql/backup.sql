USE [MediaWorld]
GO
/****** Object:  Table [dbo].[Cast]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cast](
	[id_cast] [int] IDENTITY(1,1) NOT NULL,
	[id_person] [int] NOT NULL,
	[ISAN] [varchar](16) NOT NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Cast] PRIMARY KEY CLUSTERED 
(
	[id_cast] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disponibility]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disponibility](
	[serial_number] [nvarchar](16) NOT NULL,
	[ISAN] [varchar](16) NOT NULL,
 CONSTRAINT [Disponibility_PK] PRIMARY KEY CLUSTERED 
(
	[serial_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Film]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film](
	[ISAN] [varchar](16) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[genre] [int] NULL,
	[format] [varchar](30) NOT NULL,
	[Year] [datetime] NULL,
	[Director] [varchar](100) NULL,
	[Plot] [varchar](1000) NULL,
	[Price] [float] NULL,
	[Currency] [varchar](4) NULL,
 CONSTRAINT [film_pk] PRIMARY KEY CLUSTERED 
(
	[ISAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
 CONSTRAINT [GENRE_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lenguage]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lenguage](
	[lenguage_code] [nvarchar](3) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lenguage] PRIMARY KEY CLUSTERED 
(
	[lenguage_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id_news] [int] IDENTITY(1,1) NOT NULL,
	[ISAN] [varchar](16) NOT NULL,
	[Content] [varchar](max) NULL,
	[Release_Date] [datetime] NULL,
	[id_user] [varchar](50) NOT NULL,
	[Title] [varchar](100) NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id_news] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id_detail] [int] IDENTITY(1,1) NOT NULL,
	[id_head] [int] NOT NULL,
	[serial_number_disp] [nvarchar](16) NOT NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[id_detail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_Head]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_Head](
	[id_order] [int] IDENTITY(1,1) NOT NULL,
	[id_reseller] [int] NOT NULL,
	[id_user] [varchar](50) NOT NULL,
	[Date] [datetime] NULL,
	[State] [varchar](50) NULL,
 CONSTRAINT [PK_Orders_Head] PRIMARY KEY CLUSTERED 
(
	[id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resellers]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resellers](
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[id_resell] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Resellers] PRIMARY KEY CLUSTERED 
(
	[id_resell] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Traduction]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Traduction](
	[id_traduction] [int] IDENTITY(1,1) NOT NULL,
	[id_lenguage] [nvarchar](3) NOT NULL,
	[text] [nvarchar](max) NULL,
 CONSTRAINT [PK_Traduction] PRIMARY KEY CLUSTERED 
(
	[id_traduction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[login_co] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[surname] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[Admin_fl] [char](1) NOT NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[login_co] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workers]    Script Date: 11/03/2025 14:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workers](
	[id_person] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Birth_date] [datetime] NULL,
	[Nationality] [nvarchar](50) NULL,
 CONSTRAINT [PK_Workers] PRIMARY KEY CLUSTERED 
(
	[id_person] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_Release_Date]  DEFAULT (sysdatetimeoffset()) FOR [Release_Date]
GO
ALTER TABLE [dbo].[Orders_Head] ADD  CONSTRAINT [DF_Orders_Head_Date]  DEFAULT (sysdatetimeoffset()) FOR [Date]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_USER_Admin_fl]  DEFAULT ('F') FOR [Admin_fl]
GO
ALTER TABLE [dbo].[Workers] ADD  CONSTRAINT [DF_Workers_Birth_date]  DEFAULT (sysdatetimeoffset()) FOR [Birth_date]
GO
ALTER TABLE [dbo].[Cast]  WITH CHECK ADD  CONSTRAINT [FK_Cast_FILM] FOREIGN KEY([ISAN])
REFERENCES [dbo].[Film] ([ISAN])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Cast] CHECK CONSTRAINT [FK_Cast_FILM]
GO
ALTER TABLE [dbo].[Cast]  WITH CHECK ADD  CONSTRAINT [FK_Cast_Workers] FOREIGN KEY([id_person])
REFERENCES [dbo].[Workers] ([id_person])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Cast] CHECK CONSTRAINT [FK_Cast_Workers]
GO
ALTER TABLE [dbo].[Disponibility]  WITH CHECK ADD  CONSTRAINT [Disponibility_film_FK] FOREIGN KEY([ISAN])
REFERENCES [dbo].[Film] ([ISAN])
GO
ALTER TABLE [dbo].[Disponibility] CHECK CONSTRAINT [Disponibility_film_FK]
GO
ALTER TABLE [dbo].[Film]  WITH CHECK ADD  CONSTRAINT [FILM_GENRE_FK] FOREIGN KEY([genre])
REFERENCES [dbo].[Genre] ([id])
GO
ALTER TABLE [dbo].[Film] CHECK CONSTRAINT [FILM_GENRE_FK]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_FILM] FOREIGN KEY([ISAN])
REFERENCES [dbo].[Film] ([ISAN])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_FILM]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[User] ([login_co])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_USER]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Disponibility] FOREIGN KEY([serial_number_disp])
REFERENCES [dbo].[Disponibility] ([serial_number])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Disponibility]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Orders_Head] FOREIGN KEY([id_head])
REFERENCES [dbo].[Orders_Head] ([id_order])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Orders_Head]
GO
ALTER TABLE [dbo].[Orders_Head]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Head_Reseller] FOREIGN KEY([id_reseller])
REFERENCES [dbo].[Resellers] ([id_resell])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Orders_Head] CHECK CONSTRAINT [FK_Orders_Head_Reseller]
GO
ALTER TABLE [dbo].[Orders_Head]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Head_USER] FOREIGN KEY([id_user])
REFERENCES [dbo].[User] ([login_co])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Orders_Head] CHECK CONSTRAINT [FK_Orders_Head_USER]
GO
ALTER TABLE [dbo].[Traduction]  WITH CHECK ADD  CONSTRAINT [FK_Traduction_Lenguage] FOREIGN KEY([id_lenguage])
REFERENCES [dbo].[Lenguage] ([lenguage_code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Traduction] CHECK CONSTRAINT [FK_Traduction_Lenguage]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_USER_USER] FOREIGN KEY([login_co])
REFERENCES [dbo].[User] ([login_co])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_USER_USER]
GO
ALTER TABLE [dbo].[Workers]  WITH CHECK ADD  CONSTRAINT [FK_Workers_Workers] FOREIGN KEY([id_person])
REFERENCES [dbo].[Workers] ([id_person])
GO
ALTER TABLE [dbo].[Workers] CHECK CONSTRAINT [FK_Workers_Workers]
GO
