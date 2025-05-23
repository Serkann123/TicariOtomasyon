USE [TicariOtomasyon]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[KULLANICIADİ] [varchar](10) NULL,
	[SİFRE] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bankalar]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bankalar](
	[İD] [smallint] IDENTITY(1,1) NOT NULL,
	[BANKAADI] [varchar](30) NULL,
	[İL] [varchar](20) NULL,
	[İLÇE] [varchar](20) NULL,
	[SUBE] [varchar](30) NULL,
	[İBAN] [varchar](30) NULL,
	[HESAPNO] [varchar](30) NULL,
	[YETKİLİ] [varchar](30) NULL,
	[TELEFON] [varchar](16) NULL,
	[TARİH] [varchar](10) NULL,
	[HESAPTURU] [varchar](20) NULL,
	[FİRMAİD] [smallint] NULL,
 CONSTRAINT [PK_bankalar] PRIMARY KEY CLUSTERED 
(
	[İD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[faturaBilgi]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[faturaBilgi](
	[FATURABİLGİİD] [int] IDENTITY(1,1) NOT NULL,
	[SERİ] [char](1) NULL,
	[SIRANO] [varchar](30) NULL,
	[TARİH] [varchar](10) NULL,
	[SAAT] [varchar](15) NULL,
	[VERGİDAİRESİ] [varchar](40) NULL,
	[ALICI] [varchar](30) NULL,
	[TESLİMEDEN] [varchar](30) NULL,
	[TESLİMALAN] [varchar](30) NULL,
 CONSTRAINT [PK_faturaBilgi] PRIMARY KEY CLUSTERED 
(
	[FATURABİLGİİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[faturaDetay]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[faturaDetay](
	[FATURAURUNİD] [int] IDENTITY(1,1) NOT NULL,
	[URUNAD] [varchar](40) NULL,
	[MİKTAR] [smallint] NULL,
	[FİYAT] [decimal](18, 2) NULL,
	[TUTAR] [decimal](18, 2) NULL,
	[FATURAİD] [int] NULL,
 CONSTRAINT [PK_faturaDetay] PRIMARY KEY CLUSTERED 
(
	[FATURAURUNİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[firmaHareketleri]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[firmaHareketleri](
	[HAREKETİD] [int] IDENTITY(1,1) NOT NULL,
	[URUNİD] [int] NULL,
	[ADET] [tinyint] NULL,
	[PERSONEL] [tinyint] NULL,
	[FİRMALAR] [int] NULL,
	[FİYAT] [decimal](18, 2) NULL,
	[TOPLAM] [decimal](18, 2) NULL,
	[FATURAİD] [int] NULL,
	[TARİH] [varchar](10) NULL,
	[NOTLAR] [varchar](250) NULL,
 CONSTRAINT [PK_hareketler] PRIMARY KEY CLUSTERED 
(
	[HAREKETİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[firmalar]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[firmalar](
	[İD] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](45) NULL,
	[YETKİLİSTATU] [varchar](45) NULL,
	[YETKİLİADSOYAD] [varchar](35) NULL,
	[YETKİLİTC] [char](17) NULL,
	[SEKTOR] [varchar](28) NULL,
	[TELEFON1] [varchar](20) NULL,
	[TELEFON2] [varchar](20) NULL,
	[TELEFON3] [varchar](20) NULL,
	[MAİL] [varchar](50) NULL,
	[FAX] [varchar](30) NULL,
	[İL] [varchar](15) NULL,
	[İLÇE] [varchar](22) NULL,
	[VERGİDAİRESİ] [varchar](30) NULL,
	[ADRESS] [varchar](100) NULL,
	[OZELKOD1] [varchar](100) NULL,
	[OZELKOD2] [varchar](100) NULL,
	[OZELKOD3] [varchar](100) NULL,
 CONSTRAINT [PK_firmalar] PRIMARY KEY CLUSTERED 
(
	[İD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[giderler]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[giderler](
	[İD] [int] IDENTITY(1,1) NOT NULL,
	[ELEKTRİK] [decimal](18, 2) NULL,
	[AY] [varchar](7) NULL,
	[YIL] [char](4) NULL,
	[SU] [decimal](18, 2) NULL,
	[DOGALGAZ] [decimal](18, 2) NULL,
	[İNTERNET] [decimal](18, 2) NULL,
	[MAAS] [decimal](18, 2) NULL,
	[EKSTRA] [decimal](18, 2) NULL,
	[NOTLAR] [varchar](100) NULL,
 CONSTRAINT [PK_giderler] PRIMARY KEY CLUSTERED 
(
	[İD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ilceler]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ilceler](
	[İD] [int] NOT NULL,
	[İLCE] [varchar](40) NULL,
	[SEHİR] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ilceler] PRIMARY KEY CLUSTERED 
(
	[İD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iller]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iller](
	[İD] [int] IDENTITY(1,1) NOT NULL,
	[SEHİR] [varchar](13) NULL,
 CONSTRAINT [PK_iller] PRIMARY KEY CLUSTERED 
(
	[İD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kodlar]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kodlar](
	[FİRMAKOD1] [varchar](300) NULL,
	[FİRMAKOD2] [varchar](300) NULL,
	[FİRMAKOD3] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[musteriler]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[musteriler](
	[İD] [smallint] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](20) NULL,
	[SOYAD] [varchar](30) NULL,
	[TELEFON] [varchar](15) NULL,
	[TELEFON2] [varchar](15) NULL,
	[TC] [char](11) NULL,
	[MAİL] [varchar](40) NULL,
	[İL] [varchar](15) NULL,
	[İLÇE] [varchar](15) NULL,
	[ADRES] [varchar](100) NULL,
	[VERGİDAİRESİ] [varchar](30) NULL,
 CONSTRAINT [PK_musteriler] PRIMARY KEY CLUSTERED 
(
	[İD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[müsteriHareketleri]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[müsteriHareketleri](
	[HAREKETİD] [int] IDENTITY(1,1) NOT NULL,
	[URUNİD] [int] NULL,
	[ADET] [tinyint] NULL,
	[PERSONEL] [tinyint] NULL,
	[MUSTERİ] [smallint] NULL,
	[FİYAT] [decimal](18, 2) NULL,
	[TOPLAM] [decimal](18, 2) NULL,
	[FATURAİD] [int] NULL,
	[TARİH] [varchar](10) NULL,
	[NOTLAR] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[notlar]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[notlar](
	[İD] [int] IDENTITY(1,1) NOT NULL,
	[TARİH] [varchar](20) NULL,
	[SAAT] [varchar](20) NULL,
	[BASLIK] [varchar](40) NULL,
	[DETAY] [varchar](250) NULL,
	[OLUSTURAN] [varchar](20) NULL,
	[HİTAP] [varchar](20) NULL,
 CONSTRAINT [PK_notllar] PRIMARY KEY CLUSTERED 
(
	[İD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[personeller]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[personeller](
	[İD] [tinyint] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](20) NULL,
	[SOYAD] [varchar](30) NULL,
	[TELEFON] [varchar](15) NULL,
	[TC] [char](11) NULL,
	[MAİL] [varchar](40) NULL,
	[İL] [varchar](13) NULL,
	[İLÇE] [varchar](20) NULL,
	[ADRES] [varchar](100) NULL,
	[GÖREV] [varchar](20) NULL,
 CONSTRAINT [PK_personeller] PRIMARY KEY CLUSTERED 
(
	[İD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stoklar]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stoklar](
	[İD] [tinyint] IDENTITY(1,1) NOT NULL,
	[STOKTUR] [varchar](20) NULL,
	[STOKADET] [smallint] NULL,
 CONSTRAINT [PK_stoklar] PRIMARY KEY CLUSTERED 
(
	[İD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[urunler]    Script Date: 15.09.2024 02:37:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[urunler](
	[İD] [int] IDENTITY(1,1) NOT NULL,
	[URUNAD] [varchar](35) NOT NULL,
	[MARKA] [varchar](20) NULL,
	[MODEL] [varchar](20) NULL,
	[YIL] [char](4) NULL,
	[ADET] [smallint] NULL,
	[ALISFİYAT] [decimal](18, 2) NULL,
	[SATISFİYAT] [decimal](18, 2) NULL,
	[DETAY] [varchar](500) NULL,
 CONSTRAINT [PK_urunler] PRIMARY KEY CLUSTERED 
(
	[İD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[admin] ([KULLANICIADİ], [SİFRE]) VALUES (N'admin', N'1')
INSERT [dbo].[admin] ([KULLANICIADİ], [SİFRE]) VALUES (N'serkan', N'2')
INSERT [dbo].[admin] ([KULLANICIADİ], [SİFRE]) VALUES (N'mızık', N'3')
SET IDENTITY_INSERT [dbo].[bankalar] ON 

INSERT [dbo].[bankalar] ([İD], [BANKAADI], [İL], [İLÇE], [SUBE], [İBAN], [HESAPNO], [YETKİLİ], [TELEFON], [TARİH], [HESAPTURU], [FİRMAİD]) VALUES (1, N'ziraat', N'İstanbul', N'Esenyurt', N'küçük yalı', N'TR 12 0010 5426 3045 8931', N'124455', N'Hakan Çakır', N'(555) 111-0000', N'16-07-2024', N'hesap kartı', 2)
INSERT [dbo].[bankalar] ([İD], [BANKAADI], [İL], [İLÇE], [SUBE], [İBAN], [HESAPNO], [YETKİLİ], [TELEFON], [TARİH], [HESAPTURU], [FİRMAİD]) VALUES (4, N'garanti', N'ADANA', N'SEYHAN', N'osmancık', N'TR40 0020 103584', N'103584', N'Arda Çakır', N'(552) 111-0000', N'17.07.2024', N'103584', 1)
INSERT [dbo].[bankalar] ([İD], [BANKAADI], [İL], [İLÇE], [SUBE], [İBAN], [HESAPNO], [YETKİLİ], [TELEFON], [TARİH], [HESAPTURU], [FİRMAİD]) VALUES (6, N'yapı kredi', N'ADANA', N'SEYHAN', N'seyhan kozalak', N'TR30 0010 25 50', N'10 25 50', N'Samet Akaydın', N'(555) 314-0211', N'16.07.2024', N'10 25 50', 3)
SET IDENTITY_INSERT [dbo].[bankalar] OFF
SET IDENTITY_INSERT [dbo].[faturaBilgi] ON 

INSERT [dbo].[faturaBilgi] ([FATURABİLGİİD], [SERİ], [SIRANO], [TARİH], [SAAT], [VERGİDAİRESİ], [ALICI], [TESLİMEDEN], [TESLİMALAN]) VALUES (1, N'B', N'150', N'12.08.2024', N'16:57', N'Kadıköy', N'Yeşil Hayat Hastenesi', N'murat yücedag', N'mehmet yücedag')
INSERT [dbo].[faturaBilgi] ([FATURABİLGİİD], [SERİ], [SIRANO], [TARİH], [SAAT], [VERGİDAİRESİ], [ALICI], [TESLİMEDEN], [TESLİMALAN]) VALUES (2, N'A', N'210', N'17.07.2024', N'21:17', N'Bogazkesen', N'Yeşil Hayat Hastenesi', N'murat yücedag', N'mehmet bozkurt')
INSERT [dbo].[faturaBilgi] ([FATURABİLGİİD], [SERİ], [SIRANO], [TARİH], [SAAT], [VERGİDAİRESİ], [ALICI], [TESLİMEDEN], [TESLİMALAN]) VALUES (3, N'B', N'250', N'17.07.2024', N'21:17', N'Seyhan Kozalak', N'Yeşil Hayat Hastenesi', N'murat yücedag', N'seyahn kozalak')
INSERT [dbo].[faturaBilgi] ([FATURABİLGİİD], [SERİ], [SIRANO], [TARİH], [SAAT], [VERGİDAİRESİ], [ALICI], [TESLİMEDEN], [TESLİMALAN]) VALUES (5, N'A', N'300', N'12.08.2024', N'01:03', N'Merkez', N'Sadık hasan', N'sadmsmsm', N'sasnajsnajs')
SET IDENTITY_INSERT [dbo].[faturaBilgi] OFF
SET IDENTITY_INSERT [dbo].[faturaDetay] ON 

INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1, N'Klima', 20, CAST(25000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (2, N'televizyon', 5, CAST(750.00 AS Decimal(18, 2)), CAST(3750.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (3, N'su ısıtıcı', 12, CAST(35.00 AS Decimal(18, 2)), CAST(420.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (4, N'dolap', 10, CAST(200.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (6, N'fatura 2 ', NULL, NULL, NULL, 2)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (7, N'röntgen makinesi', 10, CAST(100000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1007, N'Çamaşır Makinesi', 1, CAST(1200.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1008, N'Masa', 11, CAST(5200.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1009, N'Yatak Odası Paketi', 2, CAST(50000.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1010, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1011, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1012, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1013, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1014, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1015, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1016, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1017, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1018, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1019, N'Su Sebili', 10, CAST(62000.00 AS Decimal(18, 2)), CAST(620000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1020, N'Akıllı Masa', 10, CAST(32000.00 AS Decimal(18, 2)), CAST(320000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1021, N'Akıllı Masa', 10, CAST(32000.00 AS Decimal(18, 2)), CAST(320000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1022, N'Akıllı Masa', 100, CAST(32000.00 AS Decimal(18, 2)), CAST(3200000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1023, N'Akıllı Masa', 10, CAST(32000.00 AS Decimal(18, 2)), CAST(320000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1024, N'Buzdolabı', 10, CAST(925.00 AS Decimal(18, 2)), CAST(9250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1025, N'Buzdolabı', 2, CAST(925.00 AS Decimal(18, 2)), CAST(1850.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1026, N'Yatak Odası Paketi', 2, CAST(50000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1027, N'Yatak Odası Paketi', 2, CAST(50000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1028, N'Yatak Odası Paketi', 2, CAST(50000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1029, N'Yatak Odası Paketi', 2, CAST(50000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1030, N'Yatak Odası Paketi', 100, CAST(50000.00 AS Decimal(18, 2)), CAST(5000000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1031, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1032, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1033, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1034, N'Yatak Odası Paketi', 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1035, N'Masa Üstü Bilgisayar', 1, CAST(86000.00 AS Decimal(18, 2)), CAST(86000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1036, N'Masa Üstü Bilgisayar', 1, CAST(86000.00 AS Decimal(18, 2)), CAST(86000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[faturaDetay] ([FATURAURUNİD], [URUNAD], [MİKTAR], [FİYAT], [TUTAR], [FATURAİD]) VALUES (1037, N'Masa Üstü Bilgisayar', 1, CAST(86000.00 AS Decimal(18, 2)), CAST(86000.00 AS Decimal(18, 2)), 5)
SET IDENTITY_INSERT [dbo].[faturaDetay] OFF
SET IDENTITY_INSERT [dbo].[firmaHareketleri] ON 

INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (1, 3, 10, 3, 1, CAST(3000.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), 10, N'21.07.2024', N'satış yapıldı')
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (11, 2, 2, 3, 1, CAST(20000.00 AS Decimal(18, 2)), CAST(40000.00 AS Decimal(18, 2)), 12, N'21.07.2024', N'satış yapıldı')
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (12, 20, 1, 1, 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 1, N'21.07.2024', N'satış yapıldı')
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (13, 20, 1, 2, 2, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 2, N'21.07.2024', N'satış yapıldı')
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (14, 13, 10, 10, 2, CAST(62000.00 AS Decimal(18, 2)), CAST(620000.00 AS Decimal(18, 2)), 2, N'21.07.2024', N'satış yapıldı')
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (15, 18, 10, 2, 2, CAST(32000.00 AS Decimal(18, 2)), CAST(320000.00 AS Decimal(18, 2)), 1, N'21.07.2024', N'satış yapıldı')
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (16, 18, 10, 1, 1, CAST(32000.00 AS Decimal(18, 2)), CAST(320000.00 AS Decimal(18, 2)), 1, N'21.07.2024', N'satış yapıldı')
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (17, 18, 100, 1, 1, CAST(32000.00 AS Decimal(18, 2)), CAST(3200000.00 AS Decimal(18, 2)), 1, N'21.07.2024', N'satış yapıldı')
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (18, 1, 10, 1, 2, CAST(32000.00 AS Decimal(18, 2)), CAST(320000.00 AS Decimal(18, 2)), 1, N'21.07.2024', N'satış yapıldı')
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (19, 1, 10, 1, 2, CAST(925.00 AS Decimal(18, 2)), CAST(9250.00 AS Decimal(18, 2)), 1, N'21.07.2024', N'satış yapıldı')
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (20, 1, 2, 1, 1, CAST(925.00 AS Decimal(18, 2)), CAST(1850.00 AS Decimal(18, 2)), 1, N'  .  .', NULL)
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (21, 20, 2, 5, 5, CAST(50000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), 1, N'  .  .', NULL)
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (22, 20, 1, 1, 1, CAST(50000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), 1, N'  .  .', NULL)
INSERT [dbo].[firmaHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [FİRMALAR], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (23, 25, 1, 1, 1, CAST(86000.00 AS Decimal(18, 2)), CAST(86000.00 AS Decimal(18, 2)), 1, N'  .  .', NULL)
SET IDENTITY_INSERT [dbo].[firmaHareketleri] OFF
SET IDENTITY_INSERT [dbo].[firmalar] ON 

INSERT [dbo].[firmalar] ([İD], [AD], [YETKİLİSTATU], [YETKİLİADSOYAD], [YETKİLİTC], [SEKTOR], [TELEFON1], [TELEFON2], [TELEFON3], [MAİL], [FAX], [İL], [İLÇE], [VERGİDAİRESİ], [ADRESS], [OZELKOD1], [OZELKOD2], [OZELKOD3]) VALUES (1, N'Yeşil Hayat Hastenesi', N'hastane Başhekimi', N'hakan çınar', N'4444444444       ', N'sağlık', N'(552) 310-1122', N'(556) 308-3021', N'(558) 111-1221', N'yesilhayathastnesi@gmail.com', N'(1515151)', N'İstanbul', N'Esenyurt', N'esenyurt', N'karanfil sokakk papatya mahalesi no 24', NULL, NULL, NULL)
INSERT [dbo].[firmalar] ([İD], [AD], [YETKİLİSTATU], [YETKİLİADSOYAD], [YETKİLİTC], [SEKTOR], [TELEFON1], [TELEFON2], [TELEFON3], [MAİL], [FAX], [İL], [İLÇE], [VERGİDAİRESİ], [ADRESS], [OZELKOD1], [OZELKOD2], [OZELKOD3]) VALUES (2, N'sdsdds', N'ds', N'hakan çınar', N'dkimi            ', N'212', N'(552) 111-1212', N'(552) 111-1212', N'(552) 111-1212', N'12nesi@gmail.com', N'(552) 111-1212', N'Ankara', N'Esenler', N'esenyurt', N'karanfil sokakk papatya 1', NULL, NULL, NULL)
INSERT [dbo].[firmalar] ([İD], [AD], [YETKİLİSTATU], [YETKİLİADSOYAD], [YETKİLİTC], [SEKTOR], [TELEFON1], [TELEFON2], [TELEFON3], [MAİL], [FAX], [İL], [İLÇE], [VERGİDAİRESİ], [ADRESS], [OZELKOD1], [OZELKOD2], [OZELKOD3]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Mersin', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[firmalar] ([İD], [AD], [YETKİLİSTATU], [YETKİLİADSOYAD], [YETKİLİTC], [SEKTOR], [TELEFON1], [TELEFON2], [TELEFON3], [MAİL], [FAX], [İL], [İLÇE], [VERGİDAİRESİ], [ADRESS], [OZELKOD1], [OZELKOD2], [OZELKOD3]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Bursa', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[firmalar] ([İD], [AD], [YETKİLİSTATU], [YETKİLİADSOYAD], [YETKİLİTC], [SEKTOR], [TELEFON1], [TELEFON2], [TELEFON3], [MAİL], [FAX], [İL], [İLÇE], [VERGİDAİRESİ], [ADRESS], [OZELKOD1], [OZELKOD2], [OZELKOD3]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Sinop', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[firmalar] OFF
SET IDENTITY_INSERT [dbo].[giderler] ON 

INSERT [dbo].[giderler] ([İD], [ELEKTRİK], [AY], [YIL], [SU], [DOGALGAZ], [İNTERNET], [MAAS], [EKSTRA], [NOTLAR]) VALUES (1, CAST(2212.00 AS Decimal(18, 2)), N'ocak', N'2023', CAST(250.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(282.47 AS Decimal(18, 2)), CAST(56000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), N'personellere zam verildi')
INSERT [dbo].[giderler] ([İD], [ELEKTRİK], [AY], [YIL], [SU], [DOGALGAZ], [İNTERNET], [MAAS], [EKSTRA], [NOTLAR]) VALUES (2, CAST(250.00 AS Decimal(18, 2)), N'şubat', N'2024', CAST(300.00 AS Decimal(18, 2)), CAST(570.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(61000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), N'personellere yeni elbise alındı')
INSERT [dbo].[giderler] ([İD], [ELEKTRİK], [AY], [YIL], [SU], [DOGALGAZ], [İNTERNET], [MAAS], [EKSTRA], [NOTLAR]) VALUES (3, CAST(100.00 AS Decimal(18, 2)), N'mart', N'2024', CAST(400.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(445.00 AS Decimal(18, 2)), CAST(65000.00 AS Decimal(18, 2)), CAST(25000.00 AS Decimal(18, 2)), N'magazada tadilat masrafları ve diger masraflar')
INSERT [dbo].[giderler] ([İD], [ELEKTRİK], [AY], [YIL], [SU], [DOGALGAZ], [İNTERNET], [MAAS], [EKSTRA], [NOTLAR]) VALUES (4, CAST(500.00 AS Decimal(18, 2)), N'nisan', N'2024', CAST(500.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(61000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), N'personellere yeni elbise alındı')
INSERT [dbo].[giderler] ([İD], [ELEKTRİK], [AY], [YIL], [SU], [DOGALGAZ], [İNTERNET], [MAAS], [EKSTRA], [NOTLAR]) VALUES (5, CAST(400.00 AS Decimal(18, 2)), N'mayıs', N'2024', CAST(600.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(285.00 AS Decimal(18, 2)), CAST(610000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), N'personellere zam')
INSERT [dbo].[giderler] ([İD], [ELEKTRİK], [AY], [YIL], [SU], [DOGALGAZ], [İNTERNET], [MAAS], [EKSTRA], [NOTLAR]) VALUES (6, CAST(300.00 AS Decimal(18, 2)), N'haziran', N'2024', CAST(700.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[giderler] ([İD], [ELEKTRİK], [AY], [YIL], [SU], [DOGALGAZ], [İNTERNET], [MAAS], [EKSTRA], [NOTLAR]) VALUES (7, CAST(200.00 AS Decimal(18, 2)), N'temuz', N'2024', CAST(1000.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL)
SET IDENTITY_INSERT [dbo].[giderler] OFF
SET IDENTITY_INSERT [dbo].[ilceler] ON 

INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (1, N'SEYHAN', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (2, N'CEYHAN', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (3, N'FEKE', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (4, N'KARAİSALI', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (5, N'KARATAŞ', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (6, N'KOZAN', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (7, N'POZANTI', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (8, N'SAİMBEYLİ', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (9, N'TUFANBEYLİ', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (10, N'YUMURTALIK', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (11, N'YÜREĞİR', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (12, N'ALADAĞ', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (13, N'İMAMOĞLU', 1)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (14, N'ADIYAMAN MERKEZ', 2)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (15, N'BESNİ', 2)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (16, N'ÇELİKHAN', 2)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (17, N'GERGER', 2)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (18, N'GÖLBAŞI', 2)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (19, N'KAHTA', 2)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (20, N'SAMSAT', 2)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (21, N'SİNCİK', 2)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (22, N'TUT', 2)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (23, N'AFYONMERKEZ', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (24, N'BOLVADİN', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (25, N'ÇAY', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (26, N'DAZKIRI', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (27, N'DİNAR', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (28, N'EMİRDAĞ', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (29, N'İHSANİYE', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (30, N'SANDIKLI', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (31, N'SİNANPAŞA', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (32, N'SULDANDAĞI', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (33, N'ŞUHUT', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (34, N'BAŞMAKÇI', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (35, N'BAYAT', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (36, N'İŞCEHİSAR', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (37, N'ÇOBANLAR', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (38, N'EVCİLER', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (39, N'HOCALAR', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (40, N'KIZILÖREN', 3)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (41, N'AKSARAY MERKEZ', 68)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (42, N'ORTAKÖY', 68)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (43, N'AĞAÇÖREN', 68)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (44, N'GÜZELYURT', 68)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (45, N'SARIYAHŞİ', 68)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (46, N'ESKİL', 68)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (47, N'GÜLAĞAÇ', 68)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (48, N'AMASYA MERKEZ', 5)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (49, N'GÖYNÜÇEK', 5)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (50, N'GÜMÜŞHACIKÖYÜ', 5)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (51, N'MERZİFON', 5)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (52, N'SULUOVA', 5)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (53, N'TAŞOVA', 5)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (54, N'HAMAMÖZÜ', 5)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (55, N'ALTINDAĞ', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (56, N'AYAS', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (57, N'BALA', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (58, N'BEYPAZARI', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (59, N'ÇAMLIDERE', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (60, N'ÇANKAYA', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (61, N'ÇUBUK', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (62, N'ELMADAĞ', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (63, N'GÜDÜL', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (64, N'HAYMANA', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (65, N'KALECİK', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (66, N'KIZILCAHAMAM', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (67, N'NALLIHAN', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (68, N'POLATLI', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (69, N'ŞEREFLİKOÇHİSAR', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (70, N'YENİMAHALLE', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (71, N'GÖLBAŞI', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (72, N'KEÇİÖREN', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (73, N'MAMAK', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (74, N'SİNCAN', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (75, N'KAZAN', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (76, N'AKYURT', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (77, N'ETİMESGUT', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (78, N'EVREN', 6)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (79, N'ANSEKİ', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (80, N'ALANYA', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (81, N'ANTALYA MERKEZİ', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (82, N'ELMALI', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (83, N'FİNİKE', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (84, N'GAZİPAŞA', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (85, N'GÜNDOĞMUŞ', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (86, N'KAŞ', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (87, N'KORKUTELİ', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (88, N'KUMLUCA', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (89, N'MANAVGAT', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (90, N'SERİK', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (91, N'DEMRE', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (92, N'İBRADI', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (93, N'KEMER', 7)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (94, N'ARDAHAN MERKEZ', 75)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (95, N'GÖLE', 75)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (96, N'ÇILDIR', 75)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (97, N'HANAK', 75)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (98, N'POSOF', 75)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (99, N'DAMAL', 75)
GO
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (100, N'ARDANUÇ', 8)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (101, N'ARHAVİ', 8)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (102, N'ARTVİN MERKEZ', 8)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (103, N'BORÇKA', 8)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (104, N'HOPA', 8)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (105, N'ŞAVŞAT', 8)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (106, N'YUSUFELİ', 8)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (107, N'MURGUL', 8)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (108, N'AYDIN MERKEZ', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (109, N'BOZDOĞAN', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (110, N'ÇİNE', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (111, N'GERMENCİK', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (112, N'KARACASU', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (113, N'KOÇARLI', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (114, N'KUŞADASI', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (115, N'KUYUCAK', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (116, N'NAZİLLİ', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (117, N'SÖKE', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (118, N'SULTANHİSAR', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (119, N'YENİPAZAR', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (120, N'BUHARKENT', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (121, N'İNCİRLİOVA', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (122, N'KARPUZLU', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (123, N'KÖŞK', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (124, N'DİDİM', 9)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (125, N'AĞRI MERKEZ', 4)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (126, N'DİYADİN', 4)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (127, N'DOĞUBEYAZIT', 4)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (128, N'ELEŞKİRT', 4)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (129, N'HAMUR', 4)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (130, N'PATNOS', 4)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (131, N'TAŞLIÇAY', 4)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (132, N'TUTAK', 4)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (133, N'AYVALIK', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (134, N'BALIKESİR MERKEZ', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (135, N'BALYA', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (136, N'BANDIRMA', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (137, N'BİGADİÇ', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (138, N'BURHANİYE', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (139, N'DURSUNBEY', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (140, N'EDREMİT', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (141, N'ERDEK', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (142, N'GÖNEN', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (143, N'HAVRAN', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (144, N'İVRİNDİ', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (145, N'KEPSUT', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (146, N'MANYAS', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (147, N'SAVAŞTEPE', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (148, N'SINDIRGI', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (149, N'SUSURLUK', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (150, N'MARMARA', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (151, N'GÖMEÇ', 10)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (152, N'BARTIN MERKEZ', 74)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (153, N'KURUCAŞİLE', 74)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (154, N'ULUS', 74)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (155, N'AMASRA', 74)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (156, N'BATMAN MERKEZ', 72)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (157, N'BEŞİRİ', 72)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (158, N'GERCÜŞ', 72)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (159, N'KOZLUK', 72)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (160, N'SASON', 72)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (161, N'HASANKEYF', 72)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (162, N'BAYBURT MERKEZ', 69)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (163, N'AYDINTEPE', 69)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (164, N'DEMİRÖZÜ', 69)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (165, N'BOLU MERKEZ', 14)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (166, N'GEREDE', 14)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (167, N'GÖYNÜK', 14)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (168, N'KIBRISCIK', 14)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (169, N'MENGEN', 14)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (170, N'MUDURNU', 14)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (171, N'SEBEN', 14)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (172, N'DÖRTDİVAN', 14)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (173, N'YENİÇAĞA', 14)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (174, N'AĞLASUN', 15)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (175, N'BUCAK', 15)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (176, N'BURDUR MERKEZ', 15)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (177, N'GÖLHİSAR', 15)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (178, N'TEFENNİ', 15)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (179, N'YEŞİLOVA', 15)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (180, N'KARAMANLI', 15)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (181, N'KEMER', 15)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (182, N'ALTINYAYLA', 15)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (183, N'ÇAVDIR', 15)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (184, N'ÇELTİKÇİ', 15)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (185, N'GEMLİK', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (186, N'İNEGÖL', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (187, N'İZNİK', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (188, N'KARACABEY', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (189, N'KELES', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (190, N'MUDANYA', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (191, N'MUSTAFA K. PAŞA', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (192, N'ORHANELİ', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (193, N'ORHANGAZİ', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (194, N'YENİŞEHİR', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (195, N'BÜYÜK ORHAN', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (196, N'HARMANCIK', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (197, N'NÜLİFER', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (198, N'OSMAN GAZİ', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (199, N'YILDIRIM', 16)
GO
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (200, N'GÜRSU', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (201, N'KESTEL', 16)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (202, N'BİLECİK MERKEZ', 11)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (203, N'BOZÜYÜK', 11)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (204, N'GÖLPAZARI', 11)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (205, N'OSMANELİ', 11)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (206, N'PAZARYERİ', 11)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (207, N'SÖĞÜT', 11)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (208, N'YENİPAZAR', 11)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (209, N'İNHİSAR', 11)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (210, N'BİNGÖL MERKEZ', 12)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (211, N'GENÇ', 12)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (212, N'KARLIOVA', 12)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (213, N'KİGI', 12)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (214, N'SOLHAN', 12)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (215, N'ADAKLI', 12)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (216, N'YAYLADERE', 12)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (217, N'YEDİSU', 12)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (218, N'ADİLCEVAZ', 13)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (219, N'AHLAT', 13)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (220, N'BİTLİS MERKEZ', 13)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (221, N'HİZAN', 13)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (222, N'MUTKİ', 13)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (223, N'TATVAN', 13)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (224, N'GÜROYMAK', 13)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (225, N'DENİZLİ MERKEZ', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (226, N'ACIPAYAM', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (227, N'BULDAN', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (228, N'ÇAL', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (229, N'ÇAMELİ', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (230, N'ÇARDAK', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (231, N'ÇİVRİL', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (232, N'GÜNEY', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (233, N'KALE', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (234, N'SARAYKÖY', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (235, N'TAVAS', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (236, N'BABADAĞ', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (237, N'BEKİLLİ', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (238, N'HONAZ', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (239, N'SERİNHİSAR', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (240, N'AKKÖY', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (241, N'BAKLAN', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (242, N'BEYAĞAÇ', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (243, N'BOZKURT', 20)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (244, N'DÜZCE MERKEZ', 81)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (245, N'AKÇAKOCA', 81)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (246, N'YIĞILCA', 81)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (247, N'CUMAYERİ', 81)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (248, N'GÖLYAKA', 81)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (249, N'ÇİLİMLİ', 81)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (250, N'GÜMÜŞOVA', 81)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (251, N'KAYNAŞLI', 81)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (252, N'DİYARBAKIR MERKEZ', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (253, N'BİSMİL', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (254, N'ÇERMİK', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (255, N'ÇINAR', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (256, N'ÇÜNGÜŞ', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (257, N'DİCLE', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (258, N'ERGANİ', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (259, N'HANİ', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (260, N'HAZRO', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (261, N'KULP', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (262, N'LİCE', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (263, N'SİLVAN', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (264, N'EĞİL', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (265, N'KOCAKÖY', 21)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (266, N'EDİRNE MERKEZ', 22)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (267, N'ENEZ', 22)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (268, N'HAVSA', 22)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (269, N'İPSALA', 22)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (270, N'KEŞAN', 22)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (271, N'LALAPAŞA', 22)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (272, N'MERİÇ', 22)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (273, N'UZUNKÖPRÜ', 22)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (274, N'SÜLOĞLU', 22)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (275, N'ELAZIĞ MERKEZ', 23)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (276, N'AĞIN', 23)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (277, N'BASKİL', 23)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (278, N'KARAKOÇAN', 23)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (279, N'KEBAN', 23)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (280, N'MADEN', 23)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (281, N'PALU', 23)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (282, N'SİVRİCE', 23)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (283, N'ARICAK', 23)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (284, N'KOVANCILAR', 23)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (285, N'ALACAKAYA', 23)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (286, N'ERZURUM MERKEZ', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (287, N'PALANDÖKEN', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (288, N'AŞKALE', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (289, N'ÇAT', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (290, N'HINIS', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (291, N'HORASAN', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (292, N'OLTU', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (293, N'İSPİR', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (294, N'KARAYAZI', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (295, N'NARMAN', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (296, N'OLUR', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (297, N'PASİNLER', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (298, N'ŞENKAYA', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (299, N'TEKMAN', 25)
GO
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (300, N'TORTUM', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (301, N'KARAÇOBAN', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (302, N'UZUNDERE', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (303, N'PAZARYOLU', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (304, N'ILICA', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (305, N'KÖPRÜKÖY', 25)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (306, N'ÇAYIRLI', 24)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (307, N'ERZİNCAN MERKEZ', 24)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (308, N'İLİÇ', 24)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (309, N'KEMAH', 24)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (310, N'KEMALİYE', 24)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (311, N'REFAHİYE', 24)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (312, N'TERCAN', 24)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (313, N'OTLUKBELİ', 24)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (314, N'ESKİŞEHİR MERKEZ', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (315, N'ÇİFTELER', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (316, N'MAHMUDİYE', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (317, N'MİHALIÇLIK', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (318, N'SARICAKAYA', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (319, N'SEYİTGAZİ', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (320, N'SİVRİHİSAR', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (321, N'ALPU', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (322, N'BEYLİKOVA', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (323, N'İNÖNÜ', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (324, N'GÜNYÜZÜ', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (325, N'HAN', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (326, N'MİHALGAZİ', 26)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (327, N'ARABAN', 27)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (328, N'İSLAHİYE', 27)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (329, N'NİZİP', 27)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (330, N'OĞUZELİ', 27)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (331, N'YAVUZELİ', 27)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (332, N'ŞAHİNBEY', 27)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (333, N'ŞEHİT KAMİL', 27)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (334, N'KARKAMIŞ', 27)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (335, N'NURDAĞI', 27)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (336, N'GÜMÜŞHANE MERKEZ', 29)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (337, N'KELKİT', 29)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (338, N'ŞİRAN', 29)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (339, N'TORUL', 29)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (340, N'KÖSE', 29)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (341, N'KÜRTÜN', 29)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (342, N'ALUCRA', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (343, N'BULANCAK', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (344, N'DERELİ', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (345, N'ESPİYE', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (346, N'EYNESİL', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (347, N'GİRESUN MERKEZ', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (348, N'GÖRELE', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (349, N'KEŞAP', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (350, N'ŞEBİNKARAHİSAR', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (351, N'TİREBOLU', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (352, N'PİPAZİZ', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (353, N'YAĞLIDERE', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (354, N'ÇAMOLUK', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (355, N'ÇANAKÇI', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (356, N'DOĞANKENT', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (357, N'GÜCE', 28)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (358, N'HAKKARİ MERKEZ', 30)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (359, N'ÇUKURCA', 30)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (360, N'ŞEMDİNLİ', 30)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (361, N'YÜKSEKOVA', 30)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (362, N'ALTINÖZÜ', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (363, N'DÖRTYOL', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (364, N'HATAY MERKEZ', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (365, N'HASSA', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (366, N'İSKENDERUN', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (367, N'KIRIKHAN', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (368, N'REYHANLI', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (369, N'SAMANDAĞ', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (370, N'YAYLADAĞ', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (371, N'ERZİN', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (372, N'BELEN', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (373, N'KUMLU', 31)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (374, N'ISPARTA MERKEZ', 32)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (375, N'ATABEY', 32)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (376, N'KEÇİBORLU', 32)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (377, N'EĞİRDİR', 32)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (378, N'GELENDOST', 32)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (379, N'SİNİRKENT', 32)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (380, N'ULUBORLU', 32)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (381, N'YALVAÇ', 32)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (382, N'AKSU', 32)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (383, N'GÖNEN', 32)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (384, N'YENİŞAR BADEMLİ', 32)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (385, N'IĞDIR MERKEZ', 76)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (386, N'ARALIK', 76)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (387, N'TUZLUCA', 76)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (388, N'KARAKOYUNLU', 76)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (389, N'AFŞİN', 46)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (390, N'ANDIRIN', 46)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (391, N'ELBİSTAN', 46)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (392, N'GÖKSUN', 46)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (393, N'KAHRAMANMARAŞ MERKEZ', 46)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (394, N'PAZARCIK', 46)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (395, N'TÜRKOĞLU', 46)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (396, N'ÇAĞLAYANCERİT', 46)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (397, N'EKİNÖZÜ', 46)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (398, N'NURHAK', 46)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (399, N'EFLANİ', 78)
GO
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (400, N'ESKİPAZAR', 78)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (401, N'KARABÜK MERKEZ', 78)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (402, N'OVACIK', 78)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (403, N'SAFRANBOLU', 78)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (404, N'YENİCE', 78)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (405, N'ERMENEK', 70)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (406, N'KARAMAN MERKEZ', 70)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (407, N'AYRANCI', 70)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (408, N'KAZIMKARABEKİR', 70)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (409, N'BAŞYAYLA', 70)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (410, N'SARIVELİLER', 70)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (411, N'KARS MERKEZ', 36)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (412, N'ARPAÇAY', 36)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (413, N'DİGOR', 36)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (414, N'KAĞIZMAN', 36)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (415, N'SARIKAMIŞ', 36)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (416, N'SELİM', 36)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (417, N'SUSUZ', 36)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (418, N'AKYAKA', 36)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (419, N'ABANA', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (420, N'KASTAMONU MERKEZ', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (421, N'ARAÇ', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (422, N'AZDAVAY', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (423, N'BOZKURT', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (424, N'CİDE', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (425, N'ÇATALZEYTİN', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (426, N'DADAY', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (427, N'DEVREKANİ', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (428, N'İNEBOLU', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (429, N'KÜRE', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (430, N'TAŞKÖPRÜ', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (431, N'TOSYA', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (432, N'İHSANGAZİ', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (433, N'PINARBAŞI', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (434, N'ŞENPAZAR', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (435, N'AĞLI', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (436, N'DOĞANYURT', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (437, N'HANÖNÜ', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (438, N'SEYDİLER', 37)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (439, N'BÜNYAN', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (440, N'DEVELİ', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (441, N'FELAHİYE', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (442, N'İNCESU', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (443, N'PINARBAŞI', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (444, N'SARIOĞLAN', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (445, N'SARIZ', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (446, N'TOMARZA', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (447, N'YAHYALI', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (448, N'YEŞİLHİSAR', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (449, N'AKKIŞLA', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (450, N'TALAS', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (451, N'KOCASİNAN', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (452, N'MELİKGAZİ', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (453, N'HACILAR', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (454, N'ÖZVATAN', 38)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (455, N'DERİCE', 71)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (456, N'KESKİN', 71)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (457, N'KIRIKKALE MERKEZ', 71)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (458, N'SALAK YURT', 71)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (459, N'BAHŞİLİ', 71)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (460, N'BALIŞEYH', 71)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (461, N'ÇELEBİ', 71)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (462, N'KARAKEÇİLİ', 71)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (463, N'YAHŞİHAN', 71)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (464, N'KIRKKLARELİ MERKEZ', 39)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (465, N'BABAESKİ', 39)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (466, N'DEMİRKÖY', 39)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (467, N'KOFÇAY', 39)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (468, N'LÜLEBURGAZ', 39)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (469, N'VİZE', 39)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (470, N'KIRŞEHİR MERKEZ', 40)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (471, N'ÇİÇEKDAĞI', 40)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (472, N'KAMAN', 40)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (473, N'MUCUR', 40)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (474, N'AKPINAR', 40)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (475, N'AKÇAKENT', 40)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (476, N'BOZTEPE', 40)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (477, N'KOCAELİ MERKEZ', 41)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (478, N'GEBZE', 41)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (479, N'GÖLCÜK', 41)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (480, N'KANDIRA', 41)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (481, N'KARAMÜRSEL', 41)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (482, N'KÖRFEZ', 41)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (483, N'DERİNCE', 41)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (484, N'KONYA MERKEZ', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (485, N'AKŞEHİR', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (486, N'BEYŞEHİR', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (487, N'BOZKIR', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (488, N'CİHANBEYLİ', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (489, N'ÇUMRA', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (490, N'DOĞANHİSAR', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (491, N'EREĞLİ', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (492, N'HADİM', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (493, N'ILGIN', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (494, N'KADINHANI', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (495, N'KARAPINAR', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (496, N'KULU', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (497, N'SARAYÖNÜ', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (498, N'SEYDİŞEHİR', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (499, N'YUNAK', 42)
GO
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (500, N'AKÖREN', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (501, N'ALTINEKİN', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (502, N'DEREBUCAK', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (503, N'HÜYÜK', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (504, N'KARATAY', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (505, N'MERAM', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (506, N'SELÇUKLU', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (507, N'TAŞKENT', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (508, N'AHIRLI', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (509, N'ÇELTİK', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (510, N'DERBENT', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (511, N'EMİRGAZİ', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (512, N'GÜNEYSINIR', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (513, N'HALKAPINAR', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (514, N'TUZLUKÇU', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (515, N'YALIHÜYÜK', 42)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (516, N'KÜTAHYA  MERKEZ', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (517, N'ALTINTAŞ', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (518, N'DOMANİÇ', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (519, N'EMET', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (520, N'GEDİZ', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (521, N'SİMAV', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (522, N'TAVŞANLI', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (523, N'ASLANAPA', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (524, N'DUMLUPINAR', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (525, N'HİSARCIK', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (526, N'ŞAPHANE', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (527, N'ÇAVDARHİSAR', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (528, N'PAZARLAR', 43)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (529, N'KİLİS MERKEZ', 79)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (530, N'ELBEYLİ', 79)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (531, N'MUSABEYLİ', 79)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (532, N'POLATELİ', 79)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (533, N'MALATYA MERKEZ', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (534, N'AKÇADAĞ', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (535, N'ARAPGİR', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (536, N'ARGUVAN', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (537, N'DARENDE', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (538, N'DOĞANŞEHİR', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (539, N'HEKİMHAN', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (540, N'PÜTÜRGE', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (541, N'YEŞİLYURT', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (542, N'BATTALGAZİ', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (543, N'DOĞANYOL', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (544, N'KALE', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (545, N'KULUNCAK', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (546, N'YAZIHAN', 44)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (547, N'AKHİSAR', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (548, N'ALAŞEHİR', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (549, N'DEMİRCİ', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (550, N'GÖRDES', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (551, N'KIRKAĞAÇ', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (552, N'KULA', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (553, N'MANİSA MERKEZ', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (554, N'SALİHLİ', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (555, N'SARIGÖL', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (556, N'SARUHANLI', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (557, N'SELENDİ', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (558, N'SOMA', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (559, N'TURGUTLU', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (560, N'AHMETLİ', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (561, N'GÖLMARMARA', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (562, N'KÖPRÜBAŞI', 45)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (563, N'DERİK', 47)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (564, N'KIZILTEPE', 47)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (565, N'MARDİN MERKEZ', 47)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (566, N'MAZIDAĞI', 47)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (567, N'MİDYAT', 47)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (568, N'NUSAYBİN', 47)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (569, N'ÖMERLİ', 47)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (570, N'SAVUR', 47)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (571, N'YEŞİLLİ', 47)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (572, N'MERSİN MERKEZ', 33)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (573, N'ANAMUR', 33)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (574, N'ERDEMLİ', 33)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (575, N'GÜLNAR', 33)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (576, N'MUT', 33)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (577, N'SİLİFKE', 33)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (578, N'TARSUS', 33)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (579, N'AYDINCIK', 33)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (580, N'BOZYAZI', 33)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (581, N'ÇAMLIYAYLA', 33)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (582, N'BODRUM', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (583, N'DATÇA', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (584, N'FETHİYE', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (585, N'KÖYCEĞİZ', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (586, N'MARMARİS', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (587, N'MİLAS', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (588, N'MUĞLA MERKEZ', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (589, N'ULA', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (590, N'YATAĞAN', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (591, N'DALAMAN', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (592, N'KAVAKLI DERE', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (593, N'ORTACA', 48)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (594, N'BULANIK', 49)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (595, N'MALAZGİRT', 49)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (596, N'MUŞ MERKEZ', 49)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (597, N'VARTO', 49)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (598, N'HASKÖY', 49)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (599, N'KORKUT', 49)
GO
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (600, N'NEVŞEHİR MERKEZ', 50)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (601, N'AVANOS', 50)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (602, N'DERİNKUYU', 50)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (603, N'GÜLŞEHİR', 50)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (604, N'HACIBEKTAŞ', 50)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (605, N'KOZAKLI', 50)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (606, N'ÜRGÜP', 50)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (607, N'ACIGÖL', 50)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (608, N'NİĞDE MERKEZ', 51)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (609, N'BOR', 51)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (610, N'ÇAMARDI', 51)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (611, N'ULUKIŞLA', 51)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (612, N'ALTUNHİSAR', 51)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (613, N'ÇİFTLİK', 51)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (614, N'AKKUŞ', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (615, N'AYBASTI', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (616, N'FATSA', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (617, N'GÖLKÖY', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (618, N'KORGAN', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (619, N'KUMRU', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (620, N'MESUDİYE', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (621, N'ORDU MERKEZ', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (622, N'PERŞEMBE', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (623, N'ULUBEY', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (624, N'ÜNYE', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (625, N'GÜLYALI', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (626, N'GÜRGENTEPE', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (627, N'ÇAMAŞ', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (628, N'ÇATALPINAR', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (629, N'ÇAYBAŞI', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (630, N'İKİZCE', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (631, N'KABADÜZ', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (632, N'KABATAŞ', 52)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (633, N'BAHÇE', 80)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (634, N'KADİRLİ', 80)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (635, N'OSMANİYE MERKEZ', 80)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (636, N'DÜZİÇİ', 80)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (637, N'HASANBEYLİ', 80)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (638, N'SUMBAŞ', 80)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (639, N'TOPRAKKALE', 80)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (640, N'RİZE MERKEZ', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (641, N'ARDEŞEN', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (642, N'ÇAMLIHEMŞİN', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (643, N'ÇAYELİ', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (644, N'FINDIKLI', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (645, N'İKİZDERE', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (646, N'KALKANDERE', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (647, N'PAZAR', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (648, N'GÜNEYSU', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (649, N'DEREPAZARI', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (650, N'HEMŞİN', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (651, N'İYİDERE', 53)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (652, N'AKYAZI', 54)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (653, N'GEYVE', 54)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (654, N'HENDEK', 54)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (655, N'KARASU', 54)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (656, N'KAYNARCA', 54)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (657, N'SAKARYA MERKEZ', 54)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (658, N'PAMUKOVA', 54)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (659, N'TARAKLI', 54)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (660, N'FERİZLİ', 54)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (661, N'KARAPÜRÇEK', 54)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (662, N'SÖĞÜTLÜ', 54)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (663, N'ALAÇAM', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (664, N'BAFRA', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (665, N'ÇARŞAMBA', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (666, N'HAVZA', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (667, N'KAVAK', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (668, N'LADİK', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (669, N'SAMSUN MERKEZ', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (670, N'TERME', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (671, N'VEZİRKÖPRÜ', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (672, N'ASARCIK', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (673, N'ONDOKUZMAYIS', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (674, N'SALIPAZARI', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (675, N'TEKKEKÖY', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (676, N'AYVACIK', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (677, N'YAKAKENT', 55)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (678, N'AYANCIK', 57)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (679, N'BOYABAT', 57)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (680, N'SİNOP MERKEZ', 57)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (681, N'DURAĞAN', 57)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (682, N'ERGELEK', 57)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (683, N'GERZE', 57)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (684, N'TÜRKELİ', 57)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (685, N'DİKMEN', 57)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (686, N'SARAYDÜZÜ', 57)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (687, N'DİVRİĞİ', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (688, N'GEMEREK', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (689, N'GÜRÜN', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (690, N'HAFİK', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (691, N'İMRANLI', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (692, N'KANGAL', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (693, N'KOYUL HİSAR', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (694, N'SİVAS MERKEZ', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (695, N'SU ŞEHRİ', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (696, N'ŞARKIŞLA', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (697, N'YILDIZELİ', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (698, N'ZARA', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (699, N'AKINCILAR', 58)
GO
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (700, N'ALTINYAYLA', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (701, N'DOĞANŞAR', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (702, N'GÜLOVA', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (703, N'ULAŞ', 58)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (704, N'BAYKAN', 56)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (705, N'ERUH', 56)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (706, N'KURTALAN', 56)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (707, N'PERVARİ', 56)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (708, N'SİİRT MERKEZ', 56)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (709, N'ŞİRVARİ', 56)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (710, N'AYDINLAR', 56)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (711, N'TEKİRDAĞ MERKEZ', 59)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (712, N'ÇERKEZKÖY', 59)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (713, N'ÇORLU', 59)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (714, N'HAYRABOLU', 59)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (715, N'MALKARA', 59)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (716, N'MURATLI', 59)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (717, N'SARAY', 59)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (718, N'ŞARKÖY', 59)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (719, N'MARAMARAEREĞLİSİ', 59)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (720, N'ALMUS', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (721, N'ARTOVA', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (722, N'TOKAT MERKEZ', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (723, N'ERBAA', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (724, N'NİKSAR', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (725, N'REŞADİYE', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (726, N'TURHAL', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (727, N'ZİLE', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (728, N'PAZAR', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (729, N'YEŞİLYURT', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (730, N'BAŞÇİFTLİK', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (731, N'SULUSARAY', 60)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (732, N'TRABZON MERKEZ', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (733, N'AKÇAABAT', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (734, N'ARAKLI', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (735, N'ARŞİN', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (736, N'ÇAYKARA', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (737, N'MAÇKA', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (738, N'OF', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (739, N'SÜRMENE', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (740, N'TONYA', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (741, N'VAKFIKEBİR', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (742, N'YOMRA', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (743, N'BEŞİKDÜZÜ', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (744, N'ŞALPAZARI', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (745, N'ÇARŞIBAŞI', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (746, N'DERNEKPAZARI', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (747, N'DÜZKÖY', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (748, N'HAYRAT', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (749, N'KÖPRÜBAŞI', 61)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (750, N'TUNCELİ MERKEZ', 62)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (751, N'ÇEMİŞGEZEK', 62)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (752, N'HOZAT', 62)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (753, N'MAZGİRT', 62)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (754, N'NAZİMİYE', 62)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (755, N'OVACIK', 62)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (756, N'PERTEK', 62)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (757, N'PÜLÜMÜR', 62)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (758, N'BANAZ', 64)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (759, N'EŞME', 64)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (760, N'KARAHALLI', 64)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (761, N'SİVASLI', 64)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (762, N'ULUBEY', 64)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (763, N'UŞAK MERKEZ', 64)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (764, N'BAŞKALE', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (765, N'VAN MERKEZ', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (766, N'EDREMİT', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (767, N'ÇATAK', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (768, N'ERCİŞ', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (769, N'GEVAŞ', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (770, N'GÜRPINAR', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (771, N'MURADİYE', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (772, N'ÖZALP', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (773, N'BAHÇESARAY', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (774, N'ÇALDIRAN', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (775, N'SARAY', 65)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (776, N'YALOVA MERKEZ', 77)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (777, N'ALTINOVA', 77)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (778, N'ARMUTLU', 77)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (779, N'ÇINARCIK', 77)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (780, N'ÇİFTLİKKÖY', 77)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (781, N'TERMAL', 77)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (782, N'AKDAĞMADENİ', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (783, N'BOĞAZLIYAN', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (784, N'YOZGAT MERKEZ', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (785, N'ÇAYIRALAN', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (786, N'ÇEKEREK', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (787, N'SARIKAYA', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (788, N'SORGUN', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (789, N'ŞEFAATLI', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (790, N'YERKÖY', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (791, N'KADIŞEHRİ', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (792, N'SARAYKENT', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (793, N'YENİFAKILI', 66)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (794, N'ÇAYCUMA', 67)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (795, N'DEVREK', 67)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (796, N'ZONGULDAK MERKEZ', 67)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (797, N'EREĞLİ', 67)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (798, N'ALAPLI', 67)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (799, N'GÖKÇEBEY', 67)
GO
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (800, N'ÇANAKKALE MERKEZ', 17)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (801, N'AYVACIK', 17)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (802, N'BAYRAMİÇ', 17)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (803, N'BİGA', 17)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (804, N'BOZCAADA', 17)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (805, N'ÇAN', 17)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (806, N'ECEABAT', 17)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (807, N'EZİNE', 17)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (808, N'LAPSEKİ', 17)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (809, N'YENİCE', 17)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (810, N'ÇANKIRI MERKEZ', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (811, N'ÇERKEŞ', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (812, N'ELDİVAN', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (813, N'ILGAZ', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (814, N'KURŞUNLU', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (815, N'ORTA', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (816, N'ŞABANÖZÜ', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (817, N'YAPRAKLI', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (818, N'ATKARACALAR', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (819, N'KIZILIRMAK', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (820, N'BAYRAMÖREN', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (821, N'KORGUN', 18)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (822, N'ALACA', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (823, N'BAYAT', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (824, N'ÇORUM MERKEZ', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (825, N'İKSİPLİ', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (826, N'KARGI', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (827, N'MECİTÖZÜ', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (828, N'ORTAKÖY', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (829, N'OSMANCIK', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (830, N'SUNGURLU', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (831, N'DODURGA', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (832, N'LAÇİN', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (833, N'OĞUZLAR', 19)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (834, N'ADALAR', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (835, N'BAKIRKÖY', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (836, N'BEŞİKTAŞ', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (837, N'BEYKOZ', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (838, N'BEYOĞLU', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (839, N'ÇATALCA', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (840, N'EMİNÖNÜ', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (841, N'EYÜP', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (842, N'FATİH', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (843, N'GAZİOSMANPAŞA', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (844, N'KADIKÖY', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (845, N'KARTAL', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (846, N'SARIYER', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (847, N'SİLİVRİ', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (848, N'ŞİLE', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (849, N'ŞİŞLİ', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (850, N'ÜSKÜDAR', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (851, N'ZEYTİNBURNU', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (852, N'BÜYÜKÇEKMECE', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (853, N'KAĞITHANE', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (854, N'KÜÇÜKÇEKMECE', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (855, N'PENDİK', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (856, N'ÜMRANİYE', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (857, N'BAYRAMPAŞA', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (858, N'AVCILAR', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (859, N'BAĞCILAR', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (860, N'BAHÇELİEVLER', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (861, N'GÜNGÖREN', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (862, N'MALTEPE', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (863, N'SULTANBEYLİ', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (864, N'TUZLA', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (865, N'ESENLER', 34)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (866, N'ALİAĞA', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (867, N'BAYINDIR', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (868, N'BERGAMA', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (869, N'BORNOVA', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (870, N'ÇEŞME', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (871, N'DİKİLİ', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (872, N'FOÇA', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (873, N'KARABURUN', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (874, N'KARŞIYAKA', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (875, N'KEMALPAŞA', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (876, N'KINIK', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (877, N'KİRAZ', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (878, N'MENEMEN', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (879, N'ÖDEMİŞ', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (880, N'SEFERİHİSAR', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (881, N'SELÇUK', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (882, N'TİRE', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (883, N'TORBALI', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (884, N'URLA', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (885, N'BEYDAĞ', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (886, N'BUCA', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (887, N'KONAK', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (888, N'MENDERES', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (889, N'BALÇOVA', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (890, N'ÇİGLİ', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (891, N'GAZİEMİR', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (892, N'NARLIDERE', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (893, N'GÜZELBAHÇE', 35)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (894, N'ŞANLIURFA MERKEZ', 63)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (895, N'AKÇAKALE', 63)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (896, N'BİRECİK', 63)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (897, N'BOZOVA', 63)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (898, N'CEYLANPINAR', 63)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (899, N'HALFETİ', 63)
GO
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (900, N'HİLVAN', 63)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (901, N'SİVEREK', 63)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (902, N'SURUÇ', 63)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (903, N'VİRANŞEHİR', 63)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (904, N'HARRAN', 63)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (905, N'BEYTÜŞŞEBAP', 73)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (906, N'ŞIRNAK MERKEZ', 73)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (907, N'CİZRE', 73)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (908, N'İDİL', 73)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (909, N'SİLOPİ', 73)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (910, N'ULUDERE', 73)
INSERT [dbo].[ilceler] ([İD], [İLCE], [SEHİR]) VALUES (911, N'GÜÇLÜKONAK', 73)
SET IDENTITY_INSERT [dbo].[ilceler] OFF
SET IDENTITY_INSERT [dbo].[iller] ON 

INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (1, N'ADANA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (2, N'ADIYAMAN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (3, N'AFYON')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (4, N'AĞRI')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (5, N'AMASYA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (6, N'ANKARA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (7, N'ANTALYA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (8, N'ARTVİN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (9, N'AYDIN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (10, N'BALIKESİR')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (11, N'BİLECİK')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (12, N'BİNGÖL')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (13, N'BİTLİS')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (14, N'BOLU')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (15, N'BURDUR')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (16, N'BURSA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (17, N'ÇANAKKALE')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (18, N'ÇANKIRI')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (19, N'ÇORUM')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (20, N'DENİZLİ')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (21, N'DİYARBAKIR')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (22, N'EDİRNE')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (23, N'ELAZIĞ')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (24, N'ERZİNCAN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (25, N'ERZURUM')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (26, N'ESKİŞEHİR')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (27, N'GAZİANTEP')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (28, N'GİRESUN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (29, N'GÜMÜŞHANE')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (30, N'HAKKARİ')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (31, N'HATAY')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (32, N'ISPARTA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (33, N'İÇEL')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (34, N'İSTANBUL')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (35, N'İZMİR')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (36, N'KARS')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (37, N'KASTAMONU')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (38, N'KAYSERİ')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (39, N'KIRKLARELİ')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (40, N'KIRŞEHİR')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (41, N'KOCAELİ')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (42, N'KONYA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (43, N'KÜTAHYA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (44, N'MALATYA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (45, N'MANİSA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (46, N'KAHRAMANMARAŞ')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (47, N'MARDİN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (48, N'MUĞLA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (49, N'MUŞ')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (50, N'NEVŞEHİR')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (51, N'NİĞDE')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (52, N'ORDU')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (53, N'RİZE')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (54, N'SAKARYA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (55, N'SAMSUN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (56, N'SİİRT')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (57, N'SİNOP')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (58, N'SİVAS')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (59, N'TEKİRDAĞ')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (60, N'TOKAT')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (61, N'TRABZON')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (62, N'TUNCELİ')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (63, N'ŞANLIURFA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (64, N'UŞAK')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (65, N'VAN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (66, N'YOZGAT')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (67, N'ZONGULDAK')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (68, N'AKSARAY')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (69, N'BAYBURT')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (70, N'KARAMAN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (71, N'KIRIKKALE')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (72, N'BATMAN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (73, N'ŞIRNAK')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (74, N'BARTIN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (75, N'ARDAHAN')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (76, N'IĞDIR')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (77, N'YALOVA')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (78, N'KARABÜK')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (79, N'KİLİS')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (80, N'OSMANİYE')
INSERT [dbo].[iller] ([İD], [SEHİR]) VALUES (81, N'DÜZCE')
SET IDENTITY_INSERT [dbo].[iller] OFF
INSERT [dbo].[kodlar] ([FİRMAKOD1], [FİRMAKOD2], [FİRMAKOD3]) VALUES (N'sndjsdjsdnjjjjndadannakdnaksnndajdnajndandajkdnajdnjkandjkndandkandknadnadnaknkandjkanajknandanj', NULL, NULL)
SET IDENTITY_INSERT [dbo].[musteriler] ON 

INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (2, N'ad', N'ad', N'(520) 354-2363', N'(525) 352-1128', N'12         ', N'a', N'AMASYA', N'GÜMÜŞHACIKÖYÜ', N'karanfil sokak turemirel köyü no 128 ', N'Gümüş Hacıköy')
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (6, N'ad', N'ad', N'(115) 151-1511', N'(515) 454-5454', N'12         ', N'a', N'İSTANBUL', N'ESENLER', N'Tuna mahalesi sakarya caddesi no 134 kat 2', N'Esenler')
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (7, N'adad', N'ad', N'(520) 354-2363', N'(525) 352-1128', N'12         ', N'a', N'HATAY', N'KIRIKHAN', N'Ayaz Tepe Mahalesi Su ökmen sokağı no 112 kat 1', N'kurtköy')
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (8, N'ad', N'ad', N'(552) 305-8934', N'(525) 305-1245', N'12         ', N'a', N'İSTANBUL', N'ESENLER', N'Tuna mahalesi sakarya caddesi no 134', N'Esenler')
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (9, N'ad', N'ad', N'(552) 113-5648', N'(555) 154-786', N'12         ', N'a', N'ŞANLIURFA', N'ESENLER', N'Seyit Gazi Yılmaz  mahalesi sakarya caddesi no 134', N'Esenler')
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (10, N'da', N'ad', N'(553) 548-3154', N'(553) 454-545', N'12         ', N'a', N'İSTANBUL', N'EMİNÖNÜ', N'Yahya sokagı tünel mahalesi no 211 kat 5', N'Eminönü')
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (11, N'ada', N'Tuncay', N'(512) 245-4545', N'(512) 154-5454', N'12         ', N'a', N'ŞANLIURFA', N'BAHÇELİEVLER', N'Tuncay mahalesi sakrya caddesi no 2145 kat 2', N'Bahçelievler')
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (12, N'dad', N'adad', N'(515) 151-5151', N'(121) 215-4515', N'12         ', N'a', N'ŞANLIURFA', N'ESENLER', N'Tuna mahalesi sakarya caddesi no 134 kat 2', N'İstanbul')
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (13, N'adad', N'dadad', N'(553) 151-5156', N'(553) 155-1515', N'12         ', N'a', N'İSTANBUL', N'ESENLER', N'Fatih  mahalesi sakarya caddesş no 134 kat 2', N'İstanbul')
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (14, N'adad', N'Altunay', N'(215) 151-5151', N'(655) 454-5455', N'12         ', N'a', N'İSTANBUL', N'ESENLER', N'Kazım Karabekir  mahalesi sakarya caddesi no 134 kat 2', N'Esenler')
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (15, N'ada', N'adadad', N'(151) 545-4545', N'(151) 515-1515', N'12         ', N'a', N'HATAY', N'GÖYNÜÇEK', N'karanfil mahalesi sakarya caddesi no 134 kat 1', N'GÖYNÜÇEK')
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (18, N'Hakan', N'dadad', N'(553) 131-5415', N'(151) 515-1515', N'12         ', N'a', N'ŞANLIURFA', NULL, NULL, NULL)
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (19, N'Kaşif', N'parabıyık', N'(553) 151-5126', N'(151) 515-1515', N'12         ', N'a', N'HATAY', NULL, NULL, NULL)
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (20, N'Zahide', N'Sancaklı', N'(553) 141-5156', N'(151) 515-1515', N'12         ', N'v', N'İSTANBUL', NULL, NULL, NULL)
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (21, N'Sibel', N'İlçe', N'(553) 151-5156', N'(151) 515-1515', N'12         ', N'a', N'HATAY', NULL, NULL, NULL)
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (22, N'Sinem', N'İlçe', N'(553) 151-5156', N'(151) 515-1515', N'12         ', N'a', N'HATAY', NULL, NULL, NULL)
INSERT [dbo].[musteriler] ([İD], [AD], [SOYAD], [TELEFON], [TELEFON2], [TC], [MAİL], [İL], [İLÇE], [ADRES], [VERGİDAİRESİ]) VALUES (23, N'Serhat', N'Tuncay', N'(553) 151-5156', N'(151) 515-1515', N'12         ', N'a', N'HATAY', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[musteriler] OFF
SET IDENTITY_INSERT [dbo].[müsteriHareketleri] ON 

INSERT [dbo].[müsteriHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [MUSTERİ], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (2, 1, 10, 1, 2, CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'22.07.2024', N'deneme')
INSERT [dbo].[müsteriHareketleri] ([HAREKETİD], [URUNİD], [ADET], [PERSONEL], [MUSTERİ], [FİYAT], [TOPLAM], [FATURAİD], [TARİH], [NOTLAR]) VALUES (4, 20, 2, 1, 2, CAST(50000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), 1, N'22.07.2024', NULL)
SET IDENTITY_INSERT [dbo].[müsteriHareketleri] OFF
SET IDENTITY_INSERT [dbo].[notlar] ON 

INSERT [dbo].[notlar] ([İD], [TARİH], [SAAT], [BASLIK], [DETAY], [OLUSTURAN], [HİTAP]) VALUES (1, N'19.07.2024', N'17:30', N'Toplantı', N'bugün toplantı yapılacaktır herkesin katılması bekleniyor.', N'samet akaydın', N'herkes')
INSERT [dbo].[notlar] ([İD], [TARİH], [SAAT], [BASLIK], [DETAY], [OLUSTURAN], [HİTAP]) VALUES (2, N'20.08.2024', N'12:00', N'toplantı yapılacaktır', N'20.08.2024 tarihinde önline olarak toplantı yapılıp son hazırlıklar yapılacak', N'murat yücedag', N'personellerle sadece')
INSERT [dbo].[notlar] ([İD], [TARİH], [SAAT], [BASLIK], [DETAY], [OLUSTURAN], [HİTAP]) VALUES (4, N'26.072024', N'12:00', N'SD', N'SD', N'SD', N'SD')
INSERT [dbo].[notlar] ([İD], [TARİH], [SAAT], [BASLIK], [DETAY], [OLUSTURAN], [HİTAP]) VALUES (5, N'26.07.2024', N'13:00', N'SD', N'SD', N'SD', N'SD')
INSERT [dbo].[notlar] ([İD], [TARİH], [SAAT], [BASLIK], [DETAY], [OLUSTURAN], [HİTAP]) VALUES (6, N'29.07.2024', N'1:00', N'S', N'S', N'S', N'S')
SET IDENTITY_INSERT [dbo].[notlar] OFF
SET IDENTITY_INSERT [dbo].[personeller] ON 

INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (1, N'Murat', N'Yücedag', N'(552) 310-5512', N'12345678910', N'Muratyücedag@gmail.com', N'Ankara', N'Polatlı', N'Çiçek mahallesi karanfil sokakk no 134', N'Tasarımcı')
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (2, N'Mehmet', N'Bozdag', N'(105) 305- 8934', N'12345689211', N'Mehemtbozdag@gmail.com', N'İstanbul', N'Esenyurt', N'Merkez', N'Muhasebe')
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (3, N'Mızık', N'Altunay', N'(552) 310-5512', N'44602394754', N'Mızıkaltunay@gmail.com', N'Adıyaman', N'Kahta', N'Tuna mahalesi sakarya caddesi no 134 kat 2', N'Muhasebe')
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (5, N'Şafak', N'Altunay', N'(552) 321 8342', N'44602394754', N'Safakaltunay@gmail.com', N'İstanbul', N'Esenler', N'Tuna mahalesi sakarya caddesi no 134 kat 2', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (6, N'Yagmur', N'Yay', N'(555) 301 4545', N'44012154861', N'Yagmuryay1@gmail.com', N'Kocaeli', N'İzmit', N'Kocaeli, İzmit, Cumhuriyet Meydanı
41040 Kocaeli, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (7, N'Osman', N'Karataş', N'(553) 214 2123', N'14546464564', N'Osmankaratas@gmail.com', N'İstanbul', N'Beşiktaş', N'Beşiktaş, Barbaros Bulvarı No: 123, 34349 Beşiktaş, İstanbul, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (8, N'Ebubekir', N'Karataş', N'(543) 212 5455', N'21546464844', N'Ebubekik12@gmail.com', N'İstanbul', N'Esenler', N'Kazım karabekir mahalesi ilçeler sokagı no 211 kat 3', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (9, N'Gülşen', N'Nar', N'(124) 215 2456', N'12464687113', N'Gülsen1265@gmail.com', N'Sakarya', N'Serdivan', N'Sakarya Caddesi No: 45, 54055 Serdivan, Sakarya, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (10, N'Mustafa', N'Gökgöz', N'(542) 121 5454', N'12114564566', N'Mustafa0203@gmail.com', N'Amasya', N'Gümüşhacı köy', N'Hacıköy, Mahalle No: 12, Gümüş, Amasya, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (11, N'Sinem', N'Kara', N'(512) 120 2121', N'12121545455', N'Sinemkara@gmail.com', N'Bursa', N'Nilüfer', N'6. Cadde No: 45, 16110 Nilüfer, Bursa, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (12, N'Ali', N'Yılmaz', N'(577) 112 2145', N'11515151515', N'Aliyılmaz@gmail.com', N'Adana', N'Seyhan', N'Atatürk Caddesi No: 78, 01010 Seyhan, Adana, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (13, N'Ekrem', N'Demir', N'(523) 258 1245', N'21545454545', N'Ekremdemir@gmail.com', N'Hatay', N'Antakya', N'Kurtuluş Caddesi No: 23, 31030 Antakya, Hatay, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (14, N'Deniz', N'Öztürk', N'(512) 252 1254', N'15546144848', N'Denizozturk@gmail.com', N'Samsun', N'Atakum', N'Cumhuriyet Caddesi No: 45, 55200 Atakum, Samsun, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (15, N'Cem', N'Aydın', N'(552) 256 8864', N'54545454454', N'Cemaydın@gmail.com', N'Gaziantep', N'Şehitkamil', N'Batı Kent Mahallesi, 123. Sokak No: 10, 27500 Şehitkamil, Gaziantep, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (16, N'Can', N'Akman', N'(533) 214 1243', N'12598463125', N'Canakman@gmail.com', N'İstanbul', N'Kadıköy', N'Bahariye Caddesi No: 30, 34724 Kadıköy, İstanbul, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (17, N'Elif', N'Yurt', N'(512) 1030 245', N'84515131151', N'Elifyurt@gmail.com', N'Ankara', N'Çankaya', N'Tunalı Hilmi Caddesi No: 123, 06680 Çankaya, Ankara, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (18, N'Ece', N'Polat', N'(579) 2021 212', N'12156887844', N'Ecepolat@gmail.com', N'Sakarya', N'Adapazarı', N'Atatürk Bulvarı No: 50, 54100 Adapazarı, Sakarya, Türkiye', NULL)
INSERT [dbo].[personeller] ([İD], [AD], [SOYAD], [TELEFON], [TC], [MAİL], [İL], [İLÇE], [ADRES], [GÖREV]) VALUES (19, N'Selin', N'Koç', N'(512) 0221 202', N'12164848466', N'Selinkoc@gmail.com', N'Kocaeli', N'İzmit', N'Fethiye Caddesi No: 32, 41200 İzmit, Kocaeli, Türkiye', NULL)
SET IDENTITY_INSERT [dbo].[personeller] OFF
SET IDENTITY_INSERT [dbo].[urunler] ON 

INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (1, N'Buzdolabı', N'Siemens', N'A126', N'2017', 3, CAST(800.00 AS Decimal(18, 2)), CAST(925.00 AS Decimal(18, 2)), N'A plus olup 4 sekmesi ve 2 rafı vardır kurulumu biz tarafından yapılmaktadır')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (2, N'Çamaşır Makinesi', N'Bussons', N'B 250 tf8', N'2022', 15, CAST(1000.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)), N'Camaşır Makinesi Garanti Süresi 4 Yıldır ')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (3, N'Tost Makinesi', N'Arzum', N'Bt 2028t', N'2024', 10, CAST(4000.00 AS Decimal(18, 2)), CAST(4200.00 AS Decimal(18, 2)), N'Tost Makinesi arzum 4 yıl garantisi vardır Arzum tost makinesi en çok satan tost makinesi olarak şuan piyasada en uçok rehabet gören tost makinesdir ayrıca dünyanın bir numarasıdır.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (5, N'Bulaşık Makinesi', N'Vestel', N'BM 4212', N'2024', 16, CAST(16000.00 AS Decimal(18, 2)), CAST(19000.00 AS Decimal(18, 2)), N'Bulaşık makinenizi standart programlarda çalıştırmak için her zaman yeterli vaktiniz olmayabilir. Peki, normal kirlilik düzeyindeki günlük bulaşıklarınızın tümünü sadece 50 dakikada yıkayan, durulayan ve kurutan yeni bir teknoloji mümkün olur mu dersiniz?')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (6, N'Televizyon', N'Samsung', N'T5300 FHD', N'2024', 20, CAST(20000.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), N'Evde TV''nizden ofis işlerinizi yapın. Uzaktan Erişim, bilgisayarınızın ekranını TV ekranına kablosuz olarak yansıtmanıza olanak tanır. Microsoft Office 365 kullanarak dosyalara erişmek veya belgeler üzerinde çalışmak için ofis bilgisayarınıza bile dokunabilir ve bunların hepsini koltuğunuzun rahatlıkla yapabilirsiniz.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (7, N'Saç Kurutma Makinesi kablosuz', N'Arzum', N'T5300 FHD', N'2024', 50, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), N'Kablosuz VE TAŞINABİLİR? Kablo kısıtlaması olmadan saç kurutma makinesini gittiğiniz ')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (8, N'Masa', N'Avşar', N'3 kademeli', N'2024', 20, CAST(4219.00 AS Decimal(18, 2)), CAST(5200.00 AS Decimal(18, 2)), N'Avşar masa 3 kademeli orta sehpa yemek masası')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (9, N'Koltuk', N'Venedik', N'Louis XVIı', N'2023', 15, CAST(25000.00 AS Decimal(18, 2)), CAST(40000.00 AS Decimal(18, 2)), N'Venedik üçlü koltuk takımı kumaşı Beyfeys dir. 3 yıl garantilidir.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (10, N'Yatak', N'Bellona', N'Bel-2028t', N'2024', 5, CAST(50000.00 AS Decimal(18, 2)), CAST(85000.00 AS Decimal(18, 2)), N'Çift kişiliktir. altı bazalı olup yatakta hediye verilmektedir garantisi 2 yıl olup istenildigi sürece uzatılabilir.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (11, N'Dügün Paketi', N'Moda', N'Loluis Diyarım', N'2025', 30, CAST(90000.00 AS Decimal(18, 2)), CAST(182000.00 AS Decimal(18, 2)), N'Yeni evlenen çiftler için Ekonomik olan Moda Düğün Paketi sizlerle, Peşin Fiyatına 24 Ay Taksit imkanı ile Moda Düğün Paketine sahip olabilirsiniz.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (12, N'Ocak', N'Vestel', N'Oscal-t82', N'2026', 28, CAST(3800.00 AS Decimal(18, 2)), CAST(5200.00 AS Decimal(18, 2)), N'Ocagın altı Ankastre ve 8 adet bölme si olmakla beraber yanması içinde bulunan gazla olmaktadır son teknolojidir.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (13, N'Su Sebili', N'Arçelik', N'2025-t82sd', N'2025', 56, CAST(45000.00 AS Decimal(18, 2)), CAST(62000.00 AS Decimal(18, 2)), N'Son model olup akkılı sistem sayesinde suyu kendisi istediginiz ölçüde soguk veya sıcak hale getirebilir son dönemin en çok sattan magaza ürünmüzdür.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (14, N'Çamaşır Makinesi', N'Arçelik', N'2025-t82sd', N'2025', 22, CAST(22000.00 AS Decimal(18, 2)), CAST(48200.00 AS Decimal(18, 2)), N'Arçelik çamasır makinesi 16*4 yıkama sistemi ile 18 kg agırlaga agırlıgı kaldırabilir ve ek olarak 12 programlıdır.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (15, N'Bulaşık Makinesi', N'Beko', N'Beko Arkeste', N'2025', 20, CAST(25200.00 AS Decimal(18, 2)), CAST(39000.00 AS Decimal(18, 2)), N'Beko 670482 MB F Enerji Sınıfı 392 lt Çift Kapılı Alttan Donduruculu Buzdolabı Beyaz
Beko buzdolapları yiyecekleri saklama koşulları, farklı iç hacim genişlikleri ve tasarım detayları ile kullanıcılara belli avantajlar sunuyor.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (16, N'Fön Makinesi', N'Ayça', N'Tr-901', N'2022', 18, CAST(2000.00 AS Decimal(18, 2)), CAST(4200.00 AS Decimal(18, 2)), N'İncelemekte olan beyaz renkli Beko 670482 MB buzdolabı modelinin 1720 mm yüksekliği bulunuyor. Standart bir yüksekliğe sahip olan Beko 670482 MB buzdolabı mutfak içerisinde kendisi için ayrılan boşluğa rahat bir şekilde sığdırılabiliyor. Beko 670482 MB buzdolabının genişliğinin 700 mm, derinliğinin ise 705 mm olduğu görünüyor. ')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (17, N'Sehpa', N'Ayça', N'Ayç-s15', N'2022', 20, CAST(2200.00 AS Decimal(18, 2)), CAST(3210.00 AS Decimal(18, 2)), N'Genişligi 15 derinligide 22 olmak beraber kurulum gerektirmemektedi.r 3 yıl garantilidir.olduğu görünüyor. ')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (18, N'Akıllı Masa', N'Bellona', N'Monte Sepha', N'2023', 47, CAST(20000.00 AS Decimal(18, 2)), CAST(32000.00 AS Decimal(18, 2)), N'Ahşap ve metal mobilyaların Garanti Belgesi Yönetmeliği uyarınca garanti belgesi ile satılması zorunludur ve satıcılar tarafından uygulanması gereken asgari garanti süresi 2 yıldır.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (19, N'Çift Kişilik Paket', N'Arçelik', N'Monte Sepha', N'2023', 48, CAST(20000.00 AS Decimal(18, 2)), CAST(32000.00 AS Decimal(18, 2)), N'Bulaık makinesi,Camaşır Makinesir,Ocak,Televizyon dahil olmakla beraber ütb8 Belgesi Yönetmeliği uyarınca garanti belgesi ile satılması zorunludur ve satıcılar tarafından uygulanması gereken asgari garanti süresi 2 yıldır.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (20, N'Yatak Odası Paketi', N'Arçelik', N'Monte Sepha', N'2055', 45, CAST(22000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), N'Pakede Ütü masasaı çamaşır makinesi ')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (21, N'Yatak Odası Paketi', N'Arçelik', N'Monte Sepha', N'2055', 50, CAST(22000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), N'Pakede Ütü masasaı çamaşır makinesi ')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (22, N'Koltuk Örtüsü', N'Mondi', N'yst-tr21', N'2025', 30, CAST(10000.00 AS Decimal(18, 2)), CAST(24000.00 AS Decimal(18, 2)), N'ARC-6 koltuguna Uygun yastıktır. 3 yıl garantili olmakla beraber kumaşı bebyfesdir. koltuk örtünüze tam uyacagına eminimdir.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (23, N'Leptop', N'Hp', N'Notebook 5021', N'2020', 20, CAST(30000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), N'Hp notebbok dizüstü leptop 1 Tlbay Ssdi ve 12 gb rami vardır.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (25, N'Masa Üstü Bilgisayar', N'Casper', N'Casper tr-58', N'2024', 19, CAST(50000.00 AS Decimal(18, 2)), CAST(86000.00 AS Decimal(18, 2)), N'İşlemcisi tr-80 dir. Kapasitesi 1 tlbt ve 1 tlbayt ssdisi vardır. 3 yıl garantilidir.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (26, N'Yazıcı', N'Canon', N'Cn-t21r', N'2023', 32, CAST(28000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), N'Kartuşlu yazıcı olmakla birlilte Fotkopiyi 3 G olarak çıkartır. Tarayıcı bulunmamaktadır.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (27, N'Leptop', N'Hp', N'Hp5tr6', N'2024', 20, CAST(75000.00 AS Decimal(18, 2)), CAST(120000.00 AS Decimal(18, 2)), N'2 Tlbayt Ssdi,3 Tlbayt Hafızası vardır.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (28, N'Su Sebili', N'Modefia', N'Modefilatr-1', N'2025', 60, CAST(5000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), N'ARC-6 koltuguna Uygun yastıktır. 3 yıl garantili olmakla beraber kumaşı bebyfesdir. koltuk örtünüze tam uyacagına eminimdir.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (29, N'Yazıcı', N'Canon', N'cna-15', N'2024', 10, CAST(1515.00 AS Decimal(18, 2)), CAST(1121.00 AS Decimal(18, 2)), N'Kartuşlu yazıcı olmakla birlilte Fotkopiyi 3 G olarak çıkartır. Tarayıcı bulunmamaktadır.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (30, N'Buzdolabı', N'Siemens', N'A126', N'2017', 15, CAST(800.00 AS Decimal(18, 2)), CAST(925.00 AS Decimal(18, 2)), N'A plus olup 4 sekmesi ve 2 rafı vardır kurulumu biz tarafından yapılmaktadır')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (37, N'Leptop', N'Hp', N'Hp Notebook', N'2023', 32, CAST(28000.00 AS Decimal(18, 2)), CAST(50000.00 AS Decimal(18, 2)), N'Kartuşlu yazıcı olmakla birlilte Fotkopiyi 3 G olarak çıkartır. Tarayıcı bulunmamaktadır.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (38, N'Sehpa', N'Bella', N'Yan Sehpa', N'2024', 40, CAST(10000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), N'Kargo bedava ve 30 gün içinde iade edilebilir')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (39, N'Ocak', N'Kumtel', N'Cam', N'2024', 20, CAST(22000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)), N'Kargo bedava')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (40, N'Ünite', N'Poalina', N'Antrasit', N'2024', 25, CAST(100000.00 AS Decimal(18, 2)), CAST(15800.00 AS Decimal(18, 2)), N'ARC-6 koltuguna Uygun yastıktır. 3 yıl garantili olmakla beraber kumaşı bebyfesdir. koltuk örtünüze tam uyacagına eminimdir.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (41, N'Sandalye', N'Ikea', N'Abc', N'2023', 100, CAST(20000.00 AS Decimal(18, 2)), CAST(40000.00 AS Decimal(18, 2)), N'Ahşap ve metal mobilyaların Garanti Belgesi Yönetmeliği uyarınca garanti belgesi ile satılması zorunludur ve satıcılar tarafından uygulanması gereken asgari garanti süresi 2 yıldır.
Bulaık makinesi,Camaşır Makinesir,Ocak,Televizyon dahil olmakla beraber ütb8 Belgesi Yönetmeliği uyarınca garanti belgesi ile satılması zorunludur ve satıcılar tarafından uygulanması gereken asgari garanti süresi 2 yıldır.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (42, N'Halı', N'Moda', N'Mda-50', N'2024', 100, CAST(10000.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), N'ARC-6 koltuguna Uygun yastıktır. 3 yıl garantili olmakla beraber kumaşı bebyfesdir. koltuk örtünüze tam uyacagına eminimdir.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (43, N'Porselen Takımı', N'Kütahya Porselen', N'Düz', N'2024', 29, CAST(120000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), N'Dört adet 27 cm servis tabağı, dört adet 21 cm çukur tabak, dört adet 19 cm pasta tabağı, dört adet 15 cm kase
Bulaşık makinesinde yıkanabilir')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (44, N'Yatak', N'Ada', N'Ada20', N'2024', 30, CAST(100000.00 AS Decimal(18, 2)), CAST(150000.00 AS Decimal(18, 2)), N'Storish ile evinizin tarzını yansıtan Ada Yatak Odası Takımı Açık Bej Karyolalı 6 Kapaklı. Kaliteli ve modern tasarımlarımızla yaşam alanlarınıza estetik dokunuşlar ekleyin ...')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (45, N'Komidin', N'Siya', N'Kalinstan', N'2024', 50, CAST(10000.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), N'Kapsayıcı bir ürün ailesi olarak tasarlanan Fil Serisi, evinizdeki çeşitli ihtiyaçları karşılamak üzere doğdu.')
INSERT [dbo].[urunler] ([İD], [URUNAD], [MARKA], [MODEL], [YIL], [ADET], [ALISFİYAT], [SATISFİYAT], [DETAY]) VALUES (46, N'Tv Ünitesi', N'Calvin', N'Hazeran', N'2024', 100, CAST(3500.00 AS Decimal(18, 2)), CAST(5200.00 AS Decimal(18, 2)), N'Kapsayıcı bir ürün ailesi olarak tasarlanan Fil Serisi, evinizdeki çeşitli ihtiyaçları karşılamak üzere doğdu.')
SET IDENTITY_INSERT [dbo].[urunler] OFF
ALTER TABLE [dbo].[müsteriHareketleri]  WITH CHECK ADD  CONSTRAINT [FK_müsteriHareketleri_musteriler] FOREIGN KEY([MUSTERİ])
REFERENCES [dbo].[musteriler] ([İD])
GO
ALTER TABLE [dbo].[müsteriHareketleri] CHECK CONSTRAINT [FK_müsteriHareketleri_musteriler]
GO
ALTER TABLE [dbo].[müsteriHareketleri]  WITH CHECK ADD  CONSTRAINT [FK_müsteriHareketleri_personeller] FOREIGN KEY([PERSONEL])
REFERENCES [dbo].[personeller] ([İD])
GO
ALTER TABLE [dbo].[müsteriHareketleri] CHECK CONSTRAINT [FK_müsteriHareketleri_personeller]
GO
ALTER TABLE [dbo].[müsteriHareketleri]  WITH CHECK ADD  CONSTRAINT [FK_müsteriHareketleri_urunler] FOREIGN KEY([URUNİD])
REFERENCES [dbo].[urunler] ([İD])
GO
ALTER TABLE [dbo].[müsteriHareketleri] CHECK CONSTRAINT [FK_müsteriHareketleri_urunler]
GO
