
CREATE DATABASE N7Shoes
GO
USE [N7Shoes]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](20) NOT NULL,
	[Lastname] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [varchar](13) NOT NULL,
	[Provincial] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[User_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](50) NULL,
	[StartDay] [date] NULL,
	[User_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufactures]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufactures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
	[Information] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Address_Id] [int] NOT NULL,
	[Color_Id] [int] NULL,
	[Size_Id] [int] NULL,
	[Quality] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Method] [bit] NOT NULL,
	[Name] [varchar](6) NULL,
	[Status] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Cate]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Cate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Cate_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Color]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Product_Id] [int] NOT NULL,
	[Color_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Size]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Size_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
	[Price] [int] NOT NULL,
	[Origin] [nvarchar](100) NOT NULL,
	[Material] [nvarchar](100) NOT NULL,
	[Status] [bit] NULL,
	[Describe] [nvarchar](max) NOT NULL,
	[Review] [nvarchar](max) NULL,
	[Manu_Id] [int] NOT NULL,
	[Views] [int] NULL,
	[ManuDay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](36) NOT NULL,
	[Password] [varchar](125) NOT NULL,
	[Fullname] [nvarchar](125) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [Firstname], [Lastname], [Email], [Phone], [Provincial], [Address], [User_Id]) VALUES (1, N'Phạm', N'Minh Luân', N'luanphamminh77@gmail.com', N'0862346467', N'Hồ Chí Minh', N'221 Phạm Văn Chiêu, Phường 8, Quận Gò Vấp, Tp.HCM', 9)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (1, N'Giày Nike', N'nike.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (2, N'Giày Adidas', N'adidas.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (4, N'Giày Lacoste', N'lacoste.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (5, N'Giày Puma', N'puma.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (6, N'Giày Balance', N'balance.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (7, N'Giày Asics', N'asics.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (8, N'Giày Thể Thao', N'thethao.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (9, N'Giày Action', N'action.jpg')
select * from Categories
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name]) VALUES (1, N'Đỏ')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (2, N'Xanh')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (4, N'Hồng')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (5, N'Tím')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (6, N'Trắng')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (7, N'Xanh đen')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (8, N'Xanh Than')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (10, N'Vàng Be')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (11, N'Đen')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (15, N'kem')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (16, N'Nâu')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (17, N'Xanh Lá')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (18, N'Vàng Đậm')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (19, N'Bạc')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (1, N'ƯD phần mềm', CAST(N'2022-06-02' AS Date), 9)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (2, N'ƯD phần mềm', CAST(N'2022-06-02' AS Date), 12)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (4, N'ƯD phần mềm', CAST(N'2022-06-02' AS Date), 15)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (5, N'ƯD phần mềm', CAST(N'2022-06-02' AS Date), 18)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (6, N'ƯD phần mềm', CAST(N'2022-06-02' AS Date), 20)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (2, 9, 3, CAST(N'2022-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (1, 9, 4, CAST(N'2022-06-16' AS Date))

SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufactures] ON 

INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (1, N'Nike', N'nikem.jpg', N'Nike là nhà cung cấp đồ thể thao hàng đầu trên thế giới. Thương hiệu với lịch sử hơn nửa thể kỷ này nổi tiếng với những mẫu giày thể thao cao cấp và ấn tượng. Từ lâu, Nike đã trở thành cái tên quen thuộc và là sự lựa chọn số một của các vận động viên bởi độ bền và sự thoải mái của nó.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (2, N'Adidas', N'adidasm.jpg', N'Nike là nhà cung cấp đồ thể thao hàng đầu trên thế giới. Thương hiệu với lịch sử hơn nửa thể kỷ này nổi tiếng với những mẫu giày thể thao cao cấp và ấn tượng. Từ lâu, Nike đã trở thành cái tên quen thuộc và là sự lựa chọn số một của các vận động viên bởi độ bền và sự thoải mái của nó.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (3, N'Lacoste', N'lacostem.jpg', N'Boston, 1923. Thần đồng quần vợt trẻ René Lacoste năm nay 19 tuổi và thích thử thách. Đội trưởng của anh ta hứa với anh ta sẽ tặng anh chiếc vali da cá sấu mà anh ta ngưỡng mộ trong cửa sổ cửa hàng nếu anh ta giành chiến thắng trong trận đấu sắp tới. René không giành chiến thắng nhưng anh ta có quyết tâm của con cá sấu trên sân, đó là lý do tại sao một nhà báo Mỹ đặt cho anh ta biệt danh này.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (4, N'Puma', N'pumam.jpg', N'Tuy không nổi đình nổi đám như Balenciaga nhưng Puma vẫn âm thầm tạo nên những tác phẩm mang nét riêng của mình mà vẫn tiếp cận được xu hướng đương thời. Ví dụ điển hình là việc nắm bắt xu thế chunky sneaker, Puma đã sáng tạo cho riêng họ một mẫu Dad sneaker không giống với bất kỳ đôi giày nào đang có trên thị trường.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (5, N'Balance', N'balance.jpg', N'Có thể không nổi tiếng như Nike, không thời thượng, hào nhoáng như Balenciaga nhưng thương hiệu đến từ Boston vẫn có được chỗ đứng nhất định trên thị trường bởi thiết kế vô cùng đơn giản nhưng luôn mang đến cảm giác êm ái và thoải mái cho người đi.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (6, N'Asi	cs', N'asicsm.jpg', N'Mặc dù thương hiệu giày này đã khá nổi tiếng tại thị trường Mỹ, Âu và hầu hết các nước châu Á ngoại trừ Myanmar, Lào và Campuchia, nhưng với người tiêu dùng Việt Nam, Asics vẫn là cái tên còn khá mới mẻ.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (7, N'Thể Thao', N'thethaom.jpg', N'Bên cạnh những thương hiệu giày ngoại nhập đình đám như Nike, Adidas… Những thương hiệu giày Việt Nam cũng dần chuyển mình, tạo nên những bước tiến rõ nét ở thị trường trong nước và quốc tế. Danh sách sau sẽ tổng hợp đến bạn những thương hiệu đình đám nổi bật trong ngành hàng này.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (8, N'Action', N'actionm.jpg', N'Giày Action Calanda có thiết kế thời trang cổ điển nhưng rất sang trọng. Với chất liệu da thật cao cấp nhất giúp cho đôi giày bền đẹp với thời gian. Action Calanda chắc chắn là mẫu giày phải có trong tủ giày của bạn.')
SET IDENTITY_INSERT [dbo].[Manufactures] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (23, 4, 2, NULL, NULL, 1, CAST(N'2022-06-16' AS Date), 1, N'130961', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (24, 6, 2, NULL, NULL, 1, CAST(N'2022-06-16' AS Date), 1, N'130961', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (26, 3, 3, NULL, NULL, 3, CAST(N'2022-06-16' AS Date), 0, N'938025', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (27, 7, 3, NULL, NULL, 2, CAST(N'2022-06-16' AS Date), 0, N'938025', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (28, 8, 3, NULL, NULL, 1, CAST(N'2022-06-16' AS Date), 0, N'938025', 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Cate] ON 

INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (2, 1, 1)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (4,2, 1)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (5, 3, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (6, 4, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (7, 5, 4)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (8, 6, 4)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (9, 7, 5)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (10, 8, 5)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (11, 9, 6)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (12, 10, 6)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (13, 11, 7)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (14, 12, 7)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (15, 13, 8)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (16, 14, 8)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (17, 15, 9)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (18, 16, 9)
SET IDENTITY_INSERT [dbo].[Product_Cate] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Color] ON 

INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (2, N'n1.jpg', 1, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (3, N'n2.jpg', 2, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (5, N'a1.jpg', 3, 11)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (6, N'a2.jpg', 4, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (8, N'l1.jpg', 5, 11)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (12, N'l2.jpg', 6, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (15, N'p1.jpg', 7, 11)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (16, N'p1.jpg', 8, 7)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (17, N'b1.jpg', 9, 10)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (18, N'b2.jpg', 10, 7)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (19, N'as1.jpg', 11, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (20, N'as2.jpg', 12, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (21, N'tt1.jpg', 13, 8)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (22, N'tt2.jpg', 14, 7)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (23, N'ac1.jpg', 15, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (24, N'ac2.jpg', 16, 6)
SET IDENTITY_INSERT [dbo].[Product_Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Size] ON 

INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (4, 1, 1)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (41, 2, 2)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (42, 3, 3)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (43, 4, 4)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (44, 5, 5)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (45, 6, 6)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (46, 7, 7)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (47, 8, 1)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (48, 9, 2)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (49, 10, 3)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (50, 11, 3)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (51, 12, 4)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (52, 13, 5)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (53, 14, 6)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (54, 15, 7)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (55, 16, 1)

SET IDENTITY_INSERT [dbo].[Product_Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (1, N'GIÀY NIKE AIR MAX EXCEE NỮ', N'prdnike1.jpg', 2400000, N'Việt Nam', N'Da', 1, N'Giày Nike Air Max Excee mẫu giày thời trang năng động, trẻ trung Air Max Excee đã cập bến tại Myshoes.vn. Đây hứa hẹn sẽ là một mẫu giày chất chơi mà bạn không thể bỏ qua.', N'', 1, 0, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (2, N'GIÀY NIKE COURT ROYALE 2 NN NỮ', N'prdnike2.jpg', 1690000, N'Việt Nam', N'Da', 1, N'Giày Nike Court Royale 2 NN là mẫu giày với thiết kế lấy cảm hứng từ thập niên 70 với những nét cổ điển mang phong cách đường phố đặc trưng. Ngoài ra, Nike Court Royale 2 NN làm từ vật liệu thân thiện với môi trường.', N'', 1, 0, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (3, N'GIÀY ADIDAS QUESTAR NAM', N'prdadidas1.jpg', 2200000, N'Việt Nam', N'Vải', 1, N'Giày adidas Questar là mẫu giày thể thao có thiết kế rất thời trang, form giày ôm vừa vặn , chắc chắn giúp bàn chân thật sử thoải mái. Bộ đêm siêu nhẹ giúp bạn di chuyển linh hoạt và không mệt mỏi dù đi cả ngày dài.', N'', 2, 0, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (4, N'GIÀY ADIDAS ADVANTAGE BASE NAM NỮ', N'prdadidas2.jpg', 1390000, N'Việt Nam', N'Da', 1, N'Giày adidas Advantage Base được thừa hưởng lối thiết kế của đàn anh Giày adidas VS Advantage CL song vẫn có thêm nhiều điểm mới cải thiện.Với thiết kế đơn giản nhưng lại vô cùng thanh lịch.', N'', 2, 0, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (5, N'GIÀY LACOSTE BAYLISS 119 NAM', N'prdlct1.jpg', 2590000, N'Việt Nam', N'Vải', 1, N'Giày Lacoste Bayliss 119 được thiết kế với phong cách cổ điển sang trọng đặc trưng của thương hiệu Lacoste. Giày Lacoste Bayliss 119 được làm từ da cao cấp, mềm và có độ bền cao, không nhăn không thấm nước.', N'', 3, 0, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (6, N'GIÀY LACOSTE CARNABY EVO 722 NAM', N'prdlct2.jpg', 2690000, N'Việt Nam', N'Da', 1, N'Giày Lacoste Carnaby Evo 722 vẫn là thiết kể cổ điển của dòng Carnaby Evo sử dụng chất liệu da cao cấp mềm. Tỉ mỉ trong từng chi tiết cũng là đặc điểm nổi bật của dòng giày Lacoste.', N'', 3, 0, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (7, N'GIÀY PUMA RBD GAME LOW NAM', N'prdpuma1.jpg', 1950000, N'Việt Nam', N'Da', 1, N'Giày Puma RBD Game Low có thết kế thời trang cổ điển đặc trưng của Puma, một mẫu giày không bao giờ lỗi mốt, trường tồn với thời gian. Chất liệu da cao cấp và đế cao su bền bỉ khiến ban không thể bỏ qua được.', N'', 4, 0, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (8, N'GIÀY PUMA SOFTRIDE ENZO NXT NAM', N'prdpuma2.jpg', 295000, N'Việt Nam', N'Polo', 1, N'Giày Puma Softride Enzo NXT là sự kết hợp hoàn hảo giữa công nghệ và thời trang để tạo ra một mẫu giày có chất lượng cao nhất, thời thượng và nổi bật.', N'', 4, 0, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (9, N'GIÀY NEW BALANCE 373 NAM', N'prdblc1.jpg', 1890000, N'Việt Nam', N'Da', 1, N'Giày New Balance 373 là mẫu giày thời trang được thiết kế với phong cách cổ điển đặc trưng của thương hiệu trứ danh đến từ Mỹ. Đây là một dòng sản phẩm không bao giờ lỗi mốt và luôn được các tín đồ thời trang săn đón.', N'', 5, 0, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (10, N'GIÀY NEW BALANCE VIAZA NAM', N'prdblc2.jpg', 1190000, N'Việt Nam', N'Da', 1, N'Giày New Balance Viaza mẫu giày thể thao được thiết kế rất đẹp, với công nghệ đế FRESH FOAM độc quyền của New Balance giúp cho đôi giày trở lên cực kỳ êm và nhẹ nhàng khi di chuyển.', 5, 0, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (11, N'GIÀY ASICS CLASSIC CT NAM', N'prdasics1.jpg', 1190000, N'Việt Nam', N'Da', 1, N'Giày Asics Classic CT được người yêu giày trên toàn thế giới nhắc đến như là một mẫu sneaker kinh điển mà bạn không thể bỏ qua. Asics Classic CT có thiết kế cổ điển với những đường nét tinh tế, chất liệu cao cấp và cực kỳ bền bỉ với thời gian.', N'', 6, 0, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (12, N'GIÀY ASICS CLASSIC CT2 NAM', N'prdasics2.jpg', 3900000, N'Việt Nam', N'Da', 1, N'Giày Asics Classic CT được người yêu giày trên toàn thế giới nhắc đến như là một mẫu sneaker kinh điển mà bạn không thể bỏ qua. Asics Classic CT có thiết kế cổ điển với những đường nét tinh tế, chất liệu cao cấp và cực kỳ bền bỉ với thời gian.', N'', 6, 0, CAST(N'2022-06-10' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (13, N'GIÀY THỂ THAO NIKE CITY REP TR NAM', N'prdthethao1.jpg', 2400000, N'Việt Nam', N'Vải', 1, N'Phần đế giày với công nghệ Flex cực kỳ êm và nhẹ giúp cho các vận động linh hoạt và nhẹ nhàng hơn rất nhiều. Phần upper với sợi dệt vô cùng thoáng khí và cấu trúc dây buộc chắc chắn cố định giúp giảm tối đa các chấn thương trong quá trình luyện tập.', N'', 7, 0, CAST(N'2022-06-11' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (14, N'GIÀY THỂ THAO NIKE AIR ZOOM PEGASUS 39 NAM', N'prdthethao1.jpg', 1490000, N'Việt Nam', N'Da', 1, N'Giày Nike Air Zoom Pegasus 39 là mẫu giày thể thao phiên bản thứ 39 của dòng giày huyền thoại Nike Pegasus nổi tiếng. Với những cải tiến vượt trội đặc biệt với việc gấp 2 lần lớp đệm Air Zoom so với phiên bản trước, Nike Air Zoom Pegasus 39 xứng đáng là siêu phẩm được săn đón nhất năm 2022.', N'', 7, 0, CAST(N'2022-06-10' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (15, N'GIÀY ACTION CALANDA NAM DA THẬT', N'prdac1.jpg', 1990000, N'Việt Nam', N'Da', 1, N'Giày Action Calanda có thiết kế thời trang cổ điển nhưng rất sang trọng. Với chất liệu da thật cao cấp nhất giúp cho đôi giày bền đẹp với thời gian. Action Calanda chắc chắn là mẫu giày phải có trong tủ giày của bạn.', N'', 8, 0, CAST(N'2022-06-10' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (16, N'GIÀY ACTION ELEGANT NAM', N'prdac2.jpg', 1490000, N'Việt Nam', N'Da', 1, N'Giày Action Elegant là một giày có thiết kế thời trang, trẻ trung, năng động cực kỳ đẹp mắt. Với chất liệu da cao cấp giúp cho đôi giày bền đẹp với thời gian. Đây chắc chắn là mẫu giày cực hot trong năm nay.', N'', 8, 0, CAST(N'2022-06-10' AS Date))
SET IDENTITY_INSERT [dbo].[Products] OFF
select * from Products
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'ROLE_ADMIN')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'ROLE_USER')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (1, N'36')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (2, N'37')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (3, N'38')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (4, N'39')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (5, N'40')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (6, N'41')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (7, N'42')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Role] ON 

INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (3, 11, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (4, 12, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (5, 9, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (8, 14, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (9, 15, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (10, 16, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (11, 17, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (12, 18, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (13, 19, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (14, 20, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (15, 21, 2)
SET IDENTITY_INSERT [dbo].[User_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (9, N'luan111@gmail.com', N'$2a$10$VChUwTT4/.4CBlb6hpoBGer4wRSTBuzhQ1YpSzcsYxwZMLF9QC6QO', N'Phạm Luân')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (11, N'ngann2540@fpt.edu.vn', N'$2a$10$/pSOMXPoZysoe42dJSfXZ.DLY93Hj0mno4FVsfEKPNVphHdONqAKW', N'Nguyễn Ngân')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D1053434A09B0F]    Script Date: 6/16/2021 6:36:18 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [Position]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [StartDay]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [Color_Id]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [Size_Id]
GO
ALTER TABLE [dbo].[Product_Color] ADD  DEFAULT (NULL) FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [Review]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Views]  DEFAULT ((0)) FOR [Views]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Color_Id])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Size_Id])
REFERENCES [dbo].[Sizes] ([Id])
GO
ALTER TABLE [dbo].[Product_Cate]  WITH CHECK ADD FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Cate]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Color]  WITH CHECK ADD FOREIGN KEY([Color_Id])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Color]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Product_Size]  WITH CHECK ADD FOREIGN KEY([Size_Id])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Manu_Id])
REFERENCES [dbo].[Manufactures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO

select * from Users
