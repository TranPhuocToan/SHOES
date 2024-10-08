USE [J6Giay]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[user_name] [varchar](255) NOT NULL,
	[email] [varchar](255) NULL,
	[full_name] [nvarchar](255) NULL,
	[pass_word] [varchar](255) NULL,
	[phone] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[authorities]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](255) NULL,
	[role_id] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart_detail]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_detail](
	[cart_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[cart_id] [int] NULL,
	[product_detail_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[order_id] [int] NULL,
	[product_detail_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_address] [nvarchar](255) NULL,
	[order_date] [datetime2](7) NULL,
	[user_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_description] [nvarchar](255) NULL,
	[product_images] [varchar](255) NULL,
	[product_name] [nvarchar](255) NULL,
	[product_price] [float] NULL,
	[brand_id] [int] NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_detail]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_detail](
	[product_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[color_id] [int] NULL,
	[product_id] [int] NULL,
	[size_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[role_id] [varchar](255) NOT NULL,
	[role_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 4/12/2024 2:14:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[size_id] [int] IDENTITY(1,1) NOT NULL,
	[size_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[accounts] ([user_name], [email], [full_name], [pass_word], [phone]) VALUES (N'bbb', N'toantppc04854@fpt.edu.vn', N'tran phuoc toan', N'123', N'0388490985')
INSERT [dbo].[accounts] ([user_name], [email], [full_name], [pass_word], [phone]) VALUES (N'Hieu123', N'Hieu@gmail.com', N'Tiêu Văn Hiếu', N'999', N'0789554261')
INSERT [dbo].[accounts] ([user_name], [email], [full_name], [pass_word], [phone]) VALUES (N'Hieu456', N'Hieu2@gmail.com', N'Tiêu Văn Hiếu', N'999', N'0789554261')
INSERT [dbo].[accounts] ([user_name], [email], [full_name], [pass_word], [phone]) VALUES (N'Hieu789', N'Hieu3@gmail.com', N'Tiêu Văn Hiếu', N'999', N'0789554261')
INSERT [dbo].[accounts] ([user_name], [email], [full_name], [pass_word], [phone]) VALUES (N'Phat123', N'Phat@gmail.com', N'Lê Tuấn Phát', N'123', N'0735217734')
INSERT [dbo].[accounts] ([user_name], [email], [full_name], [pass_word], [phone]) VALUES (N'Phat456', N'Phat@gmail1.com', N'Lê Tuấn Phát', N'456', N'0736767543')
INSERT [dbo].[accounts] ([user_name], [email], [full_name], [pass_word], [phone]) VALUES (N'Phat789', N'Phat@gmail2.com', N'Lê Tuấn Phát', N'789', N'0708654433')
INSERT [dbo].[accounts] ([user_name], [email], [full_name], [pass_word], [phone]) VALUES (N'toan', N'toantppc04854@fpt.edu.vn', N'tran phuoc toan', N'123', N'0388490985')
INSERT [dbo].[accounts] ([user_name], [email], [full_name], [pass_word], [phone]) VALUES (N'Toan123', N'Toan@gmail.com', N'Trần Phước Toản', N'111', N'0754353257')
INSERT [dbo].[accounts] ([user_name], [email], [full_name], [pass_word], [phone]) VALUES (N'Toan456', N'Toan@gmail1.com', N'Trần Phước Toản', N'222', N'0785675443')
INSERT [dbo].[accounts] ([user_name], [email], [full_name], [pass_word], [phone]) VALUES (N'Toan789', N'Toan@gmail2.com', N'Trần Phước Toản', N'333', N'0735217734')
GO
SET IDENTITY_INSERT [dbo].[authorities] ON 

INSERT [dbo].[authorities] ([id], [user_name], [role_id]) VALUES (16, N'bbb', N'CUST')
INSERT [dbo].[authorities] ([id], [user_name], [role_id]) VALUES (7, N'Hieu123', N'CUST')
INSERT [dbo].[authorities] ([id], [user_name], [role_id]) VALUES (8, N'Hieu456', N'DIRE')
INSERT [dbo].[authorities] ([id], [user_name], [role_id]) VALUES (9, N'Hieu789', N'STAF')
INSERT [dbo].[authorities] ([id], [user_name], [role_id]) VALUES (1, N'Phat123', N'CUST')
INSERT [dbo].[authorities] ([id], [user_name], [role_id]) VALUES (2, N'Phat456', N'DIRE')
INSERT [dbo].[authorities] ([id], [user_name], [role_id]) VALUES (3, N'Phat789', N'STAF')
INSERT [dbo].[authorities] ([id], [user_name], [role_id]) VALUES (10, N'toan', N'CUST')
INSERT [dbo].[authorities] ([id], [user_name], [role_id]) VALUES (4, N'Toan123', N'CUST')
INSERT [dbo].[authorities] ([id], [user_name], [role_id]) VALUES (5, N'Toan456', N'DIRE')
INSERT [dbo].[authorities] ([id], [user_name], [role_id]) VALUES (6, N'Toan789', N'STAF')
SET IDENTITY_INSERT [dbo].[authorities] OFF
GO
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (1, N'Nike')
INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (2, N'Adidas')
INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (3, N'Converse')
INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (4, N'Vans')
INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (5, N'New Balance')
INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (6, N'Puma')
INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (7, N'Reebok')
INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (8, N'Supreme')
INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (9, N'Fila')
INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (10, N'PEAK')
INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (11, N'ASECO 32')
INSERT [dbo].[brand] ([brand_id], [brand_name]) VALUES (12, N'Nikee')
SET IDENTITY_INSERT [dbo].[brand] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_name]) VALUES (1, N'Fashion Shoes')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (2, N'Basketball Shoes')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (3, N'Sneaker')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (4, N'Classic Shoes')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (5, N'Athletic Shoes')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[color] ON 

INSERT [dbo].[color] ([color_id], [color_name]) VALUES (1, N'Red')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (2, N'Yellow')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (3, N'Green')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (4, N'Black')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (5, N'Gray')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (6, N'White')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (7, N'Pink')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (8, N'Brown')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (9, N'Silver')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (10, N'Blue')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (11, N'Orange')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (12, N'Purple')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (13, N'Cyan')
INSERT [dbo].[color] ([color_id], [color_name]) VALUES (15, NULL)
SET IDENTITY_INSERT [dbo].[color] OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1030, 8000000, 2, 1033, 3)
INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1031, 7000000, 1, 1033, 7)
INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1032, 8000000, 2, 1034, 15)
INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1033, 7500000, 2, 1034, 10)
INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1034, 8000000, 1, 1035, 3)
INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1035, 7500000, 1, 1035, 10)
INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1036, 8000000, 1, 1036, 6)
INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1037, 8000000, 1, 1036, 16)
INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1038, 6000000, 1, 1036, 24)
INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1039, 8000000, 1, 1037, 3)
INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1040, 7500000, 2, 1037, 10)
INSERT [dbo].[order_detail] ([order_detail_id], [price], [quantity], [order_id], [product_detail_id]) VALUES (1041, 7000000, 1, 1037, 7)
SET IDENTITY_INSERT [dbo].[order_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([order_id], [order_address], [order_date], [user_name]) VALUES (1033, N'Cần Thơ', CAST(N'2024-04-12T11:12:31.6910000' AS DateTime2), N'Hieu123')
INSERT [dbo].[orders] ([order_id], [order_address], [order_date], [user_name]) VALUES (1034, N'Cần thơ', CAST(N'2024-04-12T11:13:47.5780000' AS DateTime2), N'Hieu123')
INSERT [dbo].[orders] ([order_id], [order_address], [order_date], [user_name]) VALUES (1035, N'Cần THơ', CAST(N'2024-04-12T11:16:35.4830000' AS DateTime2), N'Phat123')
INSERT [dbo].[orders] ([order_id], [order_address], [order_date], [user_name]) VALUES (1036, N'Cần Thơ', CAST(N'2024-04-12T11:18:18.9380000' AS DateTime2), N'Phat123')
INSERT [dbo].[orders] ([order_id], [order_address], [order_date], [user_name]) VALUES (1037, N'Can tho', CAST(N'2024-04-12T12:56:48.4270000' AS DateTime2), N'Hieu123')
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (2, N'Giày Nike Air Force 1 Low LV8 3 ‘Racer Blue’', N'AF1_1.jpg', N'Nike Air Force 1 Low', 8000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (3, N'Giày Nike Steven Harrington x Air Force 1 Low Flyleather QS ‘Earth Day’', N'AF1_3.jpg', N'Nike Steven Harrington x Air Force 1 Low Flyleather QS', 8000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (4, N'Giày Nike Air Force 1 ’07 LV8 ‘Doernbecher’ 2019', N'AF1_4.jpg', N'Nike Air Force 1 ( 2019 )', 7000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (5, N'Giày Nike Air Force 1 Low ’07 ‘White University Gold Gum’', N'AF1_5.jpg', N'Nike Air Force 1 Low', 7500000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (6, N'Giày Nike Air Force 1 ‘De Lo Mio’', N'AF1_6.jpg', N'Nike Air Force 1', 7600000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (7, N'Giày Nike Tiffany & Co. x Air Force 1 Low Friends & Family ‘1837’', N'AF1_7.jpg', N'Nike Tiffany & Co. x Air Force 1 Low Friends & Family', 8000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (8, N'Giày Nike Air Force 1 ’07 Low ‘Wolf Grey’', N'AF1_8.jpg', N'Air Force 1', 8000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (9, N'Giày Nike Air Force 1 Mid ’07 LV8 ‘White Black’', N'AF1_9.jpg', N'Nike Air Force 1 Mid', 8000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (10, N'Giày Nike Air Force 1 Sprm Max Air 07 ‘Black’', N'AF1_10.jpg', N'Nike Air Force 1', 8000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (11, N'Giày SoleFly x Air Jordan 13 Retro ‘Id Rather Be Fishing’', N'Bongro_1.jpg', N'SoleFly x Air Jordan 13 Retro', 6000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (12, N'Giày Air Jordan Tatum 1 Denim PF ‘Fossil Sesame’', N'Bongro_2.jpg', N'Air Jordan Tatum 1 Denim PF', 7000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (13, N'Giày Nike Zoom Freak 4 ‘Greek Coastline’', N'Bongro_3.jpg', N'Nike Zoom Freak 4', 8000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (14, N'Giày Nike Zoom GT Jump 2 ‘Christmas’', N'Bongro_4.jpg', N'Nike Zoom GT Jump 2', 6500000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (15, N'Giày Nike LeBron 8 ‘Lakers’', N'Bongro_5.jpg', N'Nike LeBron 8', 6500000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (16, N'Giày PEAK Lightning X Performance ‘Yellow Blue’', N'Bongro_6.jpg', N'PEAK Lightning X Performance', 4000000, 10, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (17, N'Giày PEAK Lightning X Performance ‘Pink Canvas’', N'Bongro_7.jpg', N'PEAK Lightning X Performance', 4000000, 10, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (18, N'Giày Nike Air Max 1 ’87 LX ‘White Photon Dust’', N'Bongro_8.jpg', N'Nike Air Max 1', 6000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (19, N'Giày Nike Ja 1 ‘Scratch’', N'Bongro_9.jpg', N'Nike Ja 1', 4600000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (20, N'Giày Air Jordan 7 Retro ‘Defining Moments Pack’', N'Bongro_10.jpg', N'Air Jordan 7 Retro', 5000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (21, N'Giày (WMNS) Nike Downshifter 11 Low-Top Orange/White', N'Chaybo_1.jpg', N'Nike Downshifter 11 Low-Top', 2000000, 1, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (22, N'Giày (WMNS) Nike Air Winflo 9 ‘Pink Oxford’', N'Chaybo_2.jpg', N'Nike Air Winflo 9', 2000000, 1, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (23, N'Giày Nike Air Winflo 9 ‘Black Old Royal’', N'Chaybo_3.jpg', N'Nike Air Winflo 9', 2300000, 1, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (24, N'Giày Nike Air Zoom Pegasus 38 ‘Sail Gym Red Black’', N'Chaybo_4.jpg', N'Nike Air Zoom Pegasus 38', 2300000, 1, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (25, N'Giày Nike Revolution 6 Next Nature ‘Valerian Blue’', N'Chaybo_5.jpg', N'Nike Revolution 6 Next Nature', 2100000, 1, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (26, N'Giày NFL x Nike Air Zoom Pegasus 39 ‘Los Angeles Rams’', N'Chaybo_6.jpg', N'NFL x Nike Air Zoom Pegasus', 2200000, 1, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (27, N'Giày Nike Air Zoom Pegasus 40 ‘Paris Saint-Germain’', N'Chaybo_7.jpg', N'Nike Air Zoom Pegasus 40', 2000000, 1, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (28, N'Giày (WMNS) Nike Revolution 6 NN Low-Top Pink/White', N'Chaybo_8.jpg', N'(WMNS) Nike Revolution 6 NN Low-Top', 2000000, 1, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (29, N'Giày Nike Air Zoom Rival Fly 3 Low-Top Purple', N'Chaybo_9.jpg', N'Nike Air Zoom Rival Fly 3 Low-Top', 2400000, 1, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (30, N'Giày Nike Air VaporMax 2023 Flyknit ‘Coconut Milk Olive’', N'Chaybo_10.jpg', N'Nike Air VaporMax 2023 Flyknit', 2100000, 1, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (31, N'Giày Air Jordan Max Aura 5 ‘Black Anthracite’', N'jordan_1.jpg', N'Air Jordan Max Aura 5', 2500000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (32, N'Giày (WMNS) Air Jordan 1 Low ‘Dark Grey’', N'jordan_2.jpg', N'Air Jordan 1 Low', 2150000, 1, 3)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (33, N'Giày Air Jordan 4 Retro GS ‘Laser’', N'jordan_3.jpg', N'Air Jordan 4 Retro GS', 2300000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (34, N'Giày SoleFly x Air Jordan 13 Retro ‘Id Rather Be Fishing’', N'jordan_4.jpg', N'SoleFly x Air Jordan 13 Retro', 2000000, 1, 3)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (35, N'Giày Air Jordan 4 Retro GS ‘Tattoo’', N'jordan_5.jpg', N'Air Jordan 4 Retro GS', 2000000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (36, N'Giày Air Jordan 4 Retro MCS ‘Varsity Royal’', N'jordan_6.jpg', N'Air Jordan 4 Retro MCS', 2500000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (37, N'Giày Air Jordan 1 Mid Patent ‘Black Gold’', N'jordan_7.jpg', N'Air Jordan 1 Mid Patent', 2600000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (38, N'Giày Air Jordan 3 Retro GS ‘Red Stardust’', N'jordan_8.jpg', N'Air Jordan 3 Retro GS', 2500000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (39, N'Giày Air Jordan 3 Retro BG ‘Triple White’', N'jordan_9.jpg', N'Air Jordan 3 Retro BG', 2700000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (40, N'Giày Atmos x Air Jordan 3 Retro ‘Safari’', N'jordan_10.jpg', N'Atmos x Air Jordan 3 Retro', 2800000, 1, 2)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (41, N'Giày adidas Handball Spezial ‘Black Gum’', N'samba_1.jpg', N'Handball Spezial', 1900000, 2, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (42, N'Giày adidas Samba OG ‘Royal Blue Gum’', N'samba_2.jpg', N'Samba OG', 2000000, 2, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (43, N'Giày Samba OG ‘Shadow Olive Green’', N'samba_3.jpg', N'Samba OG', 2100000, 2, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (44, N'Giày adidas Originals x Pharrell Williams Humanrace Samba', N'samba_4.jpg', N'Originals x Pharrell Williams Humanrace', 2600000, 2, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (45, N'Giày Adidas Samba OG ‘White Halo Blue Gum’', N'samba_5.jpg', N'Samba OG', 2300000, 2, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (46, N'Giày Adidas Sambarose ‘Valentine’', N'samba_6.jpg', N'Sambarose', 2300000, 2, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (47, N'Giày Adidas Samba OG ‘White Scarlet’', N'samba_7.jpg', N'Samba OG', 2350000, 2, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (48, N'Giày Adidas Originals Samba OG ‘Collegiate Green’', N'samba_8.jpg', N'Originals Samba OG', 2500000, 2, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (49, N'Giày adidas Samba Vegan Shoes ‘Black’', N'samba_9.jpg', N'Samba Vegan Shoes', 2500000, 2, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (50, N'Giày adidas Samba Classic ‘White’', N'samba_10.jpg', N'Samba Classic', 2400000, 2, 5)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (51, N'Giày adidas originals Stan Smith ‘White Black’', N'stansmith_1.jpg', N'Originals Stan Smith', 2500000, 2, 1)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (52, N'Giày adidas Stan Smith ‘White Gold Metallic’', N'stansmith_2.jpg', N'Stan Smith', 2400000, 2, 1)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (53, N'Giày adidas Originals Stan Smith PF W White Black', N'stansmith_3.jpg', N'Originals Stan Smith PF', 2350000, 2, 1)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (54, N'Giày adidas Originals Stan Smith CS Shoes ‘Grey’', N'stansmith_4.jpg', N'Originals Stan Smith CS Shoes', 2490000, 2, 1)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (55, N'Giày Adidas Stan Smith CS ‘Black’', N'stansmith_5.jpg', N'Stan Smith CS', 2000000, 2, 1)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (56, N'Giày Adidas Stan Smith Bonega 2B ‘Cloud White’', N'stansmith_6.jpg', N'Stan Smith Bonega 2B', 2400000, 2, 1)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (57, N'Giày adidas Originals Stan Smith Shoes ‘White Blue’', N'stansmith_7.jpg', N'Originals Stan Smith Shoes', 2460000, 2, 1)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (58, N'Giày Adidas Originals Stan Smith ‘White Blue’', N'stansmith_8.jpg', N'Originals Stan Smith', 2600000, 2, 1)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (59, N'Giày Adidas Originals Stan Smith CS ‘Collegiate Green’', N'stansmith_9.jpg', N'Originals Stan Smith CS', 2700000, 2, 1)
INSERT [dbo].[product] ([product_id], [product_description], [product_images], [product_name], [product_price], [brand_id], [category_id]) VALUES (60, N'Giày adidas Originals Stan Smith ‘Recon’', N'stansmith_10.jpg', N'Originals Stan Smith', 2100000, 2, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[product_detail] ON 

INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (3, 10, 10, 2, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (4, 10, 10, 2, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (5, 10, 6, 3, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (6, 12, 6, 3, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (7, 10, 6, 4, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (9, 10, 6, 4, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (10, 11, 6, 5, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (11, 11, 6, 5, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (12, 10, 6, 6, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (13, 10, 6, 6, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (14, 6, 3, 7, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (15, 8, 3, 7, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (16, 10, 5, 8, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (17, 10, 5, 8, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (18, 10, 5, 8, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (19, 10, 6, 9, 3)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (20, 10, 6, 9, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (21, 10, 6, 9, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (22, 10, 4, 10, 3)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (23, 12, 4, 10, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (24, 10, 11, 11, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (25, 10, 11, 11, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (26, 5, 8, 12, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (27, 10, 8, 12, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (28, 12, 6, 13, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (29, 11, 6, 13, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (30, 11, 5, 14, 3)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (31, 11, 5, 14, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (32, 10, 12, 15, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (33, 15, 12, 15, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (34, 10, 6, 16, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (35, 10, 6, 16, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (36, 10, 7, 17, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (37, 10, 7, 17, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (38, 14, 5, 18, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (39, 17, 5, 18, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (40, 20, 3, 19, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (41, 20, 3, 19, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (42, 10, 4, 20, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (43, 10, 4, 20, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (44, 10, 6, 20, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (45, 10, 6, 20, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (46, 12, 7, 21, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (47, 12, 7, 21, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (48, 20, 7, 21, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (49, 21, 7, 22, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (50, 12, 7, 22, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (51, 22, 10, 23, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (52, 19, 10, 23, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (53, 10, 6, 24, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (54, 10, 6, 24, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (55, 22, 10, 25, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (56, 12, 10, 25, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (57, 10, 10, 26, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (58, 12, 10, 26, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (59, 11, 4, 27, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (60, 22, 4, 27, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (61, 10, 7, 28, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (62, 11, 7, 28, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (63, 21, 12, 29, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (64, 23, 12, 29, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (65, 22, 8, 30, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (66, 22, 8, 30, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (67, 10, 4, 31, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (68, 10, 4, 31, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (69, 12, 5, 32, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (70, 12, 5, 32, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (71, 21, 4, 33, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (72, 11, 4, 33, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (73, 22, 11, 34, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (74, 22, 11, 34, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (75, 8, 4, 35, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (76, 8, 4, 35, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (77, 12, 10, 36, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (78, 11, 10, 36, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (79, 12, 8, 37, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (80, 11, 8, 37, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (81, 11, 7, 38, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (82, 22, 7, 38, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (83, 10, 6, 39, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (84, 11, 6, 39, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (85, 22, 6, 39, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (86, 10, 4, 40, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (87, 20, 4, 41, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (88, 20, 4, 41, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (89, 20, 4, 41, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (90, 10, 10, 42, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (91, 10, 10, 42, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (92, 10, 10, 42, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (93, 11, 8, 43, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (94, 11, 8, 43, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (95, 22, 7, 44, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (96, 21, 7, 44, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (97, 20, 11, 45, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (98, 20, 11, 45, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (99, 19, 6, 46, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (100, 16, 6, 46, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (101, 10, 6, 47, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (102, 22, 6, 47, 6)
GO
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (103, 19, 3, 48, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (104, 22, 3, 48, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (105, 17, 4, 49, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (106, 11, 4, 49, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (107, 12, 6, 50, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (108, 8, 6, 51, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (109, 8, 6, 51, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (110, 18, 6, 52, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (111, 22, 6, 52, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (112, 29, 6, 53, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (113, 11, 5, 54, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (114, 22, 5, 54, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (115, 10, 4, 55, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (116, 24, 4, 55, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (117, 21, 6, 56, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (118, 22, 6, 56, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (119, 22, 6, 57, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (120, 21, 6, 58, 4)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (121, 11, 6, 58, 6)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (122, 22, 3, 59, 5)
INSERT [dbo].[product_detail] ([product_detail_id], [quantity], [color_id], [product_id], [size_id]) VALUES (124, 10, 11, 60, 5)
SET IDENTITY_INSERT [dbo].[product_detail] OFF
GO
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (N'STAF', N'Staffs')
GO
SET IDENTITY_INSERT [dbo].[size] ON 

INSERT [dbo].[size] ([size_id], [size_name]) VALUES (1, N'35')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (2, N'36')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (3, N'37')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (4, N'38')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (5, N'39')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (6, N'40')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (7, N'41')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (9, N'42')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (10, N'43')
SET IDENTITY_INSERT [dbo].[size] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKhtk0tjw6uf67w0vkhy5n3j1oq]    Script Date: 4/12/2024 2:14:39 PM ******/
ALTER TABLE [dbo].[authorities] ADD  CONSTRAINT [UKhtk0tjw6uf67w0vkhy5n3j1oq] UNIQUE NONCLUSTERED 
(
	[user_name] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[authorities]  WITH CHECK ADD  CONSTRAINT [FK7kj74d912rytfp5su91jfv0tg] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([role_id])
GO
ALTER TABLE [dbo].[authorities] CHECK CONSTRAINT [FK7kj74d912rytfp5su91jfv0tg]
GO
ALTER TABLE [dbo].[authorities]  WITH CHECK ADD  CONSTRAINT [FK9w3wowbf6qhtt4hwxqlivgy7n] FOREIGN KEY([user_name])
REFERENCES [dbo].[accounts] ([user_name])
GO
ALTER TABLE [dbo].[authorities] CHECK CONSTRAINT [FK9w3wowbf6qhtt4hwxqlivgy7n]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FKoibg89ashlxhgem0chp0miowy] FOREIGN KEY([user_name])
REFERENCES [dbo].[accounts] ([user_name])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FKoibg89ashlxhgem0chp0miowy]
GO
ALTER TABLE [dbo].[cart_detail]  WITH CHECK ADD  CONSTRAINT [FK3c8gudcdnngwh5k2g2n25kkqk] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[product_detail] ([product_detail_id])
GO
ALTER TABLE [dbo].[cart_detail] CHECK CONSTRAINT [FK3c8gudcdnngwh5k2g2n25kkqk]
GO
ALTER TABLE [dbo].[cart_detail]  WITH CHECK ADD  CONSTRAINT [FKrg4yopd2252nwj8bfcgq5f4jp] FOREIGN KEY([cart_id])
REFERENCES [dbo].[cart] ([cart_id])
GO
ALTER TABLE [dbo].[cart_detail] CHECK CONSTRAINT [FKrg4yopd2252nwj8bfcgq5f4jp]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK4onmghajt9jh9quh6ed3lipdn] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[product_detail] ([product_detail_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK4onmghajt9jh9quh6ed3lipdn]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKrws2q0si6oyd6il8gqe2aennc] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKrws2q0si6oyd6il8gqe2aennc]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKpnxq8agsk6iiij13h02nw9lhl] FOREIGN KEY([user_name])
REFERENCES [dbo].[accounts] ([user_name])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKpnxq8agsk6iiij13h02nw9lhl]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK1mtsbur82frn64de7balymq9s] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK1mtsbur82frn64de7balymq9s]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FKs6cydsualtsrprvlf2bb3lcam] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([brand_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKs6cydsualtsrprvlf2bb3lcam]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK99vj2np1gk1robp8n6htiweii] FOREIGN KEY([color_id])
REFERENCES [dbo].[color] ([color_id])
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK99vj2np1gk1robp8n6htiweii]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FKcum8u2vfvebmmc4xo8de3k35s] FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([size_id])
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FKcum8u2vfvebmmc4xo8de3k35s]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FKilxoi77ctyin6jn9robktb16c] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FKilxoi77ctyin6jn9robktb16c]
GO
