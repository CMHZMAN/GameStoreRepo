USE [GamesDB]
GO
/****** Object:  Table [dbo].[Basket]    Script Date: 10/12/2025 16:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basket](
	[PK_Basket] [int] NOT NULL,
	[FK_Kund] [int] NOT NULL,
	[Datum] [datetime] NULL,
 CONSTRAINT [PK_Basket] PRIMARY KEY CLUSTERED 
(
	[PK_Basket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BasketDetails]    Script Date: 10/12/2025 16:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasketDetails](
	[PK_BasketDt] [int] NOT NULL,
	[FK_Basket] [int] NOT NULL,
	[FK_GameId] [int] NOT NULL,
 CONSTRAINT [PK_BasketDetails] PRIMARY KEY CLUSTERED 
(
	[PK_BasketDt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameDev]    Script Date: 10/12/2025 16:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameDev](
	[PK_Dev] [int] NOT NULL,
	[Namn] [nchar](10) NULL,
	[Stad] [nchar](10) NULL,
	[Telefon] [nchar](10) NULL,
	[Email] [nchar](10) NULL,
 CONSTRAINT [PK_GameDev] PRIMARY KEY CLUSTERED 
(
	[PK_Dev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 10/12/2025 16:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[PK_GameId] [int] NOT NULL,
	[FK_Dev] [int] NOT NULL,
	[FK_Utg] [int] NOT NULL,
	[Namn] [varchar](50) NOT NULL,
	[Genre] [varchar](50) NOT NULL,
	[Pris] [decimal](8, 2) NULL,
	[Lagersaldo] [int] NULL,
	[Beskriving] [varchar](500) NULL,
	[ProduktTyp] [varchar](50) NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[PK_GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kund]    Script Date: 10/12/2025 16:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kund](
	[PK_Kund] [int] NOT NULL,
	[Namn] [nchar](10) NULL,
	[Adress] [nchar](10) NULL,
	[Postnummer] [nchar](10) NULL,
	[Ort] [nchar](10) NULL,
	[Mobil] [nchar](10) NULL,
 CONSTRAINT [PK_Kund] PRIMARY KEY CLUSTERED 
(
	[PK_Kund] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utgivare]    Script Date: 10/12/2025 16:27:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utgivare](
	[PK_Utg] [int] NOT NULL,
	[Namn] [varchar](100) NULL,
	[Stad] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_Utgivare] PRIMARY KEY CLUSTERED 
(
	[PK_Utg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Basket]  WITH CHECK ADD  CONSTRAINT [FK_Basket_Kund] FOREIGN KEY([FK_Kund])
REFERENCES [dbo].[Kund] ([PK_Kund])
GO
ALTER TABLE [dbo].[Basket] CHECK CONSTRAINT [FK_Basket_Kund]
GO
ALTER TABLE [dbo].[BasketDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasketDetails_Basket] FOREIGN KEY([FK_Basket])
REFERENCES [dbo].[Basket] ([PK_Basket])
GO
ALTER TABLE [dbo].[BasketDetails] CHECK CONSTRAINT [FK_BasketDetails_Basket]
GO
ALTER TABLE [dbo].[BasketDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasketDetails_Games] FOREIGN KEY([FK_GameId])
REFERENCES [dbo].[Games] ([PK_GameId])
GO
ALTER TABLE [dbo].[BasketDetails] CHECK CONSTRAINT [FK_BasketDetails_Games]
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_GameDev] FOREIGN KEY([FK_Dev])
REFERENCES [dbo].[GameDev] ([PK_Dev])
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_GameDev]
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Utgivare] FOREIGN KEY([FK_Utg])
REFERENCES [dbo].[Utgivare] ([PK_Utg])
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_Utgivare]
GO
USE [master]
GO
ALTER DATABASE [GamesDB] SET  READ_WRITE 
GO