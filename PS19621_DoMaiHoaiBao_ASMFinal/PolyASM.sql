USE [PolyASM]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VideoId] [char](11) NULL,
	[UserId] [nvarchar](20) NULL,
	[LikeDate] [date] NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](20) NULL,
	[VideoId] [char](11) NULL,
	[Email] [nvarchar](50) NULL,
	[ShareDate] [date] NULL,
 CONSTRAINT [PK_Share] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Admin] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[Id] [char](11) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Poster] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[Views] [int] NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (6, N'HZi4eJXWZU0', N'HungNL', CAST(N'2022-03-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (7, N'yF1rUhDRzG0', N'HungNL', CAST(N'2022-03-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (8, N'RaoBKCKIDAI', N'DuBQ', CAST(N'2022-03-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (9, N'wiuhbH2Yap0', N'KhoaTA', CAST(N'2022-03-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (10, N'InlnBTL4qeQ', N'BinhHT', CAST(N'2022-03-16' AS Date))
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[Share] ON 

INSERT [dbo].[Share] ([Id], [UserId], [VideoId], [Email], [ShareDate]) VALUES (1, N'HungNL', N'HZi4eJXWZU0', N'hungnl@gmail.com', CAST(N'2021-03-16' AS Date))
INSERT [dbo].[Share] ([Id], [UserId], [VideoId], [Email], [ShareDate]) VALUES (2, N'KhoaTA', N'wiuhbH2Yap0', N'khoata@gmail.com', CAST(N'2020-03-16' AS Date))
INSERT [dbo].[Share] ([Id], [UserId], [VideoId], [Email], [ShareDate]) VALUES (3, N'BinhHT', N'InlnBTL4qeQ', N'binhht@gmail.com', CAST(N'2022-03-16' AS Date))
INSERT [dbo].[Share] ([Id], [UserId], [VideoId], [Email], [ShareDate]) VALUES (4, N'DuBQ', N'RaoBKCKIDAI', N'dubq@gmail.com', CAST(N'2022-03-16' AS Date))
INSERT [dbo].[Share] ([Id], [UserId], [VideoId], [Email], [ShareDate]) VALUES (5, N'HungNL', N'wiuhbH2Yap0', N'hungnl@gmail.com', CAST(N'2021-03-16' AS Date))
SET IDENTITY_INSERT [dbo].[Share] OFF
GO
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'duypro', N'123456', N'Nguyễn Thành Đức Duy', N'duy22245vn@gmail.com', 1)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'AnVV', N'123456', N'Nguyễn Văn An', N'annv@gmail.com', 1)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'BinhHT', N'123456', N'Hà Thái Bình', N'binhht@gmail.com', 0)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'DuBQ', N'12345', N'Bùi Quốc Dự', N'dubq@gmail.com', 1)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'HungNL', N'12345', N'Nguyễn Lý Hùng', N'hungnl@gmail.com', 0)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'KhoaTA', N'12345', N'Trần Anh Khoa', N'khoata@gmail.com', 1)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'TeoNV', N'123456', N'Nguyễn Văn Tèo', N'teonv@gmail.com', 0)
GO
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'__kGJZ-kPno', N'HƠN CẢ YÊU', N'HonCaYeu.jpg', N'ĐỨC PHÚC', 1, 2)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'2e5doBPOqPM', N'ANH YÊU VỘI THẾ', N'AnhYeuVoiVangThe.jpg', N'LaLa Trần	', 1, 4)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'eZpJdO22jZ0', N'AI CHUNG TÌNH ĐƯỢC MÃI', N'AiChungTinhDuocMai.jpg', N'ĐINH TÙNG HUY', 1, 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'HZi4eJXWZU0', N'Rồi Tới Luôn', N'RoiToiLuon.jpg', N'Nal', 1, 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'InlnBTL4qeQ', N'EM LÀ CON THUYỀN CÔ ĐƠN', N'EmLaConThuyenCoDon.jpg', N'THÁI HỌC', 0, 4)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'J1VzE0S-jzk', N'CÔ THẮM KHÔNG VỀ ', N'CoThamKhongVe.jpg', N'Phát Hồ x JokeS Bii x Sinike ft. DinhLong ', 0, 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'K9Jh-e08emY', N'Muốn Em Là', N'MuonEmLa.jpg', N'KEYO', 0, 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'RaoBKCKIDAI', N'CHẠY VỀ NƠI PHÍA ANH', N'ChayVePhiaAnh.jpg', N'KHẮC VIỆT x Thảo Bebe', 1, 2)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'wiuhbH2Yap0', N'Tình Thương Phu Thê', N'TinhThuongPhuThe.jpg', N'Chí Hướng || Thái Học', 1, 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'yF1rUhDRzG0', N'ĐÁNH MẤT EM', N'DanhMatEm.jpg', N'QUANG ĐĂNG TRẦN', 0, 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'ZuSHTuOvSGc', N'NGƯỜI LẠ THOÁNG QUA', N'NguoiLaThoangQua.jpg', N'ĐINH TÙNG HUY', 0, 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'Zzn9-ATB9aU', N'Nàng Thơ', N'NangTho.jpg', N'Hoàng Dũng', 0, 0)
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Users]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Videos] FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([Id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Videos]
GO
ALTER TABLE [dbo].[Share]  WITH CHECK ADD  CONSTRAINT [FK_Share_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Share] CHECK CONSTRAINT [FK_Share_Users]
GO
ALTER TABLE [dbo].[Share]  WITH CHECK ADD  CONSTRAINT [FK_Share_Videos] FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([Id])
GO
ALTER TABLE [dbo].[Share] CHECK CONSTRAINT [FK_Share_Videos]
GO
/****** Object:  StoredProcedure [dbo].[spFavoriteByYear]    Script Date: 09/04/2022 10:27:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spFavoriteByYear](@Year INT)
AS
BEGIN
SELECT
v.Title AS 'Group',
count(f.Id) AS 'Likes',
max(f.LikeDate) AS 'Newest',
min(f.LikeDate) AS 'Oldest'
FROM Favorites f JOIN Videos v ON v.Id = f.VideoId
WHERE year(f.LikeDate) = @Year
GROUP BY v.Title
END

GO
