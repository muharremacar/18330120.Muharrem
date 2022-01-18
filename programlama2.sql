USE [Programlama2]
GO

/****** Object:  Table [dbo].[OgrenciBilgileri]    Script Date: 1/19/2022 12:31:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OgrenciBilgileri](
	[OgrenciNo] [int] NOT NULL,
	[OgrenciAdiSoyadi] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[Yas] [float] NULL,
	[İletisim] [nvarchar](50) NULL,
 CONSTRAINT [PK_OgrenciBilgileri] PRIMARY KEY CLUSTERED 
(
	[OgrenciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

