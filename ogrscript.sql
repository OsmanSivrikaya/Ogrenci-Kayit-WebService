USE [Ogrenci]
GO
/****** Object:  Table [dbo].[Ogr]    Script Date: 1.04.2022 11:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogr](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[TC] [nvarchar](50) NULL,
	[Sehir] [nvarchar](50) NULL,
	[DT] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ogr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sehir]    Script Date: 1.04.2022 11:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sehir](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sehir] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sehir] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ogr] ON 

INSERT [dbo].[Ogr] ([ID], [Ad], [Soyad], [TC], [Sehir], [DT]) VALUES (1, N'osman', N'sivrikaya', N'33784772900', N'İstanbul', N'2001')
SET IDENTITY_INSERT [dbo].[Ogr] OFF
GO
SET IDENTITY_INSERT [dbo].[sehir] ON 

INSERT [dbo].[sehir] ([ID], [Sehir]) VALUES (1, N'İstanbul')
INSERT [dbo].[sehir] ([ID], [Sehir]) VALUES (2, N'Giresun')
SET IDENTITY_INSERT [dbo].[sehir] OFF
GO
