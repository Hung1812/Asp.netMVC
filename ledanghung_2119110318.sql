USE [WebsiteBanhangOnline]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 02/05/2022 7:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Avatar] [varchar](255) NULL,
	[Slug] [varchar](100) NULL,
	[ShortDetail] [nvarchar](500) NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreateOnUtc] [datetime] NULL,
	[UpdateOnUtc] [datetime] NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 02/05/2022 7:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Avatar] [varchar](255) NULL,
	[Slug] [varchar](100) NULL,
	[ShortDetail] [nvarchar](500) NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreateOnUtc] [datetime] NULL,
	[UpdateOnUtc] [datetime] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 02/05/2022 7:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[UserId] [int] NULL,
	[Status] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 02/05/2022 7:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 02/05/2022 7:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Avatar] [varchar](255) NULL,
	[CategoryId] [int] NULL,
	[BrandId] [int] NULL,
	[ShortDes] [nvarchar](1000) NULL,
	[FullDescription] [nvarchar](1000) NULL,
	[Price] [float] NULL,
	[PriceDiscount] [float] NULL,
	[TypeId] [int] NULL,
	[Slug] [varchar](100) NULL,
	[Deleted] [bit] NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreateOnUtc] [datetime] NULL,
	[UpdateOnUtc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 02/05/2022 7:24:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Passwords] [varchar](255) NOT NULL,
	[IsAdmin] [bit] NULL,
	[Phone] [varchar](10) NULL,
	[Gender] [varchar](10) NULL,
	[Address] [nvarchar](500) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShortDetail], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted]) VALUES (1, N'HONDA', N'honda.png', N'hon-da', N'Honda là một sự lựa chọn dễ dàng nhất cho người mới bắt đầu chơi xe môtô bởi Honda là nhà sản xuất mô tô đi tiên phong trong dòng giá rẻ, tầm trung và cao cấp nên phù hợp với mọi đối tượng khách hàng.', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShortDetail], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted]) VALUES (2, N'YAMAHA', N'yamaha.png', N'ya-ma-ha', N'Cùng là hãng xe của Nhật Bản nhưng môtô Yamaha mang một bản sắc khác so với các hãng xe còn lại, luôn đi đầu trong thiết kế kiểu dáng, màu sắc đẹp đa dạng.', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShortDetail], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted]) VALUES (3, N'SUZUKI', N'suzuki.png', N'su-zu-ki', N'Sỡ hữu chiếc “Su xì po” một trong những “ngựa hoang” đình đám một thời, niềm mơ ước, khát khao của một số anh em đam mê tốc độ thời đó đến mức mà dù chỉ một lần được chạm vào là đủ mãn nguyện vì chiếc xe này hoàn toàn không phải là Môtô Suzuki giá rẻ thời điểm hơn 10 năm trước. Có thể nói môtô Suzuki giá rẻ mặc dù không phát triển vượt bậc ở thị trường Việt nhưng vẫn mang một tầm ảnh hưởng sâu sắc đối với “nền văn hóa” tốc độ nước ta.', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShortDetail], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted]) VALUES (4, N'KAWASAKI', N'kawasaki.png', N'ka-wa-sa-ki', N'Môtô Kawasaki giá rẻ chính là một trong những tượng đài lớn trong giới chơi xe mà rất ít những cái tên có thể so sánh được với cái tên đang trống trị thị trường nakedbike hiện nay đó chính là chiếc Z1000 thần thánh với thành công trong 12 năm phát triển và đồng thời ra mắt một loạt mẫu môtô giá rẻ trong thời gian gần đây gây lũng đoạn thị trường.', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShortDetail], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted]) VALUES (5, N'DUCATI', N'ducati.png', N'du-ca-ti', N'Ducati - Có thể nói từ suốt 20 năm kể từ khi thành lập đến nay, trong lịch sử những chiếc xe của hãng này chưa bao giờ làm thất vọng khi mà đem đến những danh hiệu và thành công mà bất cứ hãng xe nào cũng phải mơ ước. Với tiêu chí công nghệ, phong cách, kiểu dáng và cấu trúc cân xứng cùng sức mạnh vượt trội những chiếc xe của Ducati đều cho người ta cảm giác sẽ không có một cảnh giới nhất định đối với những chiếc xe mà hãng này lần lượt cho ra mắt.', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [Avatar], [Slug], [ShortDetail], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [Deleted]) VALUES (6, N'BMW', N'bmw.png', N'bmw', N'BMW có vẻ là hãng xe gắn với thương hiệu xe ôtô được cả thế giới chú ý vì mức độ sang trọng, đẳng cấp, giá thành cao. Thế nhưng, khi nhìn ở góc độ của người đam mê xe moto phân khối lớn thì cái tên BMW lại trở nên rất thân thuộc khi họ cũng tham gia vào mảng PKL và sản xuất ra hàng loạt chiếc xe moto thực sự đẳng cấp.', 1, NULL, NULL, CAST(0x0000AE8100E6D153 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShortDetail], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [deleted]) VALUES (1, N'SPORT BIKE', N'sportbike.jpg', N'sport-bike', N'Là dòng xe dáng thể thao phổ biến và được yêu thích hàng đầu hiện nay.

* Sport bike chạy với tốc độ rất nhanh bởi được thiết kế khí động học.

* Khi ngồi lái trên xe, người lái thường phải ngồi tư thế dáng chúi. Kiểu ngồ giả là dễ làm người ta bị mỏi lưng, mỗi tay khi lái, nhưng một khi đã lái qua đường dài, đường vàng thi loại này rất ổn.', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShortDetail], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [deleted]) VALUES (2, N'NAKED BIKE', N'nakedbike.jpg', N'naked-bike', N'Naked bike có đặc điểm rất ấn tượng

Được thiết kế lược bỏ các phần vỏ che chắn bên ngoài, để lộ ra khối động cơ mạnh mẽ trần trại. Nó là niềm thích thủ của những chủ nhân phong cách mạnh mẽ.

Dòng xe này giúp người lái dễ điều khiển và di chuyển hơn so với sport bike, nó có thể linh hoạt trong điều kiện di chuyển ở đường phố.

Hầu hết các dòng Naked bike của hãng đều "thửa" nguyên khối động cơ của sport bike nen có một số giới hạn như mo men xoắn, mã lực.', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShortDetail], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [deleted]) VALUES (3, N'CRUISER BIKE', N'cruiserbike.jpg', N'cruiser-bike', N'Đây là moto phân khối lớn phổ biến nhất hiện nay bởi dáng hình thể thao, mạnh mẽ khi để lộ nguyên khối động cơ. Xe rất phù hợp với các tay lái mới bởi dáng ngồi lái thuận tiện, không chúi như các dòng xe sport bike, naked bike.

- Cruiser có cách phân biệt các dòng xe moto pkl khác hơn đó là dáng ngồi thẳng, tay lái cao, vị trí để chân ngay dưới yên, không có kính chắn gió, không có bộ quay động cơ.', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShortDetail], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [deleted]) VALUES (4, N'SPORT TOURING BIKE', N'sporttouringbike.jpg', N'sport-touring', N'Nổi tiếng với tầm xe dành cho đường dài, sport touring luôn là lựa chọn hàng đầu cho các dân chơi biker. Nó vừa mang đặc điểm của một xe touring lại vừa mang dáng vẻ thể thao “sport trẻ trung.

- Xe được phân biệt bằng thư thế ngồi thoải mái hơn sport bike, có bộ quay gọn gàng, đầy đủ. Spon Touring thường được lựa chọn trên các cung đường phượt dài bởi động cơ lớn, dung tính bình xăng lớn, có trang bị tiện nghi các bộ phận như tựa lưng, thủng đồ, loa giải trí...', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Category] ([Id], [Name], [Avatar], [Slug], [ShortDetail], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc], [deleted]) VALUES (5, N'OFF ROAD BIKE', N'offroadbike.jpg', N'off-road', N'Offroad là đi vào những khu vực đường mòn với địa hình hiểm trở 1 bên là đường triển ở núi, phía dưới là vực thẳm hoặc những con đường chống chính. Vì vậy đòi hỏi phương tiện phải “chất lượng” và thiết kế đúng địa hình, đồng thời người cầm lái phải thực sự có kinh nghiệm xử lý tinh huởng. Động cơ nhỏ, nhẹ hơn các loại xe thường• Các ống giảm xóc dàiBộ khung nhẹ hơn nhưng cấu trúc chắc chắn• Kích thước bánh xe lớn, lốp xe thường có gai và được khóa chặt vào vành.', 1, NULL, NULL, CAST(0x0000AE8100BC5E41 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (35, N'Đơn hàng 20220424132554', 7, 1, CAST(0x0000AE8100DD5907 AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (36, N'Đơn hàng 20220424135622', 2, 1, CAST(0x0000AE8100E5B7BD AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (37, N'Đơn hàng 20220424135839', 2, 1, CAST(0x0000AE8100E65826 AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (30, 27, 2, 3)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (31, 28, 7, 3)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (32, 29, 9, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (33, 29, 1, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (34, 31, 4, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (35, 32, 4, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (36, 33, 4, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (37, 35, 4, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (38, 36, 4, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (39, 37, 1, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (1, N'Suzuki GSX-R150', N'suzukigsxr150.jpg', 1, 3, N'Suzuki đã quay lại cuộc đua mô tô thể thao cỡ nhỏ và khẳng định vị thế của mình bằng dòng xe Suzuki GSX-R150 2018. Chiếc Sportbike mới này nhanh chóng trở thành đối thủ đáng gờm và là “ứng cử viên” sáng giá cho ngôi vị “ông hoàng đường đua” trong phân khúc mô tô 150 phân khối.', NULL, 74000000, NULL, 2, N'suzuki-gsx-r150', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (2, N'Yamaha YZF R6', N'yamahayzfr6.jpg', 1, 2, N'Nếu bạn là tín đồ của dòng xe thể thao Yamaha YZF-R6 trong suốt 20 năm qua, chắc chắn bạn đã và sẽ có cảm hứng mãnh liệt với dòng xe Yamaha YZF-R6. Phiên bản nâng cấp năm 2017 của YZF-R6 sẽ mang đến cho anh em những trải nghiệm tuyệt vời hơn với thiết kế độc đáo và những trang bị chất lượng cao.', NULL, 277000000, 274999000, 1, N'yamaha-yzf-r6', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (3, N'BMW F800R', N'bmwf800r.jpg', 2, 6, N'BMW F800R là thành viên mới nhất của đại gia đình Motorrad sử dụng động cơ xi lanh song song. Được phát triển theo tiêu chuẩn toàn diện (all-round quality) nên chiếc roadster năng động này sẵn sàng làm hàm lòng bất cứ chủ nhân nào với khả năng vận hành linh hoạt, khả năng nhanh nhẹn, thể thao.', NULL, 539000000, 519000000, 1, N'bmw-f800r', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (4, N'Yamaha R6', N'yamahar6.jpg', 1, 2, N'Một biker “chắc tay” và giàu kinh nghiệm chắc hẳn sẽ muốn chinh phục những chiếc PKL mới với động cơ mạnh mẽ, thử thách hơn. Nếu tự tin vào tay lái điêu luyện của mình, sao anh em không thủ đồng hành cùng “chiến mã” cuồng nhiệt và "hiếu chiến” - Yamaha R6.', NULL, 250000000, 210000000, 1, N'yamaha-r6', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (5, N'Kawasaki Ninja 650', N'kawasakininja650.jpg', 1, 4, N'Không chỉ những chiếc sport bike 1000 cc mới mang đến cho các biker sự mạnh mẽ, hầm hổ cùng bạn đường của mình, có những dòng Naked bike tầm trung 650 cc gọn gàng hơn, linh hoạt hơn nhưng vẫn rất ấn tượng với phong cách Sugomi của một chiến binh. Đó chính là chiến binh đường phố Kawasaki Ninja 650 2018.', NULL, 228000000, NULL, 2, N'kawasaki-ninja-650', NULL, NULL, NULL, NULL, CAST(0x0000AE80017C231D AS DateTime))
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (6, N'Honda CBR650F', N'hondacbr650f.jpg', 1, 1, N'Gần 30 năm sau khi chiếc PKL được mệnh danh là "chiếc mô tô thể thao tốt nhất - Honda CER6DDF2 - tung hoành ngang dọc trên thị trường. Honda cho ra mắt người en CER650F với khẳng định phong độ vẫn đẳng cấp như xưa. Sự xuất hiện của mẫu xe Naked Bike CBR650F có thể coi là sự trở lại của một huyền thoại trong lòng các tin đồ PKL.', NULL, 241000000, NULL, 2, N'honda-cbr-650f', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (7, N'Yamaha R1M', N'yamahar1m.jpg', 1, 2, N'Yamaha R1M là phiên bản giới hạn của siêu moto R1. Được bản tại Viiệt Nam với gia 888 triệu đồng.', NULL, 888000000, NULL, 2, N'yamaha-r1m', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (8, N'Honda CBR1000RR', N'hondacbr1000.jpg', 1, 1, N'Honda CBR1000RR SP- mẫu xe superbike trang bị những công nghệ mới nổi tiếng của Honda trên trường đua moto thế giới, sử dụng động cơ 4 xi lanh thẳng hàng dung tích 1000 phân khối. Dòng SP mạnh mẽ hơn phiên bản thường.', NULL, 700000000, NULL, 2, N'honda-cbr-1000rr', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (9, N'Suzuki GSX S1000', N'suzukigsx1000.jpg', 1, 3, N'Suzuki GSX-S1000 2016 là mẫu nakedbike mới được nhập khẩu chính hãng tại Việt Nam, Suzuki GSX-S1000 2016 được thừa hưởng từ những mẫu xe đua Moto GP GSX R1000 nên sẽ có nhiều điểm nổi trội hơn so với các đối thủ cùng tầm giá.', NULL, 415000000, 400000000, 1, N'suzuki-gsx-s1000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (10, N'BMW S1000R', N'bmws1000r.jpg', 1, 6, N'Không chỉ là phiên bảng trần truồng của BMW S1000RR, BMW S1000RR 2015 - 2016 ABS là mẫu nakedbike được thiết kế một cách trau truốt và tỉ mỉ với những tính toán cực kì chi li của nhà thiết kế người Nga Evgeny Zhukoh.', NULL, 760000000, NULL, 2, N'bmw-s1000r', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (11, N'Ducati 1299 Panigale S', N'ducati1299panigales.jpg', 1, 5, N'Ducati 1299 Panigale S là dòng sportbike cao cấp nhất của Ducati và nó có nhiệm vụ thay thế cho đàn anh 1199 Panigale, xe có 3 phiên bảng: 1299 Panigale, Ducati 1299 Panigale S, 1299 Panigale R dành cho giải đua xe World Superbike.', NULL, 1273000000, 1169000000, 1, N'ducati-1299-panigale-s', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (12, N'Suzuki GSX-S150', N'suzukigsxs150.jpg', 2, 3, N'Trở lại với thị trường mô tô 150 phân khối, SUZUKI mang đến cho người hâm mộ Việt Nam hai “chiến binh” GSX-R150 và GSX-S150. Nếu GSX-R150 là chiếc Moto thể thao khỏe khoản dũng mãnh trên đường đua thì GSX-S150 2018 lại là "chủ báo đô thị” nhanh nhẹn, linh hoạt hết sức hấp dẫn các biker.', NULL, 69400000, NULL, 2, N'suzuki-gsx-s150', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (13, N'Kawasaki Z900RS', N'kawasakiz900rs.jpg', 2, 4, N'Những chiếc Naked Bike thường được gần với phong cách hầm hố, táo bạo vì cấu tạo của xe để lộ khối động cơ mạnh mẽ. Thế nhưng, đối với Kawasaki Z900RS 2018, các tín đồ mà tỏ cổ điển sẽ vừa được trải nghiệm sức mạnh dũng mãnh của xe vừa thỏa tình yêu dành cho những người bạn đồng hành đậm chất hoài niệm.', NULL, 399000000, 379000000, 1, N'kawasaki-z900-rs', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (14, N'Honda CB650F', N'hondacb650f.jpg', 2, 1, N'Ngày nay, phần lớn các dòng xe phân khối lớn trên thị trường thường được thiết kế khá hầm hố với nhiều nét cắt, góc cạnh để phô bày sức mạnh của người bạn đồng hành của các biker. Thế nhưng, đối với những tay đua yếu thích phong cách tinh tế, tối giản, Honda CB650F đã hoàn toàn chiếm được tình cảm ngay từ cái nhìn đầu tiên. Không quá cầu kì, hoa lệ, CB650F chinh phục giới mê mô tô nhờ khối động cơ dũng mãnh và đầy nội lực.', NULL, 241000000, NULL, 2, N'honda-cb650f', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (15, N'Kawasaki Z1000R', N'kawasakiz1000r.jpg', 2, 4, N'Nếu đã mê mẩn chiếc Naked bike Kawasaki Z1000 phiên bản 2018 với những đường nét cơ bắp, góc cạnh của thân và bình xăng, bạn sẽ còn bị cuốn hút hơn khi ngầm nhìn phiên bản đặc biệt của dòng xe này với tên gọi Kawasaki Z1000R Edition 2018. Không chỉ mới mẻ, hấp dẫn ở sắc mẫu, phiên bản đặc biệt này còn xứng đáng với sự quan tâm của giới mê xe phân khối lớn bởi những điểm nhấn tương phản mà ấn tượng.', NULL, 439000000, NULL, 2, N'kawasaki-z1000r', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (16, N'Kawasaki Vulcan S Cofe', N'kawasakivulcanscafe.jpg', 3, 4, N'Dòng mô tô Cafe với thiết kế tối giản, retro, mềm mại nhưng vẫn rất đậm nét thể thao đã khiến bao anh em mê phong cách xe cổ điển phải thèm muốn sở hữu từ khi loại xe này xuất hiện vào những năm 60 của thế kỉ XX ở Anh. Hướng đến dòng xe này, Kawasaki đã cho ra mắt mẫu xe Vulcan S Cafe 2018, hứa hẹn sẽ thỏa lòng đam mê của các tín đồ Cafe Racer.', NULL, 249000000, NULL, 2, N'kawasaki-vulcan-s-cofe', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (17, N'Honda Rebel 500', N'hondarebel500.jpg', 3, 1, N'Đến Việt Nam vào cuối năm 2017, mẫu xe Honda Rebel 500 với phong cách bobber pha chút cổ điển đã mang đến cho các tay lái cruiser thêm một sự lựa chọn trong phân khúc phổ thông. Được nâng cấp từ dòng xe Honda Rebel 250 từng chinh phục bao anh em, Honda Rebel 500 có động cơ mạnh mẽ, dung tích lớn với đầy đủ công nghệ cần thiết của một chiếc xe phân khối lớn.', NULL, 325000000, NULL, 2, N'honda-rebel-500', NULL, NULL, NULL, NULL, CAST(0x0000AE810004599C AS DateTime))
INSERT [dbo].[Product] ([Id], [Name], [Avatar], [CategoryId], [BrandId], [ShortDes], [FullDescription], [Price], [PriceDiscount], [TypeId], [Slug], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreateOnUtc], [UpdateOnUtc]) VALUES (22, N'Test1', N'background_20220424015946.jpg', 1, 1, N'Mô tả ngắnfbwefwehjfbejhhffuwehrjkcnalskdjwkf ccejkkhrjdaskjdnkqwehukdhwjkdnqkehq', NULL, 5000, NULL, 1, N'test', NULL, NULL, NULL, CAST(0x0000AE8100E6A68A AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Passwords], [IsAdmin], [Phone], [Gender], [Address]) VALUES (2, N'LeDang', N'Hung', N'hungjakale@gmail.com', N'202cb962ac59075b964b07152d234b70', 1, N'0377877424', N'Nam', N'1000 Nguyễn Duy Trinh,P.Phú Hữu ,Q.9')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Passwords], [IsAdmin], [Phone], [Gender], [Address]) VALUES (3, N'le', N'uhng', N'hungjakale01@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, N'0377877424', N'Nam', N'1000 Nguyễn Duy Trinh,P.Phú Hữu ,Q.9')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Passwords], [IsAdmin], [Phone], [Gender], [Address]) VALUES (4, N'Le', N'Tika', N'hungjakale02@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, N'0377877424', N'Nam', N'1000 Nguyễn Duy Trinh,P.Phú Hữu ,Q.9')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Passwords], [IsAdmin], [Phone], [Gender], [Address]) VALUES (6, N'Le Dang ', N'Tika', N'hungjakale03@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, N'0377877424', N'Nam', N'1000 Nguyễn Duy Trinh,P.Phú Hữu ,Q.9')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Passwords], [IsAdmin], [Phone], [Gender], [Address]) VALUES (7, N'Le', N'Chu', N'hungjakale04@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, N'0377877424', N'N?', N'1000 Nguyễn Duy Trinh,P.Phú Hữu ,Q.9')
SET IDENTITY_INSERT [dbo].[User] OFF
