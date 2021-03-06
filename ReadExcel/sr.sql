USE [Demo]
GO
/****** Object:  Table [dbo].[SellinFirstTab]    Script Date: 8/13/2018 5:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellinFirstTab](
	[Day] [nvarchar](50) NOT NULL,
	[Region] [nvarchar](50) NOT NULL,
	[KeyAccount] [nvarchar](50) NOT NULL,
	[Channel] [nvarchar](50) NOT NULL,
	[Archive] [nvarchar](50) NULL,
	[LastMonth] [nvarchar](50) NULL,
	[TargetMonth] [nvarchar](50) NULL,
	[TargetDate] [nvarchar](50) NULL,
	[Actual] [nvarchar](50) NULL,
	[Growth] [nvarchar](50) NULL,
	[GrowthLastMonth] [nvarchar](50) NULL,
	[PercentTarget] [nvarchar](50) NULL,
	[TargetWeek] [nvarchar](50) NULL,
	[ActualWeek] [nvarchar](50) NULL,
	[PercentWeek] [nvarchar](50) NULL,
	[CurrentDate] [nvarchar](50) NULL,
	[ID] [int] NOT NULL,
	[LastUpdated] [nvarchar](50) NULL,
	[Tab] [nvarchar](50) NULL,
 CONSTRAINT [PK_SellinFirstTab_1] PRIMARY KEY CLUSTERED 
(
	[Day] ASC,
	[Region] ASC,
	[KeyAccount] ASC,
	[Channel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'', N'Total MT', N'', N'-  ', N'-  ', N'3,776', N'171.64', N'3,111', N'0', N'0', N'82.39', N'482', N'550', N'114.11', N'101', 0, N'8/13/2018', N'1')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'AFC', N'', N'5,381', N'3,393', N'6,804', N'309.27', N'5,452', N'101.32', N'160.68', N'80.13', N'1,676', N'1,070', N'63.84', N'332', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'BRAND', N'Column1', N'Thực hiện 06.2017', N'Last Month', N'Target', N'Target Ngày : Tagert t6 /số ngay lam viec', N'Actual', N'Growth vs 2017', N'Growth vs LM', N'% vs Target', N'CURENT WEEK', N'Column2', N'Column3', N'Column4', 0, N'Column5', NULL)
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'COSY', N'', N'4,137', N'6,579', N'7,202', N'327.36', N'3,767', N'91.06', N'57.26', N'52.30', N'1,799', N'602', N'33.46', N'178', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'KINH DO - BISCUIT', N'', N'635', N'1,315', N'919', N'41.77', N'1,339', N'210.87', N'101.83', N'145.70', N'227', N'219', N'96.48', N'89', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'KINH DO - CAKE', N'', N'526', N'397', N'762', N'34.64', N'353', N'67.11', N'88.92', N'46.33', N'184', N'56', N'30.43', N'12', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'KINH DO BREAD', N'', N'2,227', N'2,898', N'3,559', N'161.77', N'2,669', N'119.85', N'92.10', N'74.99', N'871', N'459', N'52.70', N'89', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'KOKO', N'', N'-223', N'-39', N'-  ', N'0', N'-  ', N'0', N'0', N'0', N'-  ', N'-  ', N'0', N'-  ', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'LOTTE', N'total', N'1,418', N'1,742', N'2,147', N'97.59', N'1,535', N'108.25', N'88.12', N'71.50', N'516', N'521', N'100.97', N'263', 0, N'8/13/2018', N'1')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'LU', N'', N'1,261', N'1,498', N'2,085', N'94.77', N'958', N'75.97', N'63.95', N'45.95', N'507', N'197', N'38.86', N'14', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'METRO', N'Dry', N'873', N'-  ', N'1,916', N'87.09', N'1,547', N'177.21', N'0', N'80.74', N'450', N'407', N'90.44', N'149', 0, N'8/13/2018', N'1')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'METRO', N'Fresh', N'-  ', N'-  ', N'-  ', N'0', N'-  ', N'0', N'0', N'0', N'-  ', N'-  ', N'0', N'-  ', 0, N'8/13/2018', N'1')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'OREO', N'', N'6,311', N'6,807', N'8,549', N'388.59', N'7,349', N'116.45', N'107.96', N'85.96', N'2,153', N'2,001', N'92.94', N'516', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'OTHERS - BISCUIT', N'', N'1,274', N'19', N'-  ', N'0', N'55', N'4.32', N'289.47', N'0', N'-  ', N'25', N'0', N'15', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'RITZ', N'', N'860', N'1,261', N'1,541', N'70.05', N'1,028', N'119.53', N'81.52', N'66.71', N'371', N'231', N'62.26', N'68', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'SLIDE', N'', N'5,347', N'7,041', N'7,406', N'336.64', N'9,983', N'186.70', N'141.78', N'134.80', N'1,823', N'2,627', N'144.10', N'704', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'SOLITE', N'', N'3,899', N'3,097', N'3,655', N'166.14', N'4,585', N'117.59', N'148.05', N'125.44', N'888', N'578', N'65.09', N'179', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'7/23/2018', N'SOUTH', N'Total MT', N'', N'31,834', N'34,266', N'42,483', N'1931.05', N'37,539', N'117.92', N'109.55', N'88.36', N'10,501', N'8,066', N'76.81', N'2,196', 0, N'8/13/2018', N'2')
INSERT [dbo].[SellinFirstTab] ([Day], [Region], [KeyAccount], [Channel], [Archive], [LastMonth], [TargetMonth], [TargetDate], [Actual], [Growth], [GrowthLastMonth], [PercentTarget], [TargetWeek], [ActualWeek], [PercentWeek], [CurrentDate], [ID], [LastUpdated], [Tab]) VALUES (N'Thời gian', N'Miền', N'Key Account', N'Kênh hàng', N'Thực hiện 06.2017', N'Last Month tháng 5', N'Target tháng 6', N'Target Ngày : Tagert t6 /số ngay lam viec', N'Actual', N'Growth vs 2017: actual 6/thuc hien 06.2017', N'Growth vs LM: actual 6/lm thang 5', N'% vs Target', N'CURENT WEEK', N'Column1', N'Column2', N'Column3', 0, N'Nguồn dữ liệu', NULL)
