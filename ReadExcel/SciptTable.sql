USE [DMSSERVER]
GO
/****** Object:  Table [dbo].[AFHRET]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AFHRET](
	[Region] [nvarchar](255) NULL,
	[NPP] [nvarchar](255) NULL,
	[Mã NPP] [float] NULL,
	[Mã KH] [nvarchar](255) NULL,
	[RE] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppSettingBase]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppSettingBase](
	[AppSettingID] [varchar](20) NOT NULL,
	[AppSettingName] [nvarchar](50) NULL,
	[AppSettingValue] [varchar](50) NOT NULL,
	[StartDate] [datetime] NULL,
 CONSTRAINT [PK_AppSettingBase] PRIMARY KEY CLUSTERED 
(
	[AppSettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Area]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Area](
	[AreaID] [varchar](15) NOT NULL,
	[AreaName] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_SubRegion_Active]  DEFAULT ((0)),
	[Send] [bit] NOT NULL CONSTRAINT [DF_SubRegion_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_SubRegion] PRIMARY KEY CLUSTERED 
(
	[AreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Asset]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asset](
	[AssetID] [varchar](20) NOT NULL,
	[AssetName] [nvarchar](250) NULL,
	[AssetModelID] [varchar](20) NULL,
	[AssetNo] [varchar](20) NULL,
	[Barcode] [varchar](50) NULL,
	[DeliveryNo] [varchar](50) NULL,
	[SerialNumber] [varchar](50) NULL,
	[CardNumber] [varchar](20) NULL,
	[Active] [char](1) NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Asset] PRIMARY KEY CLUSTERED 
(
	[AssetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AssetGroup]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[AssetGroup](
	[AssetGroupID] [varchar](20) NOT NULL,
	[AssetGroupName] [nvarchar](250) NULL,
	[Active] [char](1) NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_AssetGroup] PRIMARY KEY CLUSTERED 
(
	[AssetGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AssetModel]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[AssetModel](
	[AssetModelID] [varchar](20) NOT NULL,
	[AssetModelName] [varchar](250) NULL,
	[AssetGroupID] [varchar](20) NULL,
	[AssetTypeID] [varchar](20) NULL,
	[Active] [char](1) NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_AssetModel] PRIMARY KEY CLUSTERED 
(
	[AssetModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AssetType]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[AssetType](
	[AssetTypeID] [varchar](20) NOT NULL,
	[AssetTypeName] [nvarchar](250) NULL,
	[AssetGroupID] [varchar](20) NULL,
	[isSales] [bit] NULL,
	[Active] [char](1) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
 CONSTRAINT [PK_AssetType] PRIMARY KEY CLUSTERED 
(
	[AssetTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bank](
	[BankID] [varchar](50) NOT NULL,
	[BankName] [varchar](50) NOT NULL,
	[Addr] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Batch](
	[BranchID] [varchar](20) NOT NULL CONSTRAINT [DF_Batch_BranchID]  DEFAULT ((0)),
	[BatNbr] [varchar](20) NOT NULL,
	[ModuleID] [varchar](2) NOT NULL,
	[Acct] [varchar](20) NULL,
	[RefNbr] [varchar](20) NOT NULL,
	[PONbr] [varchar](20) NULL,
	[POStatus] [char](1) NULL,
	[ReceiptDate] [datetime] NULL,
	[PaymentDate] [datetime] NULL,
	[DeliveryDate] [datetime] NULL,
	[TranDate] [datetime] NULL,
	[SeriNbr] [varchar](20) NULL,
	[InvDate] [datetime] NULL,
	[VendorID] [varchar](15) NULL,
	[CustID] [varchar](15) NULL,
	[EmployeeID] [varchar](15) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Rlsed] [smallint] NULL,
	[Perpost] [char](6) NULL,
	[RlsStatus] [char](1) NULL,
	[SiteID] [varchar](20) NULL,
	[ToSiteID] [varchar](20) NULL,
	[ToWhseLoc] [varchar](20) NULL,
	[WhseLoc] [varchar](20) NULL,
	[TrsfrOption] [char](1) NULL,
	[ReasonCd] [varchar](6) NOT NULL,
	[InvNbr] [varchar](20) NULL,
	[TaxID] [varchar](20) NULL,
	[ScreenID] [varchar](1) NULL,
	[InvtID] [varchar](20) NULL,
	[Qty] [float] NULL,
	[Status] [char](1) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_Batch_Send]  DEFAULT ((0)),
	[ImportDate] [datetime] NULL CONSTRAINT [DF_Batch_ImportDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[BatNbr] ASC,
	[ModuleID] ASC,
	[RefNbr] ASC,
	[ReasonCd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BinLocation]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BinLocation](
	[SiteID] [varchar](20) NOT NULL,
	[WhseLoc] [varchar](20) NOT NULL,
	[Descr] [nvarchar](100) NOT NULL,
	[Status] [char](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BlockControl]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BlockControl](
	[BranchID] [varchar](15) NOT NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[NumberDay] [int] NULL,
	[ReasonCD] [varchar](20) NOT NULL,
	[Send] [bit] NULL,
	[ActiveLock] [bit] NULL,
	[DateLock] [datetime] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](50) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](50) NULL,
	[NumberComment] [nvarchar](200) NULL,
 CONSTRAINT [PK_BlockControl] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[BeginDate] ASC,
	[EndDate] ASC,
	[ReasonCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Branch](
	[BranchID] [varchar](15) NOT NULL,
	[Descr] [nvarchar](100) NOT NULL,
	[ProvinceID] [varchar](15) NULL,
	[Region] [varchar](100) NULL,
	[Locality] [nvarchar](255) NULL,
	[Addr] [nvarchar](300) NULL,
	[Tel] [nvarchar](255) NULL,
	[Fax] [nvarchar](255) NULL,
	[Email] [nvarchar](300) NULL,
	[Active] [char](1) NULL CONSTRAINT [DF_Branch_Active]  DEFAULT ('''Y"'),
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Datesend] [smallint] NULL CONSTRAINT [DF_Branch_Datesend]  DEFAULT ((0)),
	[LockDate] [datetime] NULL CONSTRAINT [DF_Branch_LockDate]  DEFAULT (((9999)-(1))-(1)),
	[ActiveLock] [bit] NULL CONSTRAINT [DF_Branch_ActiveLock]  DEFAULT ((0)),
	[Crtd_DateTime] [datetime] NOT NULL CONSTRAINT [DF_Branch_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NOT NULL CONSTRAINT [DF_Branch_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
	[PrefixID] [varchar](50) NOT NULL CONSTRAINT [DF_Branch_PrefixID]  DEFAULT (''),
	[IsMT] [bit] NULL CONSTRAINT [DF_Branch_IsMT]  DEFAULT ((0)),
	[IsGT] [bit] NULL CONSTRAINT [DF_Branch_IsGT]  DEFAULT ((1)),
	[ChanelBranchID] [varchar](20) NULL,
	[BranchLocalID] [varchar](20) NULL,
	[KD] [varchar](50) NULL,
	[VD] [varchar](50) NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BranchConnected]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BranchConnected](
	[BranchID] [varchar](15) NOT NULL,
	[TimeConnected] [datetime] NOT NULL,
	[Version] [int] NULL,
 CONSTRAINT [PK_BranchConnected] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[TimeConnected] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BranchConnectedHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BranchConnectedHistory](
	[BranchID] [varchar](15) NOT NULL,
	[TimeConnected] [datetime] NOT NULL,
	[Version] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BranchHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BranchHistory](
	[BranchID] [varchar](40) NULL,
	[DateTime] [datetime] NULL,
	[TableName] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BranchLocal]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BranchLocal](
	[BranchLocalID] [varchar](20) NOT NULL,
	[BranchLocalName] [nvarchar](200) NULL,
 CONSTRAINT [PK_BranchLocal] PRIMARY KEY CLUSTERED 
(
	[BranchLocalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BranchPrefix]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BranchPrefix](
	[PrefixID] [varchar](50) NOT NULL,
	[PrefixName] [nvarchar](150) NULL,
	[PrefixDescription] [nvarchar](250) NULL,
	[CustomerIndex] [int] NOT NULL CONSTRAINT [DF_BranchPrefix_CustomerIndex]  DEFAULT ((0)),
	[RouteIndex] [int] NOT NULL CONSTRAINT [DF_BranchPrefix_RouteIndex]  DEFAULT ((0)),
 CONSTRAINT [PK_BranchPrefix] PRIMARY KEY CLUSTERED 
(
	[PrefixID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BranchSaleAdmin]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BranchSaleAdmin](
	[SaleAdminID] [varchar](15) NOT NULL,
	[SaleAdminName] [nvarchar](250) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Active] [char](1) NULL,
	[WorkOff] [bit] NULL CONSTRAINT [DF_BranchSaleAdmin_WorkOff]  DEFAULT ((0)),
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_BranchSaleAdmin] PRIMARY KEY CLUSTERED 
(
	[SaleAdminID] ASC,
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BranchTeamviewerList]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BranchTeamviewerList](
	[BranchID] [varchar](15) NOT NULL,
	[ComputerName] [nvarchar](50) NULL,
	[ComputerIP] [varchar](50) NOT NULL,
	[InstallationDirectory] [nvarchar](250) NULL,
	[InstallationDate] [varchar](50) NULL,
	[VersionName] [varchar](50) NOT NULL,
	[Version] [varchar](50) NULL,
	[TeamviewerID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BranchTeamviewerList_1] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[TeamviewerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brand](
	[phBrand] [varchar](20) NOT NULL,
	[BrandID] [varchar](20) NOT NULL,
	[BrandName] [nvarchar](100) NOT NULL,
	[Send] [bit] NULL CONSTRAINT [DF_Brand_Send]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BrandSegment]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BrandSegment](
	[BrandSegmentID] [varchar](50) NOT NULL,
	[BrandSegmentName] [nvarchar](250) NULL,
	[Active] [varchar](5) NULL,
	[Send] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](50) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](50) NULL,
 CONSTRAINT [PK_BrandSegment] PRIMARY KEY CLUSTERED 
(
	[BrandSegmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BudgetforSalesRoute]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BudgetforSalesRoute](
	[BudgetCode] [varchar](20) NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[SalesRouteCode] [varchar](20) NOT NULL,
	[EmployeeID] [varchar](20) NOT NULL,
	[OriginalAmount] [float] NULL,
	[BudgetAmount] [float] NULL,
	[OriginalQuantity] [float] NULL,
	[BudgetQuantity] [float] NULL,
	[UsedBudgetAmount] [float] NULL,
	[UsedBudgetQuantity] [float] NULL,
	[Remark] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](50) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](50) NOT NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_BudgetforSalesRoute] PRIMARY KEY CLUSTERED 
(
	[BudgetCode] ASC,
	[BranchID] ASC,
	[SalesRouteCode] ASC,
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Budgets]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Budgets](
	[BudgetCode] [varchar](20) NOT NULL,
	[BudgetName] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](50) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](50) NOT NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_Budgets] PRIMARY KEY CLUSTERED 
(
	[BudgetCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cash]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cash](
	[CashID] [varchar](20) NOT NULL,
	[CashDate] [datetime] NOT NULL,
	[DateInvoice] [datetime] NULL,
	[InvoiceNo] [varchar](20) NULL,
	[VendorID] [varchar](20) NULL,
	[CashTypeID] [nvarchar](50) NULL,
	[EmployeeID] [varchar](20) NULL,
	[CustId] [varchar](20) NOT NULL,
	[IsBank] [nvarchar](100) NULL,
	[BankID] [varchar](20) NOT NULL,
	[Amount] [float] NOT NULL,
	[Description] [nvarchar](200) NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[BranchID] [varchar](20) NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_Cash] PRIMARY KEY CLUSTERED 
(
	[CashID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CashDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CashDetail](
	[CashID] [varchar](20) NOT NULL,
	[BatNbr] [varchar](20) NOT NULL,
	[Amount] [float] NULL,
	[CustId] [varchar](20) NULL,
	[BranchID] [varchar](20) NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_CashDetail] PRIMARY KEY CLUSTERED 
(
	[CashID] ASC,
	[BatNbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CashType]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CashType](
	[CashTypeID] [varchar](50) NOT NULL,
	[Descr] [nvarchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_CashType] PRIMARY KEY CLUSTERED 
(
	[CashTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Chanel]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chanel](
	[ChanelID] [varchar](15) NOT NULL,
	[ChanelName] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_Chanel_Active]  DEFAULT ((1)),
	[Send] [bit] NOT NULL CONSTRAINT [DF_Chanel_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_Chanel] PRIMARY KEY CLUSTERED 
(
	[ChanelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChanelBranch]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChanelBranch](
	[ChanelBranchID] [varchar](50) NOT NULL,
	[ChanelBranchName] [nvarchar](200) NULL,
	[Crtd_DateTime] [datetime] NOT NULL CONSTRAINT [DF_ChanelBranch_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NOT NULL CONSTRAINT [DF_ChanelBranch_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_ChanelBranch] PRIMARY KEY CLUSTERED 
(
	[ChanelBranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChanelIVT]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChanelIVT](
	[ChanelID_ivt] [varchar](15) NOT NULL,
	[ChanelName_ivt] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_ChanelIVT_Active]  DEFAULT ((1)),
	[Send] [bit] NOT NULL CONSTRAINT [DF_ChanelIVT_Send]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHIMUC]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHIMUC](
	[DOPHU] [varchar](50) NULL,
	[STT] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigBranchEmobiz]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigBranchEmobiz](
	[BranchID] [varchar](20) NOT NULL,
	[DateStart] [datetime] NULL CONSTRAINT [DF_ConfigBranchEmobiz_DateStart]  DEFAULT (getdate()),
 CONSTRAINT [PK_ConfigBranchEmobiz] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CoverageEmployee]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CoverageEmployee](
	[EmployeeID] [varchar](15) NOT NULL,
	[CustID] [varchar](15) NOT NULL,
	[DateEff] [datetime] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[STT] [int] NOT NULL CONSTRAINT [DF_CoverageEmployee_STT]  DEFAULT ((1)),
 CONSTRAINT [PK_CoverageEmployee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC,
	[CustID] ASC,
	[DateEff] ASC,
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CoverageTeam]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CoverageTeam](
	[EmployeeID] [varchar](15) NOT NULL,
	[TeamID] [varchar](15) NOT NULL,
	[DateEff] [datetime] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[STT] [int] NOT NULL,
 CONSTRAINT [PK_CoverageTeam] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC,
	[TeamID] ASC,
	[DateEff] ASC,
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustClass]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustClass](
	[CustClassID] [varchar](15) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Descr] [nvarchar](100) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_CustClass_Active]  DEFAULT ((1)),
	[Send] [bit] NOT NULL CONSTRAINT [DF_CustClass_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_CustClass] PRIMARY KEY CLUSTERED 
(
	[CustClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustID] [varchar](30) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[CustName1] [nvarchar](100) NOT NULL,
	[CustName] [nvarchar](100) NOT NULL,
	[CustClassID] [varchar](15) NOT NULL,
	[Revenue] [float] NOT NULL,
	[Frequency] [smallint] NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[DistrictID] [varchar](15) NOT NULL,
	[ProvinceID] [varchar](15) NOT NULL,
	[ChanelID] [varchar](15) NOT NULL,
	[Fax] [varchar](50) NOT NULL,
	[TaxID] [varchar](15) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[TaxRegNbr] [varchar](50) NOT NULL,
	[Active] [varchar](50) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](50) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](50) NOT NULL,
	[Acct] [varchar](50) NOT NULL,
	[SaleAcct] [varchar](50) NOT NULL,
	[CrLmt] [float] NOT NULL,
	[PricePolicy] [char](2) NOT NULL,
	[LimitCredit] [float] NOT NULL,
	[CheckCreditTime] [char](1) NOT NULL,
	[ARBalance] [float] NOT NULL,
	[Precint] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_Customer_Send]  DEFAULT ((0)),
	[CustIDSAP] [varchar](15) NULL,
	[CustomerType] [varchar](20) NULL CONSTRAINT [DF_Customer_CustomerType]  DEFAULT ('A'),
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[CustomerCode] [varchar](50) NOT NULL,
	[SecondaryCustomerCode] [varchar](50) NULL,
	[ReferenceImageID] [varchar](100) NULL,
	[AllowGPS] [bit] NULL CONSTRAINT [DF_Customer_AllowGPS]  DEFAULT ((1)),
	[Notes] [nvarchar](200) NULL CONSTRAINT [DF_Customer_Notes]  DEFAULT (''),
	[UserUpdated] [varchar](50) NULL,
	[DateUpdated] [datetime] NULL,
	[WholeSalerID] [varchar](20) NULL,
	[WholeSalerTypeID] [varchar](20) NULL,
	[TelPhone] [varchar](50) NULL,
	[CustomerSegmentDry] [varchar](50) NULL,
	[CustomerSegmentFresh] [varchar](50) NULL,
	[CustomerSegmentMix] [varchar](50) NULL,
	[AllowApproveInfo] [bit] NULL DEFAULT ((0)),
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERCHECK]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERCHECK](
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[AreaID] [varchar](15) NOT NULL,
	[Region] [varchar](100) NULL,
	[reveneu] [float] NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[CustID] [varchar](30) NULL,
	[TeamID] [varchar](5) NOT NULL,
	[TYPELEVEL] [varchar](1) NOT NULL,
	[MSL] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerCHUAXD]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerCHUAXD](
	[CustID] [varchar](30) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[CustName1] [nvarchar](100) NOT NULL,
	[CustName] [nvarchar](100) NOT NULL,
	[CustClassID] [varchar](15) NOT NULL,
	[Revenue] [float] NOT NULL,
	[Frequency] [smallint] NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[DistrictID] [varchar](15) NOT NULL,
	[ProvinceID] [varchar](15) NOT NULL,
	[ChanelID] [varchar](15) NOT NULL,
	[Fax] [varchar](50) NOT NULL,
	[TaxID] [varchar](15) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[TaxRegNbr] [varchar](50) NOT NULL,
	[Active] [varchar](50) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](50) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](50) NOT NULL,
	[Acct] [varchar](50) NOT NULL,
	[SaleAcct] [varchar](50) NOT NULL,
	[CrLmt] [float] NOT NULL,
	[PricePolicy] [char](2) NOT NULL,
	[LimitCredit] [float] NOT NULL,
	[CheckCreditTime] [char](1) NOT NULL,
	[ARBalance] [float] NOT NULL,
	[Precint] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NULL,
	[Send] [bit] NULL,
	[CustIDSAP] [varchar](15) NULL,
	[CustomerType] [varchar](20) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[CustomerCode] [varchar](50) NOT NULL,
	[SecondaryCustomerCode] [varchar](50) NULL,
	[ReferenceImageID] [varchar](100) NULL,
	[AllowGPS] [bit] NULL,
	[Notes] [nvarchar](200) NULL,
	[UserUpdated] [varchar](50) NULL,
	[DateUpdated] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERDATA]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERDATA](
	[TYPETEAM] [varchar](5) NOT NULL,
	[CustID] [varchar](30) NOT NULL,
	[CustName] [nvarchar](100) NOT NULL,
	[AreaID] [varchar](15) NULL,
	[reveneu] [float] NULL,
	[BranchID] [varchar](15) NULL,
	[CustomerType] [varchar](20) NULL,
	[CustomerCode] [varchar](50) NOT NULL,
	[CustName1] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[FRESH] [varchar](1) NOT NULL,
	[DRY] [varchar](1) NOT NULL,
	[MIX] [varchar](1) NOT NULL,
	[MSLFRESH] [int] NOT NULL,
	[MSLDRY] [int] NOT NULL,
	[MSLMIX] [int] NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[LoaiDB] [nvarchar](500) NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_CUSTOMERDATA_Send]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERDATANPP]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERDATANPP](
	[TYPETEAM] [varchar](5) NOT NULL,
	[CustID] [varchar](30) NOT NULL,
	[CustName] [nvarchar](100) NOT NULL,
	[AreaID] [varchar](15) NULL,
	[reveneu] [float] NULL,
	[BranchID] [varchar](15) NULL,
	[CustomerType] [varchar](20) NULL,
	[CustomerCode] [varchar](50) NOT NULL,
	[CustName1] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[FRESH] [varchar](1) NOT NULL,
	[DRY] [varchar](1) NOT NULL,
	[MIX] [varchar](1) NOT NULL,
	[MSLFRESH] [int] NOT NULL,
	[MSLDRY] [int] NOT NULL,
	[MSLMIX] [int] NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[LoaiDB] [nvarchar](500) NULL,
	[Send] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERDATAROUTE]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERDATAROUTE](
	[TYPETEAM] [varchar](5) NOT NULL,
	[CustID] [varchar](30) NOT NULL,
	[CustName] [nvarchar](100) NOT NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[AreaID] [varchar](15) NULL,
	[reveneu] [float] NULL,
	[BranchID] [varchar](15) NULL,
	[CustomerType] [varchar](20) NULL,
	[CustomerCode] [varchar](50) NOT NULL,
	[CustName1] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[FRESH] [varchar](1) NOT NULL,
	[DRY] [varchar](1) NOT NULL,
	[MIX] [varchar](1) NOT NULL,
	[MSLFRESH] [int] NOT NULL,
	[MSLDRY] [int] NOT NULL,
	[MSLMIX] [int] NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[LoaiDB] [nvarchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERDATAT7]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERDATAT7](
	[TYPETEAM] [varchar](5) NOT NULL,
	[CustID] [varchar](30) NOT NULL,
	[CustName] [nvarchar](100) NOT NULL,
	[AreaID] [varchar](15) NOT NULL,
	[reveneu] [float] NULL,
	[BranchID] [varchar](15) NULL,
	[CustomerType] [varchar](20) NULL,
	[CustomerCode] [varchar](50) NOT NULL,
	[CustName1] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[FRESH] [varchar](1) NOT NULL,
	[DRY] [varchar](1) NOT NULL,
	[MIX] [varchar](1) NOT NULL,
	[MSLFRESH] [int] NOT NULL,
	[MSLDRY] [int] NOT NULL,
	[MSLMIX] [int] NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[LoaiDB] [nvarchar](500) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERDATAT7NPP]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERDATAT7NPP](
	[TYPETEAM] [varchar](5) NOT NULL,
	[CustID] [varchar](30) NOT NULL,
	[CustName] [nvarchar](100) NOT NULL,
	[AreaID] [varchar](15) NOT NULL,
	[reveneu] [float] NULL,
	[BranchID] [varchar](15) NULL,
	[CustomerType] [varchar](20) NULL,
	[CustomerCode] [varchar](50) NOT NULL,
	[CustName1] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[FRESH] [varchar](1) NOT NULL,
	[DRY] [varchar](1) NOT NULL,
	[MIX] [varchar](1) NOT NULL,
	[MSLFRESH] [int] NOT NULL,
	[MSLDRY] [int] NOT NULL,
	[MSLMIX] [int] NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[LoaiDB] [nvarchar](500) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerDelete]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerDelete](
	[CustID] [varchar](40) NOT NULL,
	[Address] [nvarchar](300) NULL,
	[CustName1] [nvarchar](100) NULL,
	[CustName] [nvarchar](100) NULL,
	[CustClassID] [varchar](15) NULL,
	[Revenue] [float] NULL,
	[Frequency] [smallint] NULL,
	[SpecifiID] [smallint] NULL,
	[DistrictID] [varchar](15) NULL,
	[ProvinceID] [varchar](15) NULL,
	[ChanelID] [varchar](15) NULL,
	[Fax] [varchar](50) NULL,
	[TaxID] [varchar](15) NULL,
	[Phone] [varchar](50) NULL,
	[TaxRegNbr] [varchar](50) NULL,
	[Active] [varchar](50) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](50) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](50) NULL,
	[Acct] [varchar](50) NULL,
	[SaleAcct] [varchar](50) NULL,
	[CrLmt] [float] NULL,
	[PricePolicy] [char](2) NULL,
	[LimitCredit] [float] NULL,
	[CheckCreditTime] [char](1) NULL,
	[ARBalance] [float] NULL,
	[Precint] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_CustomerDelete_Send]  DEFAULT ((0)),
	[CustIDSAP] [varchar](15) NULL,
	[CustomerType] [varchar](20) NULL CONSTRAINT [DF_CustomerDelete_CustomerType]  DEFAULT ('A'),
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[CustomerCode] [varchar](50) NULL,
	[SecondaryCustomerCode] [varchar](50) NULL,
	[ReferenceImageID] [varchar](100) NULL,
	[AllowGPS] [bit] NULL CONSTRAINT [DF_CustomerDelete_AllowGPS]  DEFAULT ((1)),
	[Notes] [nvarchar](200) NULL CONSTRAINT [DF_CustomerDelete_Notes]  DEFAULT (''),
	[UserUpdated] [varchar](50) NULL,
	[DateUpdated] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERFORCHANNEL]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERFORCHANNEL](
	[BranchID] [varchar](15) NOT NULL,
	[CustID] [varchar](15) NOT NULL,
	[ChanelID_ivt] [nvarchar](15) NULL,
	[reveneu] [float] NULL,
	[Region] [varchar](100) NULL,
	[AreaID] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERFORCHANNELROUTE]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERFORCHANNELROUTE](
	[BranchID] [varchar](15) NOT NULL,
	[CustID] [varchar](15) NOT NULL,
	[ChanelID_ivt] [nvarchar](15) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[reveneu] [float] NULL,
	[Region] [varchar](100) NULL,
	[AreaID] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERFORCHANNELROUTEROUTE]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERFORCHANNELROUTEROUTE](
	[BranchID] [varchar](15) NOT NULL,
	[CustID] [varchar](15) NOT NULL,
	[ChanelID_ivt] [nvarchar](15) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[reveneu] [float] NULL,
	[Region] [varchar](100) NULL,
	[AreaID] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERFORCHANNELT7]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERFORCHANNELT7](
	[BranchID] [varchar](15) NULL,
	[CustID] [varchar](15) NOT NULL,
	[ChanelID_ivt] [nvarchar](15) NULL,
	[reveneu] [float] NULL,
	[Region] [varchar](100) NULL,
	[AreaID] [varchar](15) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerHistory](
	[BranchID] [varchar](50) NOT NULL,
	[CustID] [varchar](50) NOT NULL,
	[CustomerCode] [varchar](50) NOT NULL,
	[Status] [varchar](2) NOT NULL,
	[DateStatus] [datetime] NULL,
	[DateApproved] [datetime] NOT NULL,
	[UserCreated] [varchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[UserUpdated] [varchar](50) NULL,
	[DateUpdated] [datetime] NULL,
	[TeamID] [varchar](50) NULL,
 CONSTRAINT [PK_CustomerHistory_1] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[CustID] ASC,
	[CustomerCode] ASC,
	[Status] ASC,
	[DateApproved] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerMap]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerMap](
	[CustID] [varchar](40) NOT NULL,
	[CustIDMap] [varchar](40) NOT NULL,
	[BranchID] [varchar](40) NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUdpated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_CustomerMap] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[CustIDMap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerMobiMN]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerMobiMN](
	[CustID] [varchar](30) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[CustName1] [nvarchar](100) NOT NULL,
	[CustName] [nvarchar](100) NOT NULL,
	[CustClassID] [varchar](15) NOT NULL,
	[Revenue] [float] NOT NULL,
	[Frequency] [smallint] NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[DistrictID] [varchar](15) NOT NULL,
	[ProvinceID] [varchar](15) NOT NULL,
	[ChanelID] [varchar](15) NOT NULL,
	[Fax] [varchar](50) NOT NULL,
	[TaxID] [varchar](15) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[TaxRegNbr] [varchar](50) NOT NULL,
	[Active] [varchar](50) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](50) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](50) NOT NULL,
	[Acct] [varchar](50) NOT NULL,
	[SaleAcct] [varchar](50) NOT NULL,
	[CrLmt] [float] NOT NULL,
	[PricePolicy] [char](2) NOT NULL,
	[LimitCredit] [float] NOT NULL,
	[CheckCreditTime] [char](1) NOT NULL,
	[ARBalance] [float] NOT NULL,
	[Precint] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NULL,
	[Send] [bit] NULL,
	[CustIDSAP] [varchar](15) NULL,
	[CustomerType] [varchar](20) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[CustomerCode] [varchar](50) NOT NULL,
	[SecondaryCustomerCode] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerMSLTemp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerMSLTemp](
	[CustID] [varchar](30) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[CustName1] [nvarchar](100) NOT NULL,
	[CustName] [nvarchar](100) NOT NULL,
	[CustClassID] [varchar](15) NOT NULL,
	[Revenue] [float] NOT NULL,
	[Frequency] [smallint] NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[DistrictID] [varchar](15) NOT NULL,
	[ProvinceID] [varchar](15) NOT NULL,
	[ChanelID] [varchar](15) NOT NULL,
	[Fax] [varchar](50) NOT NULL,
	[TaxID] [varchar](15) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[TaxRegNbr] [varchar](50) NOT NULL,
	[Active] [varchar](50) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](50) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](50) NOT NULL,
	[Acct] [varchar](50) NOT NULL,
	[SaleAcct] [varchar](50) NOT NULL,
	[CrLmt] [float] NOT NULL,
	[PricePolicy] [char](2) NOT NULL,
	[LimitCredit] [float] NOT NULL,
	[CheckCreditTime] [char](1) NOT NULL,
	[ARBalance] [float] NOT NULL,
	[Precint] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NULL,
	[Send] [bit] NULL,
	[CustIDSAP] [varchar](15) NULL,
	[CustomerType] [varchar](20) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[CustomerCode] [varchar](50) NOT NULL,
	[SecondaryCustomerCode] [varchar](50) NULL,
	[ReferenceImageID] [varchar](100) NULL,
	[AllowGPS] [bit] NULL,
	[Notes] [nvarchar](200) NULL,
	[UserUpdated] [varchar](50) NULL,
	[DateUpdated] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerProfile]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerProfile](
	[CustID] [varchar](40) NOT NULL,
	[BranchID] [varchar](40) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Status] [bit] NULL,
	[AmountLastYear] [float] NULL,
	[InvoiceNo] [nvarchar](50) NULL,
	[InvoiceNo1] [nvarchar](50) NULL,
	[NumberMet] [float] NULL,
	[NumberBox] [int] NULL,
	[AmountSupport] [float] NULL,
	[EmployeeID] [varchar](50) NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_CustomerProfile_DateCreated]  DEFAULT (getdate()),
	[DateUpdated] [datetime] NULL CONSTRAINT [DF_CustomerProfile_DateUpdated]  DEFAULT (getdate()),
	[Notes] [nvarchar](200) NULL,
	[FilePath] [nvarchar](50) NULL,
	[AuditNotes] [nvarchar](200) NULL,
 CONSTRAINT [PK_CustomerProfile] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[BranchID] ASC,
	[StartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerSegment]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerSegment](
	[CustomerSegmentID] [varchar](50) NOT NULL,
	[CustomerSegmentName] [nvarchar](150) NOT NULL,
	[Descr] [nvarchar](250) NOT NULL,
	[Require] [bit] NOT NULL CONSTRAINT [DF_CustomerSegment_Require]  DEFAULT ((0)),
	[Dry] [bit] NOT NULL CONSTRAINT [DF_CustomerSegment_Dry]  DEFAULT ((0)),
	[Fresh] [bit] NOT NULL CONSTRAINT [DF_CustomerSegment_Fresh]  DEFAULT ((0)),
	[Mix] [bit] NOT NULL CONSTRAINT [DF_CustomerSegment_Mix]  DEFAULT ((0)),
	[Active] [varchar](5) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_CustomerSegment_Send]  DEFAULT ((0)),
	[Crtd_User] [varchar](20) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
 CONSTRAINT [PK_CustomerSegment] PRIMARY KEY CLUSTERED 
(
	[CustomerSegmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerStatus]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerStatus](
	[IDkey] [int] IDENTITY(1,1) NOT NULL,
	[CustID] [varchar](50) NOT NULL,
	[DateEff] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerStatus] PRIMARY KEY CLUSTERED 
(
	[IDkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerStatusChanged]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerStatusChanged](
	[BranchID] [varchar](50) NOT NULL,
	[CustID] [varchar](50) NOT NULL,
	[CustomerCode] [varchar](50) NOT NULL,
	[Status] [varchar](2) NOT NULL,
	[DateChanged] [datetime] NOT NULL,
	[UserCreated] [varchar](50) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_CustomerStatusChanged_DateCreated]  DEFAULT (getdate()),
	[UserUpdated] [varchar](50) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_CustomerStatusChanged] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[CustID] ASC,
	[Status] ASC,
	[DateChanged] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerStock]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerStock](
	[BranchID] [varchar](20) NOT NULL,
	[TranDate] [datetime] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[TypeID] [varchar](20) NOT NULL,
	[CustStockTypeID] [varchar](20) NOT NULL,
	[CustID] [varchar](20) NULL,
	[EmployeeID] [varchar](20) NULL,
	[SaleRoute] [varchar](20) NULL,
	[Qty] [float] NULL,
	[QtyStkUnit] [float] NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[ImportDate] [datetime] NULL CONSTRAINT [DF_CustomerStock_DateImport]  DEFAULT (getdate()),
 CONSTRAINT [PK_CustomerStock] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[TranDate] ASC,
	[InvtID] ASC,
	[TypeID] ASC,
	[CustStockTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerTYY]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerTYY](
	[CustomerCode] [varchar](50) NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DashB_KPITargetBySalesRoute_Period]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DashB_KPITargetBySalesRoute_Period](
	[Id] [uniqueidentifier] NOT NULL,
	[Period] [varchar](6) NOT NULL,
	[DistributorCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[KPICode] [nvarchar](40) NOT NULL,
	[KPITarget] [float] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [nvarchar](40) NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[Deleted] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DashB_MSLForSalesForce]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DashB_MSLForSalesForce](
	[BranchID] [varchar](15) NULL,
	[AreaID] [varchar](15) NULL,
	[BranchName] [nvarchar](300) NULL,
	[Region] [nvarchar](100) NULL,
	[Actual] [int] NULL,
	[FA] [decimal](38, 2) NULL,
	[FB] [decimal](38, 2) NULL,
	[FC] [decimal](38, 2) NULL,
	[DA] [decimal](38, 2) NULL,
	[DB] [decimal](38, 2) NULL,
	[DC] [decimal](38, 2) NULL,
	[DD] [decimal](38, 2) NULL,
	[Taget] [decimal](38, 2) NULL,
	[Compliance] [decimal](38, 26) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DashB_MSLForSalesRoute]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DashB_MSLForSalesRoute](
	[AreaID] [varchar](50) NULL,
	[RegionID] [varchar](50) NULL,
	[CustomerCode] [varchar](50) NULL,
	[SalesPersonCode] [varchar](50) NULL,
	[SalesRouteCode] [varchar](50) NULL,
	[TeamID] [varchar](50) NULL,
	[Taget] [int] NULL,
	[Actual] [int] NULL,
	[Rate] [decimal](38, 20) NULL,
	[BranchName] [nvarchar](100) NULL,
	[EmployeeID] [varchar](15) NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[ASO] [int] NULL,
	[KH70] [int] NULL,
	[KH71] [int] NULL,
	[KH72] [int] NULL,
	[KH73] [int] NULL,
	[KH74] [int] NULL,
	[KH75] [int] NULL,
	[KH76] [int] NULL,
	[KH77] [int] NULL,
	[KH78] [int] NULL,
	[KH79] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DashB_SalesForce]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DashB_SalesForce](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[SalesForceCode] [varchar](40) NOT NULL,
	[SalesForceName] [nvarchar](255) NOT NULL,
	[SalesForceLevel] [int] NOT NULL,
	[ParentCode] [varchar](40) NOT NULL,
	[EmployeeCode] [varchar](40) NULL,
	[Ordinal] [int] NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [varchar](20) NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[ExcutedBy] [varchar](1) NOT NULL,
	[ExecutedDateTime] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DashB_SalesRoute]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DashB_SalesRoute](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesRouteName] [nvarchar](255) NOT NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[SalesTeamCode] [varchar](40) NOT NULL,
	[SalesForceCode] [varchar](40) NULL,
	[SalesForceL1] [varchar](40) NULL,
	[SalesForceL2] [varchar](40) NULL,
	[SalesForceL3] [varchar](40) NULL,
	[SalesForceL4] [varchar](40) NULL,
	[SalesForceL5] [varchar](40) NULL,
	[SalesForceL6] [varchar](40) NULL,
	[Remark] [nvarchar](1000) NULL,
	[Status] [char](1) NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [varchar](20) NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[ExcutedBy] [varchar](1) NOT NULL,
	[ExecutedDateTime] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DashB_SalesTarget_Period]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DashB_SalesTarget_Period](
	[Id] [uniqueidentifier] NOT NULL,
	[Period] [varchar](6) NOT NULL,
	[DistributorCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[BrandCode] [nvarchar](40) NOT NULL,
	[SalesTarget] [float] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [nvarchar](40) NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[Deleted] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DashB_SellInTarget_Period]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DashB_SellInTarget_Period](
	[Id] [uniqueidentifier] NOT NULL,
	[Period] [nvarchar](6) NOT NULL,
	[SalesForceCode] [nvarchar](40) NOT NULL,
	[SalesForceLevel] [int] NOT NULL,
	[DistributorCode] [nvarchar](40) NOT NULL,
	[BrandCode] [nvarchar](40) NOT NULL,
	[SellinTarget] [float] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NOT NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdateBy] [nvarchar](40) NOT NULL,
	[LastUpdateDateTime] [datetime] NULL,
	[Deleted] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DashBoardMT_ProductBySalesRep_Period]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DashBoardMT_ProductBySalesRep_Period](
	[Period] [varchar](6) NOT NULL,
	[EmployeeID] [nvarchar](40) NOT NULL,
	[CustID] [nvarchar](40) NOT NULL,
	[WholeSalerID] [nvarchar](40) NOT NULL,
	[ProductTarget] [float] NULL,
	[ProductActual] [float] NULL,
	[MSLTarget] [float] NULL,
	[MSLActual] [float] NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [nvarchar](40) NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DashBoardMT_SalesBySalesRep_Period]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DashBoardMT_SalesBySalesRep_Period](
	[Period] [varchar](6) NOT NULL,
	[EmployeeID] [nvarchar](40) NOT NULL,
	[CustID] [nvarchar](40) NOT NULL,
	[WholeSalerID] [nvarchar](40) NOT NULL,
	[SalesTarget] [float] NULL,
	[SalesActual] [float] NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [nvarchar](40) NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DashBoardMT_SalesByWholeSaler_Period]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DashBoardMT_SalesByWholeSaler_Period](
	[Period] [varchar](6) NOT NULL,
	[Region] [nvarchar](40) NOT NULL,
	[WholeSalerID] [nvarchar](40) NOT NULL,
	[SalesTarget] [float] NULL,
	[SalesActual] [float] NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [nvarchar](40) NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DateSend]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DateSend](
	[BranchID] [varchar](20) NOT NULL,
	[DateEnd] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DateSendControl]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DateSendControl](
	[BranchID] [varchar](15) NOT NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[NumberDay] [int] NULL,
	[ReasonCD] [varchar](20) NOT NULL,
	[Send] [bit] NULL,
	[ActiveLock] [bit] NULL,
	[DateLock] [datetime] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](50) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](50) NULL,
	[NumberComment] [int] NULL,
 CONSTRAINT [PK_DateSendControl] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[BeginDate] ASC,
	[EndDate] ASC,
	[ReasonCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DayAllow]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DayAllow](
	[BranchID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](30) NOT NULL,
	[TypeOff] [varchar](5) NOT NULL,
	[Descr] [nvarchar](300) NULL,
	[CreateUser] [varchar](50) NULL,
	[UpdateUser] [varchar](50) NULL,
	[CreateDate] [smalldatetime] NULL,
	[UpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_DayAllow] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[EmployeeID] ASC,
	[TypeOff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DayOffINMonth]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DayOffINMonth](
	[DayOff] [smalldatetime] NOT NULL,
	[Descr] [nvarchar](300) NULL,
	[CreateUser] [varchar](50) NULL,
	[UpdateUser] [varchar](50) NULL,
	[CreateDate] [smalldatetime] NULL,
	[UpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_DayOffINMonth] PRIMARY KEY CLUSTERED 
(
	[DayOff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dbo_SalePrice]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dbo_SalePrice](
	[NTHL] [datetime] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[LastCode] [float] NOT NULL,
	[UnitPrice01] [float] NOT NULL,
	[UnitPrice01C] [bit] NOT NULL,
	[UnitPrice03] [float] NOT NULL,
	[UnitPrice03C] [bit] NOT NULL,
	[Crtd_User] [varchar](20) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Status] [varchar](1) NULL,
	[Send] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[District](
	[DistrictID] [varchar](15) NOT NULL,
	[DistrictName] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[ProvinceID] [varchar](15) NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_District_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Division]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Division](
	[phSBU] [nvarchar](10) NOT NULL,
	[DivisionID] [varchar](20) NOT NULL,
	[DivisionName] [nvarchar](100) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_Division_Send]  DEFAULT ((0)),
	[Active] [varchar](5) NULL CONSTRAINT [DF_Division_Active]  DEFAULT ((1)),
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](50) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](50) NULL,
 CONSTRAINT [PK_Division] PRIMARY KEY CLUSTERED 
(
	[phSBU] ASC,
	[DivisionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DMSDATA]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DMSDATA](
	[INVTID] [varchar](20) NOT NULL,
	[REGIONID] [varchar](20) NOT NULL,
	[BRANCHID] [varchar](20) NOT NULL,
	[TRANDATE] [datetime] NOT NULL,
	[Quantity] [float] NULL,
	[Amount] [float] NULL,
	[QuantityKM] [float] NULL,
	[LineAmount] [float] NULL,
	[AmountTT] [float] NULL,
	[DisAmount] [float] NULL,
	[QtyByStkUnit] [float] NULL,
	[LastCost] [float] NULL,
	[Price] [float] NULL,
	[ImportDate] [date] NULL,
	[DISTRIBUTORCHANNEL] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DMSDATATK]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DMSDATATK](
	[Region] [nvarchar](100) NULL,
	[ProvinceID] [varchar](20) NULL,
	[ProvinceName] [varchar](20) NULL,
	[BranchID] [varchar](20) NULL,
	[BranchName] [nvarchar](100) NULL,
	[SKUTypeName] [nvarchar](100) NULL,
	[ChanelName_ivt] [nvarchar](100) NULL,
	[DivisionName] [varchar](50) NULL,
	[MaterialGroupName] [varchar](50) NULL,
	[BrandName] [varchar](50) NULL,
	[ProductGroupName] [varchar](50) NULL,
	[InvtID] [varchar](20) NULL,
	[InvtName] [nvarchar](200) NULL,
	[DfltPOUnit] [varchar](20) NULL,
	[BegQty] [float] NULL,
	[BegAmt] [float] NULL,
	[RcQtyNM] [float] NULL,
	[RcAmtNM] [float] NULL,
	[RcQtyNK] [float] NULL,
	[RcAmtNK] [float] NULL,
	[RcQtyNKM] [float] NULL,
	[RcAmtNKM] [float] NULL,
	[RcQtyNDT] [float] NULL,
	[RcAmtNDT] [float] NULL,
	[RcQtyNT] [float] NULL,
	[RcAmtNT] [float] NULL,
	[IssQtyBH] [float] NULL,
	[IssAmtBH] [float] NULL,
	[IssQtyBT] [float] NULL,
	[IssAmtBT] [float] NULL,
	[IssQtyXK] [float] NULL,
	[IssAmtXK] [float] NULL,
	[IssQtyXKM] [float] NULL,
	[IssAmtXKM] [float] NULL,
	[IssQtyXDT] [float] NULL,
	[IssAmtXDT] [float] NULL,
	[EndQty] [float] NULL,
	[EndAmt] [float] NULL,
	[ToDate] [smalldatetime] NULL,
	[DISTRIBUTORCHANNEL] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DMSInventory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DMSInventory](
	[InvtID] [nvarchar](20) NOT NULL,
	[Descr] [nvarchar](200) NOT NULL,
	[ph] [nvarchar](20) NOT NULL,
	[UnitClassID] [smallint] NOT NULL,
	[DfltPOUnit] [varchar](20) NOT NULL,
	[DfltSOUnit] [varchar](20) NOT NULL,
	[DfltStkUnit] [varchar](20) NOT NULL,
	[LastCost] [float] NOT NULL,
	[StdCost] [float] NOT NULL,
	[UnitPrice01] [float] NOT NULL,
	[UnitPrice03] [float] NOT NULL,
	[TaxID] [nvarchar](50) NOT NULL,
	[SKUTypeID] [nvarchar](50) NULL,
	[SKUTypeName] [nvarchar](100) NULL,
	[CogsAcct] [nvarchar](200) NOT NULL,
	[InvtAcct] [nvarchar](200) NOT NULL,
	[DfltWhseLoc] [varchar](20) NOT NULL,
	[SaleAcct] [varchar](20) NOT NULL,
	[IsKD] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Crtd_DateTime] [smalldatetime] NOT NULL,
	[LUpd_DateTime] [smalldatetime] NOT NULL,
	[LUpd_User] [nvarchar](50) NOT NULL,
	[Send] [bit] NOT NULL,
	[InvtIDref] [nvarchar](20) NULL,
	[ChanelID_ivt] [nvarchar](15) NULL,
	[phSBU] [varchar](20) NULL,
	[phProductGroup] [varchar](20) NULL,
	[phBrand] [varchar](20) NULL,
	[phMaterialGroup] [varchar](20) NULL,
	[phProductClass] [varchar](20) NULL,
	[ProductGroupID] [varchar](50) NULL,
	[BrandID] [varchar](50) NULL,
	[MaterialGroupID] [varchar](50) NULL,
	[ChanelName_ivt] [nvarchar](100) NULL,
	[DivisionID] [varchar](50) NULL,
	[ProductClassID] [varchar](50) NULL,
	[ProductGroupName] [nvarchar](50) NULL,
	[BrandName] [varchar](50) NULL,
	[MaterialGroupName] [nvarchar](50) NULL,
	[DivisionName] [nvarchar](50) NULL,
	[ProductClassName] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DOCUMENTREQUEST]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOCUMENTREQUEST](
	[DocID] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[UserCreated] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[DateDoc] [datetime] NULL,
	[UserRequest] [varchar](50) NULL,
	[Deparment] [varchar](50) NULL,
	[UserApproved] [varchar](50) NULL,
	[UserApprovedIs] [bit] NULL CONSTRAINT [DF_DOCUMENTREQUEST_UserApprovedIs]  DEFAULT ((0)),
	[ITIs] [bit] NULL,
	[RequestNotes] [text] NULL,
	[ITRequest] [text] NULL,
	[UserARequest] [text] NULL,
	[RequestTest] [text] NULL,
	[Notes] [text] NULL,
	[DateCheck] [datetime] NULL,
	[DateTest] [datetime] NULL,
	[DateFinish] [datetime] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[VersionUpdate] [varchar](50) NULL,
	[NotesUpdated] [text] NULL,
 CONSTRAINT [PK_DOCUMENTREQUEST] PRIMARY KEY CLUSTERED 
(
	[DocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMAllocateStocktoSalesRoute]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMAllocateStocktoSalesRoute](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[Percentage] [decimal](18, 3) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
 CONSTRAINT [PK_EMAllocateStocktoSalesRoute] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[SalesRouteCode] ASC,
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMApplyForCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMApplyForCustomer](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[ApplyForCode] [varchar](40) NOT NULL,
	[ApplyForCustomerCode] [varchar](40) NOT NULL,
	[Type] [varchar](40) NULL,
	[SalesRegionCode] [varchar](40) NULL,
	[SalesRegionLevel] [int] NULL,
	[CustomerCode] [varchar](40) NULL,
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_EMApplyForCustomer_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_EMApplyForCustomer_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_EMApplyForCustomer] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[ApplyForCode] ASC,
	[ApplyForCustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMApplyForHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMApplyForHeader](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[ApplyForCode] [varchar](40) NOT NULL,
	[ApplyForType] [varchar](40) NULL,
	[ApplyForName] [nvarchar](255) NULL,
	[Description] [nvarchar](1000) NULL,
	[Remark] [nvarchar](1000) NULL,
	[Status] [char](1) NULL,
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_EMApplyForHeader_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_EMApplyForHeader_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_EMApplyForHeader] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[ApplyForCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMApplyForSecondaryCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMApplyForSecondaryCustomer](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[ApplyForCode] [varchar](40) NOT NULL,
	[ApplyForCustomerCode] [varchar](40) NOT NULL,
	[ApplyForSecondaryCustomerCode] [varchar](40) NOT NULL,
	[Type] [varchar](40) NULL,
	[SecondaryCustomerHierarchyCode] [varchar](40) NULL,
	[SecondaryCustomerHierarchyLevel] [int] NULL,
	[SecondaryCustomerClass] [varchar](40) NULL,
	[SecondaryCustomerGroup] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_EMApplyForSecondaryCustomer_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_EMApplyForSecondaryCustomer_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
	[SecondaryCustomerType] [varchar](40) NULL,
	[SecondaryCustomerSegment] [varchar](40) NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_EMApplyForSecondaryCustomer_1] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[ApplyForCode] ASC,
	[ApplyForCustomerCode] ASC,
	[ApplyForSecondaryCustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMAsset]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMAsset](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[AssetCode] [varchar](40) NOT NULL,
	[ReferenceAssetCode] [varchar](40) NULL,
	[SerialNumber] [varchar](80) NULL,
	[Barcode] [varchar](80) NULL,
	[VendorCode] [varchar](40) NULL,
	[AssetBrandCode] [varchar](40) NULL,
	[AssetTypeCode] [varchar](40) NULL,
	[AssetSubTypeCode] [varchar](40) NULL,
	[AssetModelCode] [varchar](40) NULL,
	[AssetSizeCode] [varchar](40) NULL,
	[PurchaseOrderCode] [varchar](40) NULL,
	[PurchaseOrderDate] [datetime] NULL,
	[DeliveryCode] [varchar](40) NULL,
	[PurchasedDate] [datetime] NULL,
	[DeliveredDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[Description] [nvarchar](510) NULL,
	[Remark] [nvarchar](2000) NULL,
	[Status] [char](1) NULL,
	[BarcodeStatus] [char](1) NULL,
	[ReceivedStatus] [char](1) NULL,
	[WarrantyBy] [nvarchar](255) NULL,
	[WarrantyDate] [datetime] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[AssetName] [nvarchar](510) NULL,
	[CustomerCode] [nvarchar](80) NULL,
	[SecondaryCustomerCode] [nvarchar](80) NULL,
 CONSTRAINT [PK_EMAsset] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[AssetCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMAssetTransaction]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EMAssetTransaction](
	[AssetCode] [varchar](40) NULL,
	[Date] [datetime] NULL,
	[FromAssetStatus] [varchar](40) NULL,
	[ToAssetStatus] [varchar](40) NULL,
	[FromAssetOwnerType] [varchar](40) NULL,
	[ToAssetOwnerType] [varchar](40) NULL,
	[FromOwnerDescription] [nvarchar](255) NULL,
	[ToOwnerDescription] [nvarchar](255) NULL,
	[FromCustomerCode] [varchar](40) NULL,
	[ToCustomerCode] [varchar](40) NULL,
	[FromSecondaryCustomerCode] [varchar](40) NULL,
	[ToSecondaryCustomerCode] [varchar](40) NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[Remark] [nvarchar](1000) NULL,
	[ApproveFlag] [bit] NULL,
	[SystemStatus] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[RequestType] [varchar](40) NULL,
	[RequestCode] [varchar](40) NULL,
	[DeliveredDate] [datetime] NULL,
	[InstalledDate] [datetime] NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMBudgetForCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMBudgetForCustomer](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[OriginalAmount] [float] NULL,
	[BudgetAmount] [float] NULL,
	[OriginalQuantity] [float] NULL,
	[BudgetQuantity] [float] NULL,
	[UsedBudgetAmount] [float] NULL,
	[UsedBudgetQuantity] [float] NULL,
	[Remark] [nvarchar](2000) NULL,
	[Removable] [bit] NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[BudgetHeader_ID] [uniqueidentifier] NULL,
	[RowNumber] [bigint] NOT NULL,
	[Send] [bit] NULL CONSTRAINT [DF_EMBudgetForCustomer_Send]  DEFAULT ((0)),
	[isApproved] [bit] NULL CONSTRAINT [DF_EMBudgetForCustomer_isApproved]  DEFAULT ((0)),
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[BudgetAmountAdjustment] [float] NULL CONSTRAINT [DF_EMBudgetForCustomer_BudgetQuantityAdjustment]  DEFAULT ((0)),
	[BudgetQuantityAdjustment] [float] NULL CONSTRAINT [DF_EMBudgetForCustomer_BudgetQuantityAdjustment1]  DEFAULT ((0)),
 CONSTRAINT [PK_dbo.EMBudgetForCustomer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMBudgetForCustomerAdjustment]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMBudgetForCustomerAdjustment](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[AdjustmentAmount] [float] NULL,
	[AdjustmentQuantity] [float] NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[BudgetForCustomer_ID] [uniqueidentifier] NULL,
	[Send] [bit] NULL,
	[isApproved] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_EMBudgetForCustomerAdjustment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMBudgetForCustomerAdjustmentHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMBudgetForCustomerAdjustmentHistory](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[AdjustmentAmount] [float] NULL,
	[AdjustmentQuantity] [float] NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[BudgetForCustomer_ID] [uniqueidentifier] NULL,
	[Send] [bit] NULL,
	[isApproved] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMBudgetForCustomerHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMBudgetForCustomerHistory](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[OriginalAmount] [float] NULL,
	[BudgetAmount] [float] NULL,
	[OriginalQuantity] [float] NULL,
	[BudgetQuantity] [float] NULL,
	[UsedBudgetAmount] [float] NULL,
	[UsedBudgetQuantity] [float] NULL,
	[Remark] [nvarchar](2000) NULL,
	[Removable] [bit] NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[BudgetHeader_ID] [uniqueidentifier] NULL,
	[RowNumber] [bigint] NOT NULL,
	[Send] [bit] NULL,
	[isApproved] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[BudgetAmountAdjustment] [float] NULL,
	[BudgetQuantityAdjustment] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMBudgetForSalesRoute]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMBudgetForSalesRoute](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[OriginalAmount] [float] NULL,
	[BudgetAmount] [float] NULL,
	[OriginalQuantity] [float] NULL,
	[BudgetQuantity] [float] NULL,
	[UsedBudgetAmount] [float] NULL,
	[UsedBudgetQuantity] [float] NULL,
	[Remark] [nvarchar](2000) NULL,
	[Removable] [bit] NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[BudgetForCustomer_ID] [uniqueidentifier] NULL,
	[RowNumber] [bigint] NOT NULL,
	[Send] [bit] NULL CONSTRAINT [DF_EMBudgetForSalesRoute_Send]  DEFAULT ((0)),
	[isApproved] [bit] NULL CONSTRAINT [DF_EMBudgetForSalesRoute_isApproved]  DEFAULT ((0)),
	[BudgetAmountAdjustment] [float] NULL CONSTRAINT [DF_EMBudgetForSalesRoute_BudgetAmountAdjustment]  DEFAULT ((0)),
	[BudgetQuantityAdjustment] [float] NULL CONSTRAINT [DF_EMBudgetForSalesRoute_BudgetQuantityAdjustment]  DEFAULT ((0)),
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_EMBudgetForSalesRoute_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_EMBudgetForSalesRoute_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_dbo.EMBudgetForSalesRoute] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMBudgetForSalesRouteAdjustment]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMBudgetForSalesRouteAdjustment](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[AdjustmentAmount] [float] NULL,
	[AdjustmentQuantity] [float] NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[BudgetForSalesRoute_ID] [uniqueidentifier] NULL,
	[isApproved] [bit] NULL,
	[Send] [bit] NULL,
	[BudgetAmountAdjustment] [float] NULL,
	[BudgetQuantityAdjustment] [float] NULL,
 CONSTRAINT [PK_EMBudgetForSalesRouteAdjustment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMBudgetForSalesRouteAdjustmentHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMBudgetForSalesRouteAdjustmentHistory](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[AdjustmentAmount] [float] NULL,
	[AdjustmentQuantity] [float] NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[BudgetForSalesRoute_ID] [uniqueidentifier] NULL,
	[isApproved] [bit] NULL,
	[Send] [bit] NULL,
	[BudgetAmountAdjustment] [float] NULL,
	[BudgetQuantityAdjustment] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMBudgetForSalesRouteHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMBudgetForSalesRouteHistory](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[OriginalAmount] [float] NULL,
	[BudgetAmount] [float] NULL,
	[OriginalQuantity] [float] NULL,
	[BudgetQuantity] [float] NULL,
	[UsedBudgetAmount] [float] NULL,
	[UsedBudgetQuantity] [float] NULL,
	[Remark] [nvarchar](2000) NULL,
	[Removable] [bit] NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[BudgetForCustomer_ID] [uniqueidentifier] NULL,
	[RowNumber] [bigint] NOT NULL,
	[Send] [bit] NULL,
	[isApproved] [bit] NULL,
	[BudgetAmountAdjustment] [float] NULL,
	[BudgetQuantityAdjustment] [float] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMBudgetHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMBudgetHeader](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[BudgetName] [nvarchar](510) NOT NULL,
	[ReferenceBudgetCode] [nvarchar](80) NULL,
	[BudgetDate] [datetime] NOT NULL,
	[BudgetType] [nvarchar](40) NOT NULL,
	[BudgetTotal] [float] NOT NULL,
	[BudgetAmount] [float] NULL,
	[BudgetQuantity] [float] NULL,
	[HasScheme] [bit] NULL,
	[SchemeCode] [nvarchar](40) NULL,
	[Description] [nvarchar](2000) NULL,
	[CauseCode] [nvarchar](40) NULL,
	[ReasonCode] [nvarchar](40) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[DeadlineEvaluate] [datetime] NULL,
	[ClosedDate] [datetime] NULL,
	[Objective] [nvarchar](2000) NULL,
	[UnitCost] [float] NULL,
	[TargetType] [nvarchar](40) NULL,
	[SalesInTargetAmount] [float] NULL,
	[SalesOutTargetAmount] [float] NULL,
	[SalesInTargetQuantity] [int] NULL,
	[SalesOutTargetQuantity] [int] NULL,
	[SalesInAchieveAmount] [float] NULL,
	[SalesOutAchieveAmount] [float] NULL,
	[SalesInAchieveQuantity] [int] NULL,
	[SalesOutAchieveQuantity] [int] NULL,
	[SuccessTargetType] [bit] NULL,
	[SuccessObjective] [bit] NULL,
	[SuccessSalesInAchieved] [bit] NULL,
	[SuccessSalesOutAchieved] [bit] NULL,
	[SuccessOverall] [bit] NULL,
	[SalesInAchievedPercentage] [float] NULL,
	[SalesOutAchievedPercentage] [float] NULL,
	[OverallPercentage] [float] NULL,
	[TagerTypeRemark] [nvarchar](2000) NULL,
	[ObjectiveRemark] [nvarchar](2000) NULL,
	[SalesInAchievedRemark] [nvarchar](2000) NULL,
	[SalesOutAchievedRemark] [nvarchar](2000) NULL,
	[OverallRemark] [nvarchar](2000) NULL,
	[GeneralCauseAnalysis] [nvarchar](2000) NULL,
	[SalesRegionLevel] [int] NULL,
	[CustomerHierarchyLevel] [int] NULL,
	[ProductHierarchyLevel] [int] NULL,
	[ClaimFrequency] [nvarchar](40) NULL,
	[ClaimDate] [datetime] NULL,
	[ClaimDayOfWeek] [int] NULL,
	[AdvanceRatio] [float] NULL,
	[AllocationDeadline] [datetime] NULL,
	[AdvanceType] [nvarchar](40) NULL,
	[AdvancePercentage] [float] NULL,
	[NumberOfApprovedLevels] [int] NULL,
	[CurrentApprovedLevel] [int] NULL,
	[ApprovedLevel1] [int] NULL,
	[ApprovedLevel2] [int] NULL,
	[ApprovedLevel3] [int] NULL,
	[ApprovedLevel4] [int] NULL,
	[ApprovedLevel5] [int] NULL,
	[CDNumber] [nvarchar](40) NULL,
	[LicenseNumber] [nvarchar](40) NULL,
	[Remark] [nvarchar](2000) NULL,
	[HasRevision] [bit] NULL,
	[Status] [nvarchar](1) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL CONSTRAINT [DF_EMBudgetHeader_Deleted]  DEFAULT ((0)),
	[RowNumber] [bigint] NOT NULL CONSTRAINT [DF_EMBudgetHeader_RowNumber]  DEFAULT ((0)),
	[Send] [bit] NULL CONSTRAINT [DF_EMBudgetHeader_Send]  DEFAULT ((0)),
	[isApproved] [bit] NULL CONSTRAINT [DF_EMBudgetHeader_isApproved]  DEFAULT ((0)),
 CONSTRAINT [PK_dbo.EMBudgetHeader] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMBudgetHeaderHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMBudgetHeaderHistory](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[BudgetName] [nvarchar](510) NOT NULL,
	[ReferenceBudgetCode] [nvarchar](80) NULL,
	[BudgetDate] [datetime] NOT NULL,
	[BudgetType] [nvarchar](40) NOT NULL,
	[BudgetTotal] [float] NOT NULL,
	[BudgetAmount] [float] NULL,
	[BudgetQuantity] [float] NULL,
	[HasScheme] [bit] NULL,
	[SchemeCode] [nvarchar](40) NULL,
	[Description] [nvarchar](2000) NULL,
	[CauseCode] [nvarchar](40) NULL,
	[ReasonCode] [nvarchar](40) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[DeadlineEvaluate] [datetime] NULL,
	[ClosedDate] [datetime] NULL,
	[Objective] [nvarchar](2000) NULL,
	[UnitCost] [float] NULL,
	[TargetType] [nvarchar](40) NULL,
	[SalesInTargetAmount] [float] NULL,
	[SalesOutTargetAmount] [float] NULL,
	[SalesInTargetQuantity] [int] NULL,
	[SalesOutTargetQuantity] [int] NULL,
	[SalesInAchieveAmount] [float] NULL,
	[SalesOutAchieveAmount] [float] NULL,
	[SalesInAchieveQuantity] [int] NULL,
	[SalesOutAchieveQuantity] [int] NULL,
	[SuccessTargetType] [bit] NULL,
	[SuccessObjective] [bit] NULL,
	[SuccessSalesInAchieved] [bit] NULL,
	[SuccessSalesOutAchieved] [bit] NULL,
	[SuccessOverall] [bit] NULL,
	[SalesInAchievedPercentage] [float] NULL,
	[SalesOutAchievedPercentage] [float] NULL,
	[OverallPercentage] [float] NULL,
	[TagerTypeRemark] [nvarchar](2000) NULL,
	[ObjectiveRemark] [nvarchar](2000) NULL,
	[SalesInAchievedRemark] [nvarchar](2000) NULL,
	[SalesOutAchievedRemark] [nvarchar](2000) NULL,
	[OverallRemark] [nvarchar](2000) NULL,
	[GeneralCauseAnalysis] [nvarchar](2000) NULL,
	[SalesRegionLevel] [int] NULL,
	[CustomerHierarchyLevel] [int] NULL,
	[ProductHierarchyLevel] [int] NULL,
	[ClaimFrequency] [nvarchar](40) NULL,
	[ClaimDate] [datetime] NULL,
	[ClaimDayOfWeek] [int] NULL,
	[AdvanceRatio] [float] NULL,
	[AllocationDeadline] [datetime] NULL,
	[AdvanceType] [nvarchar](40) NULL,
	[AdvancePercentage] [float] NULL,
	[NumberOfApprovedLevels] [int] NULL,
	[CurrentApprovedLevel] [int] NULL,
	[ApprovedLevel1] [int] NULL,
	[ApprovedLevel2] [int] NULL,
	[ApprovedLevel3] [int] NULL,
	[ApprovedLevel4] [int] NULL,
	[ApprovedLevel5] [int] NULL,
	[CDNumber] [nvarchar](40) NULL,
	[LicenseNumber] [nvarchar](40) NULL,
	[Remark] [nvarchar](2000) NULL,
	[HasRevision] [bit] NULL,
	[Status] [nvarchar](1) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[Send] [bit] NULL,
	[isApproved] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMBudgetTransaction]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMBudgetTransaction](
	[ID] [uniqueidentifier] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[EmployeeID] [varchar](15) NULL,
	[TranDate] [datetime] NOT NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](20) NULL,
	[ProductCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionCode] [nvarchar](40) NOT NULL,
	[PromotionDetailLineID] [int] NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[BudgetType] [varchar](40) NOT NULL,
	[TransactionCode] [nvarchar](40) NOT NULL,
	[TransactionType] [nvarchar](1) NOT NULL,
	[Quantity] [float] NULL,
	[Amount] [float] NULL,
	[BudgetStatus] [varchar](20) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL CONSTRAINT [DF__EMBudgetT__Delet__58F38DB3N]  DEFAULT ((0)),
	[RowNumber] [bigint] NOT NULL CONSTRAINT [DF__EMBudgetT__RowNu__59E7B1ECN]  DEFAULT ((0)),
	[Send] [bit] NULL CONSTRAINT [DF__EMBudgetTr__Send__5ADBD625N]  DEFAULT ((0)),
	[isApproved] [bit] NULL CONSTRAINT [DF__EMBudgetT__isApp__5BCFFA5EN]  DEFAULT ((0)),
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[OrderType] [int] NULL,
 CONSTRAINT [PK_EMBudgetTransactionN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[CustomerCode] ASC,
	[SalesRouteCode] ASC,
	[BudgetCode] ASC,
	[TransactionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMBudgetTransactionHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMBudgetTransactionHistory](
	[ID] [uniqueidentifier] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[EmployeeID] [varchar](15) NULL,
	[TranDate] [datetime] NOT NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](20) NULL,
	[ProductCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionCode] [nvarchar](40) NOT NULL,
	[PromotionDetailLineID] [int] NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[BudgetType] [varchar](40) NOT NULL,
	[TransactionCode] [nvarchar](40) NOT NULL,
	[TransactionType] [nvarchar](1) NOT NULL,
	[Quantity] [float] NULL,
	[Amount] [float] NULL,
	[BudgetStatus] [varchar](20) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[Send] [bit] NULL,
	[isApproved] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[OrderType] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMBudgetTransactionO]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMBudgetTransactionO](
	[ID] [uniqueidentifier] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[EmployeeID] [varchar](15) NULL,
	[TranDate] [datetime] NOT NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](20) NULL,
	[ProductCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionCode] [nvarchar](40) NOT NULL,
	[PromotionDetailLineID] [int] NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[BudgetType] [varchar](40) NOT NULL,
	[TransactionCode] [nvarchar](40) NOT NULL,
	[TransactionType] [nvarchar](1) NOT NULL,
	[Quantity] [float] NULL,
	[Amount] [float] NULL,
	[BudgetStatus] [varchar](20) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL CONSTRAINT [DF__EMBudgetT__Delet__58F38DB3]  DEFAULT ((0)),
	[RowNumber] [bigint] NOT NULL CONSTRAINT [DF__EMBudgetT__RowNu__59E7B1EC]  DEFAULT ((0)),
	[Send] [bit] NULL CONSTRAINT [DF__EMBudgetTr__Send__5ADBD625]  DEFAULT ((0)),
	[isApproved] [bit] NULL CONSTRAINT [DF__EMBudgetT__isApp__5BCFFA5E]  DEFAULT ((0)),
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[OrderType] [int] NULL,
 CONSTRAINT [PK_EMBudgetTransaction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[CustomerCode] ASC,
	[SalesRouteCode] ASC,
	[BudgetCode] ASC,
	[TransactionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMBudgetTransactionTablet]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMBudgetTransactionTablet](
	[ID] [uniqueidentifier] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[EmployeeID] [varchar](15) NULL,
	[TranDate] [datetime] NOT NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](20) NULL,
	[ProductCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionCode] [nvarchar](40) NOT NULL,
	[PromotionDetailLineID] [int] NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[BudgetType] [varchar](40) NOT NULL,
	[TransactionCode] [nvarchar](40) NOT NULL,
	[TransactionType] [nvarchar](1) NOT NULL,
	[Quantity] [float] NULL,
	[Amount] [float] NULL,
	[BudgetStatus] [varchar](20) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[Send] [bit] NULL,
	[isApproved] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[OrderType] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMBudgetTransactionTabletHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMBudgetTransactionTabletHistory](
	[ID] [uniqueidentifier] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[EmployeeID] [varchar](15) NULL,
	[TranDate] [datetime] NOT NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](20) NULL,
	[ProductCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionCode] [nvarchar](40) NOT NULL,
	[PromotionDetailLineID] [int] NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[BudgetType] [varchar](40) NOT NULL,
	[TransactionCode] [nvarchar](40) NOT NULL,
	[TransactionType] [nvarchar](1) NOT NULL,
	[Quantity] [float] NULL,
	[Amount] [float] NULL,
	[BudgetStatus] [varchar](20) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[Send] [bit] NULL,
	[isApproved] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[OrderType] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMCodeDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMCodeDetail](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CMCode] [varchar](80) NOT NULL,
	[CDCode] [varchar](510) NOT NULL,
	[CDName] [nvarchar](510) NULL,
	[StandardName] [nvarchar](510) NULL,
	[NumberValue] [float] NULL,
	[DateTimeValue] [datetime] NULL,
	[Ordinal] [int] NULL,
	[Remark] [nvarchar](255) NULL,
	[Status] [char](1) NULL CONSTRAINT [DF_CodeDetail_Status]  DEFAULT ('A'),
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_EMCodeDetail_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_EMCodeDetail_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_CodeDetail] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CMCode] ASC,
	[CDCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMCodeDetail_WW]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMCodeDetail_WW](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CMCode] [varchar](80) NOT NULL,
	[CDCode] [varchar](510) NOT NULL,
	[CDName] [nvarchar](510) NULL,
	[StandardName] [nvarchar](510) NULL,
	[NumberValue] [float] NULL,
	[DateTimeValue] [datetime] NULL,
	[Ordinal] [int] NULL,
	[Remark] [nvarchar](255) NULL,
	[Status] [char](1) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMCodeMaster]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMCodeMaster](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CMCode] [varchar](80) NOT NULL,
	[CMName] [nvarchar](510) NULL,
	[StandardName] [nvarchar](510) NULL,
	[SystemCode] [bit] NULL,
	[Remark] [nvarchar](2000) NULL,
	[Status] [char](1) NULL CONSTRAINT [DF_CodeMaster_Status]  DEFAULT ('A'),
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_CodeMaster_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_CodeMaster_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_CodeMaster] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CMCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMCompetitor]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMCompetitor](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CompetitorCode] [varchar](40) NOT NULL,
	[CompetitorName] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](500) NULL,
	[Address2] [nvarchar](500) NULL,
	[Province] [nvarchar](500) NULL,
	[City] [nvarchar](500) NULL,
	[Phone] [varchar](100) NULL,
	[Fax] [varchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Type] [varchar](40) NULL,
	[Status] [char](1) NULL,
	[Activity] [varchar](40) NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[SpaceCode] [nvarchar](40) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
 CONSTRAINT [PK_EMCompetitor] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CompetitorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMCompetitorActivitesCapturedImag]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMCompetitorActivitesCapturedImag](
	[CustomerCode] [varchar](40) NULL,
	[CompetitorActivityCode] [varchar](40) NULL,
	[ImageCode] [varchar](40) NULL,
	[SyncStatus] [char](1) NULL,
	[Description] [nvarchar](510) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMCompetitorActivitesNote]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMCompetitorActivitesNote](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CompetitorActivityCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[Visitdate] [datetime] NULL,
	[PromotionLine] [varchar](40) NULL,
	[PromotionNote] [nvarchar](1000) NULL,
	[Activity] [varchar](40) NULL,
	[ActivityNote] [nvarchar](1000) NULL,
	[Brand] [varchar](40) NULL,
	[Space] [varchar](40) NULL,
	[Product] [varchar](40) NULL,
	[PackType] [varchar](40) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Price] [float] NULL,
	[ReferenceImageCode] [varchar](100) NULL,
	[CompetitorCode] [varchar](40) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMCompetitorDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMCompetitorDetail](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CompetitorCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[CustID] [varchar](15) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
 CONSTRAINT [PK_EMCompetitorDetail_1] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CompetitorCode] ASC,
	[CustomerCode] ASC,
	[SecondaryCustomerCode] ASC,
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMCustomerFeedback]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EMCustomerFeedback](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[FeedbackID] [int] NULL,
	[Type] [varchar](40) NULL,
	[Description] [nvarchar](1000) NULL,
	[Resolved] [bit] NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMDetailVisitPlan]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMDetailVisitPlan](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[BeatPlanCode] [varchar](40) NOT NULL,
	[SubPlanCode] [varchar](40) NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[Sequence] [int] NULL,
	[Isspecialday] [bit] NULL,
	[Status] [char](1) NULL,
	[Remark] [nvarchar](1000) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[SalesPersonCode] [varchar](50) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_EMDetailVisitPlan_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_EMDetailVisitPlan] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[BeatPlanCode] ASC,
	[SubPlanCode] ASC,
	[VisitDate] ASC,
	[SalesRouteCode] ASC,
	[SecondaryCustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMDetailVisitPlanActual]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMDetailVisitPlanActual](
	[VisitDate] [datetime] NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[RegisteredLatitude] [float] NULL,
	[RegisteredLongitude] [float] NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[LastVisitDate] [datetime] NULL,
	[Visited] [char](1) NULL,
	[OffRoute] [char](1) NOT NULL,
	[Delivered] [char](1) NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[LocationOffset] [float] NOT NULL,
	[LocationOffset2] [float] NULL,
	[LastVisitStreamDate] [datetime] NULL,
	[SecondaryCreatedDateTime] [datetime] NULL,
	[ProspectCreatedDateTime] [datetime] NULL,
	[LastVisitStreamFile] [nvarchar](1000) NULL,
	[LastVisitStreamCount] [int] NOT NULL,
	[EndTime] [datetime] NULL,
	[StartTime] [datetime] NULL,
	[VisitTimeSpan2] [int] NULL,
	[LastOrderCode] [varchar](40) NULL,
	[LastOrderDate] [datetime] NULL,
	[LastOrderCount] [int] NOT NULL,
	[LastInvoiceCode] [varchar](40) NULL,
	[LastInvoiceDate] [datetime] NULL,
	[LastInvoiceCount] [int] NOT NULL,
	[TodayQuantity] [numeric](18, 3) NOT NULL,
	[TodayPromotionQuantity] [numeric](18, 3) NOT NULL,
	[TodayAmount] [numeric](18, 3) NOT NULL,
	[TodayTax] [numeric](18, 3) NOT NULL,
	[TodayDiscountAmount] [numeric](18, 3) NOT NULL,
	[TodayPromotionAmount] [numeric](18, 3) NOT NULL,
	[TodayRevenue] [numeric](18, 3) NOT NULL,
	[IsProspect] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMDetailVisitPlanData]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMDetailVisitPlanData](
	[MonthYear] [varchar](7) NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMDetailVisitPlanFirstOfMonth]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMDetailVisitPlanFirstOfMonth](
	[CustomerCode] [varchar](50) NOT NULL,
	[SalesRouteCode] [varchar](50) NOT NULL,
	[SalesPersonCode] [varchar](50) NOT NULL,
	[SecondaryCustomerCode] [varchar](50) NOT NULL,
	[CustID] [varchar](50) NULL,
	[VisitDate] [datetime] NOT NULL,
	[Status] [varchar](1) NOT NULL,
	[UserCreated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_EMDetailVisitPlanFirstOfMonth] PRIMARY KEY CLUSTERED 
(
	[CustomerCode] ASC,
	[SalesRouteCode] ASC,
	[SalesPersonCode] ASC,
	[SecondaryCustomerCode] ASC,
	[VisitDate] ASC,
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMDetailVisitPlanMSL]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMDetailVisitPlanMSL](
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](50) NULL,
	[VisitDate] [datetime] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[Status] [char](1) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMDetailVisitPlanMSLNPP]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMDetailVisitPlanMSLNPP](
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](50) NULL,
	[VisitDate] [datetime] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[Status] [char](1) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMDisplayAssessmentDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EMDisplayAssessmentDetail](
	[CustomerCode] [varchar](40) NULL,
	[AssessmentID] [uniqueidentifier] NULL,
	[SurveyID] [int] NULL,
	[QuestionID] [int] NULL,
	[AnswerID] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMDisplayAssessmentHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMDisplayAssessmentHeader](
	[ID] [uniqueidentifier] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProgramLineID] [int] NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[BeforeImageID] [nvarchar](100) NOT NULL,
	[AfterImageID] [nvarchar](100) NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[SecondaryCustomer_ID] [uniqueidentifier] NULL,
	[SyncStatus] [nvarchar](1) NOT NULL,
	[AssessmentID] [uniqueidentifier] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.EMDisplayAssessmentHeader] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMDisplayAssessmentPhoto]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMDisplayAssessmentPhoto](
	[ID] [uniqueidentifier] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[AssessmentID] [uniqueidentifier] NOT NULL,
	[SyncStatus] [nvarchar](1) NOT NULL,
	[DisplayAssessmentHeader_ID] [uniqueidentifier] NULL,
	[ImageCode] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[ImagePath] [nvarchar](100) NULL DEFAULT (''),
 CONSTRAINT [PK_dbo.EMDisplayAssessmentPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMGPSTracking]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMGPSTracking](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[ID] [bigint] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](40) NOT NULL,
	[TrackingDatetime] [varchar](40) NOT NULL,
	[Longitude] [float] NOT NULL,
	[Latitude] [float] NOT NULL,
 CONSTRAINT [PK_EMGPSTracking] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMLocationOffSet]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMLocationOffSet](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[SalesRegionCode] [varchar](40) NULL,
	[Levels] [int] NULL,
	[LocationOffset] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMNotification]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMNotification](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[ID] [varchar](40) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[ApplyForCode] [varchar](40) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Status] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_EMNotification] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_ApplyForCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_ApplyForCustomer](
	[ID] [uniqueidentifier] NOT NULL,
	[ApplyForCode] [nvarchar](40) NOT NULL,
	[ApplyForCustomerCode] [nvarchar](40) NOT NULL,
	[Type] [nvarchar](40) NOT NULL,
	[SalesregionCode] [nvarchar](40) NULL,
	[SalesregionLevel] [int] NULL,
	[PrimaryCustomerHierarchyCode] [nvarchar](40) NULL,
	[PrimaryCustomerHierarchyLevel] [int] NULL,
	[CustomerCode] [nvarchar](40) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ApplyForHeader_ID] [uniqueidentifier] NULL,
	[Customer_ID] [uniqueidentifier] NULL,
	[RowNumber] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_ApplyForHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_ApplyForHeader](
	[ID] [uniqueidentifier] NOT NULL,
	[ApplyForCode] [nvarchar](40) NOT NULL,
	[ApplyForName] [nvarchar](255) NOT NULL,
	[ApplyForType] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Remark] [nvarchar](1000) NULL,
	[Status] [nvarchar](1) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_ApplyForSecondaryCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_ApplyForSecondaryCustomer](
	[ID] [uniqueidentifier] NOT NULL,
	[ApplyForCode] [nvarchar](40) NOT NULL,
	[ApplyForCustomerCode] [nvarchar](40) NOT NULL,
	[ApplyForSecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[Type] [nvarchar](40) NOT NULL,
	[SecondaryCustomerHierarchyCode] [nvarchar](40) NULL,
	[SecondaryCustomerHierarchyLevel] [int] NULL,
	[SecondaryCustomerClass] [nvarchar](40) NULL,
	[SecondaryCustomerGroup] [nvarchar](40) NULL,
	[SecondaryCustomerCode] [nvarchar](40) NULL,
	[CustomerCode] [nvarchar](40) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ApplyForHeader_ID] [uniqueidentifier] NULL,
	[SecondaryCustomer_ID] [uniqueidentifier] NULL,
	[SecondaryCustomerRegionCode] [nvarchar](40) NULL,
	[SecondaryCustomerRegionLevel] [int] NULL,
	[SecondaryCustomerType] [nvarchar](40) NULL,
	[SecondaryCustomerSegment] [nvarchar](40) NULL,
	[RowNumber] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_ARPayment]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_ARPayment](
	[CustomerCode] [varchar](40) NULL,
	[PaymentCode] [varchar](40) NULL,
	[LineNo] [int] NULL,
	[SalesOrderCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[ARDocCode] [varchar](40) NULL,
	[InvoiceCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[PayDate] [datetime] NULL,
	[Amount] [float] NULL,
	[Status] [char](1) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_AssetTransaction]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_AssetTransaction](
	[AssetCode] [varchar](40) NULL,
	[Date] [datetime] NULL,
	[FromAssetStatus] [varchar](40) NULL,
	[ToAssetStatus] [varchar](40) NULL,
	[FromAssetOwnerType] [varchar](40) NULL,
	[ToAssetOwnerType] [varchar](40) NULL,
	[FromOwnerDescription] [nvarchar](255) NULL,
	[ToOwnerDescription] [nvarchar](255) NULL,
	[FromCustomerCode] [varchar](40) NULL,
	[ToCustomerCode] [varchar](40) NULL,
	[FromSecondaryCustomerCode] [varchar](40) NULL,
	[ToSecondaryCustomerCode] [varchar](40) NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[Remark] [nvarchar](1000) NULL,
	[ApproveFlag] [bit] NULL,
	[SystemStatus] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[RequestType] [varchar](40) NULL,
	[RequestCode] [varchar](40) NULL,
	[DeliveredDate] [datetime] NULL,
	[InstalledDate] [datetime] NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_BudgetForCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_BudgetForCustomer](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[OriginalAmount] [float] NULL,
	[BudgetAmount] [float] NULL,
	[OriginalQuantity] [float] NULL,
	[BudgetQuantity] [float] NULL,
	[UsedBudgetAmount] [float] NULL,
	[UsedBudgetQuantity] [float] NULL,
	[Remark] [nvarchar](2000) NULL,
	[Removable] [bit] NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[BudgetHeader_ID] [uniqueidentifier] NULL,
	[RowNumber] [bigint] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_dbo.eMobiz_BudgetForCustomer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_BudgetForSalesRoute]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_BudgetForSalesRoute](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[OriginalAmount] [float] NULL,
	[BudgetAmount] [float] NULL,
	[OriginalQuantity] [float] NULL,
	[BudgetQuantity] [float] NULL,
	[UsedBudgetAmount] [float] NULL,
	[UsedBudgetQuantity] [float] NULL,
	[Remark] [nvarchar](2000) NULL,
	[Removable] [bit] NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[BudgetHeader_ID] [uniqueidentifier] NULL,
	[RowNumber] [bigint] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_dbo.eMobiz_BudgetForSalesRoute] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_BudgetHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_BudgetHeader](
	[ID] [uniqueidentifier] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[BudgetName] [nvarchar](510) NOT NULL,
	[ReferenceBudgetCode] [nvarchar](80) NULL,
	[BudgetDate] [datetime2](7) NOT NULL,
	[BudgetType] [nvarchar](40) NOT NULL,
	[BudgetTotal] [float] NOT NULL,
	[BudgetAmount] [float] NULL,
	[BudgetQuantity] [float] NULL,
	[HasScheme] [bit] NULL,
	[SchemeCode] [nvarchar](40) NULL,
	[Description] [nvarchar](2000) NULL,
	[CauseCode] [nvarchar](40) NULL,
	[ReasonCode] [nvarchar](40) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[DeadlineEvaluate] [datetime] NULL,
	[ClosedDate] [datetime] NULL,
	[Objective] [nvarchar](2000) NULL,
	[UnitCost] [float] NULL,
	[TargetType] [nvarchar](40) NULL,
	[SalesInTargetAmount] [float] NULL,
	[SalesOutTargetAmount] [float] NULL,
	[SalesInTargetQuantity] [int] NULL,
	[SalesOutTargetQuantity] [int] NULL,
	[SalesInAchieveAmount] [float] NULL,
	[SalesOutAchieveAmount] [float] NULL,
	[SalesInAchieveQuantity] [int] NULL,
	[SalesOutAchieveQuantity] [int] NULL,
	[SuccessTargetType] [bit] NULL,
	[SuccessObjective] [bit] NULL,
	[SuccessSalesInAchieved] [bit] NULL,
	[SuccessSalesOutAchieved] [bit] NULL,
	[SuccessOverall] [bit] NULL,
	[SalesInAchievedPercentage] [float] NULL,
	[SalesOutAchievedPercentage] [float] NULL,
	[OverallPercentage] [float] NULL,
	[TagerTypeRemark] [nvarchar](2000) NULL,
	[ObjectiveRemark] [nvarchar](2000) NULL,
	[SalesInAchievedRemark] [nvarchar](2000) NULL,
	[SalesOutAchievedRemark] [nvarchar](2000) NULL,
	[OverallRemark] [nvarchar](2000) NULL,
	[GeneralCauseAnalysis] [nvarchar](2000) NULL,
	[SalesRegionLevel] [int] NULL,
	[CustomerHierarchyLevel] [int] NULL,
	[ProductHierarchyLevel] [int] NULL,
	[ClaimFrequency] [nvarchar](40) NULL,
	[ClaimDate] [datetime] NULL,
	[ClaimDayOfWeek] [int] NULL,
	[AdvanceRatio] [float] NULL,
	[AllocationDeadline] [datetime] NULL,
	[AdvanceType] [nvarchar](40) NULL,
	[AdvancePercentage] [float] NULL,
	[NumberOfApprovedLevels] [int] NULL,
	[CurrentApprovedLevel] [int] NULL,
	[ApprovedLevel1] [int] NULL,
	[ApprovedLevel2] [int] NULL,
	[ApprovedLevel3] [int] NULL,
	[ApprovedLevel4] [int] NULL,
	[ApprovedLevel5] [int] NULL,
	[CDNumber] [nvarchar](40) NULL,
	[LicenseNumber] [nvarchar](40) NULL,
	[Remark] [nvarchar](2000) NULL,
	[HasRevision] [bit] NULL,
	[Status] [nvarchar](1) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.eMobiz_BudgetHeader] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_Competitor]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_Competitor](
	[CompetitorCode] [varchar](40) NULL,
	[CompetitorName] [nvarchar](255) NULL,
	[Address] [nvarchar](500) NULL,
	[Address2] [nvarchar](500) NULL,
	[Province] [nvarchar](500) NULL,
	[City] [nvarchar](500) NULL,
	[Phone] [varchar](100) NULL,
	[Fax] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Type] [varchar](40) NULL,
	[Status] [char](1) NULL,
	[Activity] [varchar](40) NULL,
	[Description] [nvarchar](1000) NULL,
	[SpaceCode] [varchar](40) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_CompetitorActivitesCapturedImag]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_CompetitorActivitesCapturedImag](
	[CustomerCode] [varchar](40) NULL,
	[CompetitorActivityCode] [varchar](40) NULL,
	[ImageCode] [varchar](40) NULL,
	[SyncStatus] [char](1) NULL,
	[Description] [nvarchar](510) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_CompetitorActivitesNote]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_CompetitorActivitesNote](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CompetitorActivityCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[Visitdate] [datetime] NULL,
	[PromotionLine] [varchar](40) NULL,
	[PromotionNote] [nvarchar](1000) NULL,
	[Activity] [varchar](40) NULL,
	[ActivityNote] [nvarchar](1000) NULL,
	[Brand] [varchar](40) NULL,
	[Space] [varchar](40) NULL,
	[Product] [varchar](40) NULL,
	[PackType] [varchar](40) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Price] [float] NULL,
	[ReferenceImageCode] [varchar](100) NULL,
	[CompetitorCode] [varchar](40) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_CompetitorActivity]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_CompetitorActivity](
	[CompetitorActivityCode] [varchar](40) NULL,
	[CustomerCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionCode] [varchar](40) NULL,
	[PromotionNotes] [varchar](1000) NULL,
	[ActivityCode] [varchar](40) NULL,
	[ActivityNotes] [varchar](1000) NULL,
	[BrandCode] [varchar](40) NULL,
	[Space] [varchar](40) NULL,
	[CompetitorProductCode] [varchar](40) NULL,
	[CompetitorCode] [varchar](40) NULL,
	[PackTypeCode] [varchar](40) NULL,
	[From] [datetime] NULL,
	[To] [datetime] NULL,
	[Price] [varchar](100) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_CompetitorActivityPhoto]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_CompetitorActivityPhoto](
	[CompetitorActivityCode] [varchar](40) NULL,
	[CustomerCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_CustomerFeedback]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_CustomerFeedback](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[FeedbackID] [int] NULL,
	[Type] [varchar](40) NULL,
	[Description] [nvarchar](1000) NULL,
	[Resolved] [bit] NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_CustomerSatisfaction]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_CustomerSatisfaction](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[SurveyID] [int] NULL,
	[QuestionID] [int] NULL,
	[AnswerID] [int] NULL,
	[Description] [nvarchar](1000) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_DetailVisitPlan]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_DetailVisitPlan](
	[CustomerCode] [varchar](40) NULL,
	[BeatPlanCode] [varchar](40) NULL,
	[SubPlanCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[Sequence] [int] NULL,
	[Isspecialday] [bit] NULL,
	[Remark] [varchar](1000) NULL,
	[Status] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_DisplayAssessmentDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_DisplayAssessmentDetail](
	[CustomerCode] [varchar](40) NULL,
	[AssessmentID] [uniqueidentifier] NULL,
	[SurveyID] [int] NULL,
	[QuestionID] [int] NULL,
	[AnswerID] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_DisplayAssessmentHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_DisplayAssessmentHeader](
	[ID] [uniqueidentifier] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProgramLineID] [int] NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[BeforeImageID] [nvarchar](100) NOT NULL,
	[AfterImageID] [nvarchar](100) NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[SecondaryCustomer_ID] [uniqueidentifier] NULL,
	[SyncStatus] [nvarchar](1) NOT NULL,
	[AssessmentID] [uniqueidentifier] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.eMobiz_DisplayAssessmentHeader] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_DisplayAssessmentPhoto]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_DisplayAssessmentPhoto](
	[ID] [uniqueidentifier] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[AssessmentID] [uniqueidentifier] NOT NULL,
	[SyncStatus] [nvarchar](1) NOT NULL,
	[DisplayAssessmentHeader_ID] [uniqueidentifier] NULL,
	[ImageCode] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[ImagePath] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.eMobiz_DisplayAssessmentPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_EMProgramLine]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_EMProgramLine](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProgramType] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[ApplyForCode] [nvarchar](40) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[PaymentBy] [nvarchar](40) NULL,
	[TargetType] [nvarchar](40) NULL,
	[StartDateRegister] [datetime] NULL,
	[EndDateRegister] [datetime] NULL,
	[StartDatePayReward] [datetime] NULL,
	[EndDatePayReward] [datetime] NULL,
	[Period] [nvarchar](40) NULL,
	[PeriodBefore] [nvarchar](40) NULL,
	[NumberLeverMax] [int] NULL,
	[NumberRateMax] [int] NULL,
	[OfficialAnnouncedDoc] [nvarchar](100) NULL,
	[OfficialAnnouncedDocLink] [nvarchar](255) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ProgramHeader_ID] [uniqueidentifier] NULL,
	[AwardDescription] [nvarchar](1000) NULL,
	[AwardType] [nvarchar](40) NULL,
	[PaymentType] [nvarchar](40) NULL,
	[MaxRegisterSet] [int] NULL,
	[RowNumber] [bigint] NOT NULL,
	[RewardCycle] [int] NULL,
	[ContractType] [nvarchar](40) NULL,
	[PromotionSource] [nvarchar](40) NULL,
 CONSTRAINT [PK_dbo.eMobiz_EMProgramLine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_ExternalOutletCheck]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_ExternalOutletCheck](
	[ExternalOutletCheckCode] [varchar](40) NULL,
	[CustomerCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SyncStatus] [varchar](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_ExternalOutletCheckPhoto]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_ExternalOutletCheckPhoto](
	[ExternalOutletCheckCode] [varchar](40) NULL,
	[Notes] [varchar](1000) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SyncStatus] [varchar](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_OutletCheckAnsweredSurvey]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_OutletCheckAnsweredSurvey](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[CrtDatetime] [datetime] NULL,
	[LUpDatetime] [datetime] NULL,
	[SurveyID] [int] NULL,
	[QuestionID] [int] NULL,
	[AnswerID] [int] NULL,
	[ReferenceImageID] [varchar](100) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_OutletCheckCapturedObservation]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_OutletCheckCapturedObservation](
	[ExternalOutletCheckCode] [varchar](4) NULL,
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[Observation] [nvarchar](1000) NULL,
	[ImageCode] [varchar](100) NULL,
	[ReasonCode] [varchar](40) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_OutletStock]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_OutletStock](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[CheckedCompanyCode] [varchar](40) NULL,
	[ProductCode] [varchar](40) NULL,
	[Quantity] [float] NULL,
	[HasCheck] [bit] NULL,
	[Description] [nvarchar](255) NULL,
	[CompetitorCode] [varchar](40) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_OutletStockExpDate]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_OutletStockExpDate](
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[CheckedCompanyCode] [nvarchar](40) NOT NULL,
	[ProductCode] [nvarchar](40) NOT NULL,
	[OutletStockQuantity] [float] NULL,
	[OutletSalesQuantity] [float] NULL,
	[ExpDate1] [datetime] NULL,
	[StockQuantity1] [float] NULL,
	[ExpDate2] [datetime] NULL,
	[StockQuantity2] [float] NULL,
	[ExpDate3] [datetime] NULL,
	[StockQuantity3] [float] NULL,
	[HasCheck] [bit] NOT NULL,
	[Description] [nvarchar](40) NULL,
	[CompetitorCode] [nvarchar](40) NULL,
	[SyncStatus] [nvarchar](40) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_ProductGroup]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_ProductGroup](
	[ID] [uniqueidentifier] NOT NULL,
	[ProductGroupCode] [nvarchar](40) NOT NULL,
	[GroupType] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ProductGroupName] [nvarchar](255) NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_ProductGroupDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_ProductGroupDetail](
	[ID] [uniqueidentifier] NOT NULL,
	[ProductGroupCode] [nvarchar](40) NOT NULL,
	[LineID] [int] NOT NULL,
	[DetailType] [nvarchar](40) NULL,
	[HierarchyCode] [nvarchar](40) NULL,
	[HierarchyLevel] [int] NULL,
	[SpaceCode] [nvarchar](40) NULL,
	[MaterialType] [nvarchar](40) NULL,
	[ProductCategoryCode] [nvarchar](40) NULL,
	[ProductCategoryLevel] [int] NULL,
	[ProductCode] [nvarchar](40) NULL,
	[UOM] [nvarchar](40) NULL,
	[Quantity] [float] NULL,
	[Description] [nvarchar](1000) NULL,
	[ProductGroup_ID] [uniqueidentifier] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[CompareType] [varchar](1) NULL,
	[Min] [float] NULL,
	[Max] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_ProgramConversion]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_ProgramConversion](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProductCode] [nvarchar](40) NOT NULL,
	[UOM] [nvarchar](40) NOT NULL,
	[Quantity] [float] NULL,
	[BonusPoint] [float] NULL,
	[Amount] [float] NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[ProgramType] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_dbo.eMobiz_ProgramConversion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_ProgramDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_ProgramDetail](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProgramDetailLineID] [int] NOT NULL,
	[SalesProductType] [nvarchar](40) NULL,
	[SalesProductCode] [nvarchar](40) NULL,
	[SalesProductGroupCode] [nvarchar](40) NULL,
	[PaymentQuantity] [int] NULL,
	[PaymentProductType] [nvarchar](40) NULL,
	[PaymentProductCode] [nvarchar](40) NULL,
	[PaymentProductGroupCode] [nvarchar](40) NULL,
	[PaymentUom] [nvarchar](40) NULL,
	[PaymentAmount] [decimal](18, 2) NULL,
	[PaymentDiscount] [decimal](18, 2) NULL,
	[Status] [nvarchar](1) NULL,
	[LevelCode] [nvarchar](40) NULL,
	[LevelDescription] [nvarchar](255) NULL,
	[QuantityFaceDisplay] [int] NULL,
	[Pro_AmountOneFace] [float] NULL,
	[MinimumAmount] [float] NULL,
	[MinimumPoint] [float] NULL,
	[MinimumVolume] [float] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ProgramLine_ID] [uniqueidentifier] NULL,
	[SurveyID] [int] NULL,
	[ProgramType] [nvarchar](40) NOT NULL,
	[SalesUomCode] [nvarchar](40) NULL,
	[CalculateBy] [nvarchar](40) NULL,
	[RowNumber] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.eMobiz_ProgramDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_ProgramHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_ProgramHeader](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NULL,
	[Description] [nvarchar](2000) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Status] [nvarchar](1) NULL,
	[OfficialAnnouncedDoc] [nvarchar](100) NULL,
	[OfficialAnnouncedDocLink] [nvarchar](255) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ProgramType] [nvarchar](40) NOT NULL,
	[RowNumber] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.eMobiz_ProgramHeader] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_ProgramLine]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_ProgramLine](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProgramType] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[ApplyForCode] [nvarchar](40) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[PaymentBy] [nvarchar](40) NULL,
	[TargetType] [nvarchar](40) NULL,
	[StartDateRegister] [datetime] NULL,
	[EndDateRegister] [datetime] NULL,
	[StartDatePayReward] [datetime] NULL,
	[EndDatePayReward] [datetime] NULL,
	[Period] [nvarchar](40) NULL,
	[PeriodBefore] [nvarchar](40) NULL,
	[NumberLeverMax] [int] NULL,
	[NumberRateMax] [int] NULL,
	[OfficialAnnouncedDoc] [nvarchar](100) NULL,
	[OfficialAnnouncedDocLink] [nvarchar](255) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ProgramHeader_ID] [uniqueidentifier] NULL,
	[AwardDescription] [nvarchar](1000) NULL,
	[AwardType] [nvarchar](40) NULL,
	[PaymentType] [nvarchar](40) NULL,
	[MaxRegisterSet] [int] NULL,
	[RowNumber] [bigint] NOT NULL,
	[RewardCycle] [int] NULL,
	[ContractType] [nvarchar](40) NULL,
	[PromotionSource] [nvarchar](40) NULL,
 CONSTRAINT [PK_dbo.eMobiz_ProgramLine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_ProgramPayment]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_ProgramPayment](
	[CustomerCode] [varchar](40) NULL,
	[SalesOrderCode] [varchar](40) NULL,
	[SalesOrderDetailLineID] [int] NULL,
	[ProgramCode] [varchar](40) NULL,
	[ProgramMasterCode] [varchar](40) NULL,
	[ProgramDetailLineID] [int] NULL,
	[ProgramType] [varchar](40) NULL,
	[ProductCode] [varchar](40) NULL,
	[ProductUOMCode] [varchar](40) NULL,
	[IncentiveQuantity] [float] NULL,
	[IncentiveAmount] [float] NULL,
	[AwardDescription] [nvarchar](1000) NULL,
	[UOMQuantity] [float] NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_ProgramRegistrationList]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_ProgramRegistrationList](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProgramDetailLineID] [int] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[RegistrationDate] [datetime2](7) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[QuantityRegister] [float] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[SecondaryCustomer_ID] [uniqueidentifier] NULL,
	[ProgramDetail_ID] [uniqueidentifier] NULL,
	[SyncStatus] [nvarchar](1) NOT NULL,
	[ProgramType] [nvarchar](40) NOT NULL,
	[Remark] [nvarchar](1000) NULL,
	[SystemStatus] [nvarchar](1) NOT NULL,
	[RegisterStatus] [nvarchar](1) NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[ProgramActual_ID] [uniqueidentifier] NULL,
	[TargetTurnover] [float] NULL,
	[TargetPoint] [float] NULL,
	[TargetVolume] [float] NULL,
 CONSTRAINT [PK_dbo.eMobiz_ProgramRegistrationList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_ProgramResult]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_ProgramResult](
	[ProgramCode] [varchar](40) NULL,
	[ProgramMasterCode] [varchar](40) NULL,
	[ProgramDetailLineID] [int] NULL,
	[ProgramType] [varchar](40) NULL,
	[CustomerCode] [varchar](20) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[CheckDate] [datetime] NULL,
	[PassDisplay] [int] NULL,
	[FacePass] [int] NULL,
	[CumulativeTurnover] [float] NULL,
	[CumulativePoint] [float] NULL,
	[CumulativeVolume] [float] NULL,
	[PercenTurnover] [float] NULL,
	[PercenPoint] [float] NULL,
	[PercentVolume] [float] NULL,
	[TotalIncentiveAmount] [float] NULL,
	[FinalIncentiveAmount] [float] NULL,
	[ProductCode] [varchar](40) NULL,
	[ProductUOMCode] [varchar](40) NULL,
	[AwardDescription] [nvarchar](1000) NULL,
	[TotalIncentiveQuantity] [float] NULL,
	[FinalIncentiveQuantity] [float] NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_PromotionDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_PromotionDetail](
	[PromotionCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL,
	[AutoPromotion] [char](1) NULL,
	[SalesProductType] [varchar](40) NULL,
	[SalesProductCode] [varchar](40) NULL,
	[SalesProductGroupCode] [varchar](40) NULL,
	[SalesByQuantity] [int] NULL,
	[SalesUom] [varchar](40) NULL,
	[SalesByAmount] [float] NULL,
	[PromotionQuantity] [float] NULL,
	[PromotionProductType] [varchar](40) NULL,
	[PromotionProductCode] [varchar](40) NULL,
	[PromotionProductGroupCode] [varchar](40) NULL,
	[PromotionUom] [varchar](40) NULL,
	[PromotionAmount] [float] NULL,
	[PromotionDiscount] [float] NULL,
	[Status] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[MinGroupLine] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_PromotionHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_PromotionHeader](
	[PromotionMasterCode] [varchar](40) NULL,
	[Description] [nvarchar](2000) NULL,
	[AutoPromotion] [char](1) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Status] [char](1) NULL,
	[OfficialAnnouncedDoc] [nvarchar](100) NULL,
	[OfficialAnnouncedDocLink] [nvarchar](255) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_PromotionLine]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_PromotionLine](
	[PromotionCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionType] [varchar](40) NULL,
	[Description] [nvarchar](2000) NULL,
	[SalesBy] [varchar](40) NULL,
	[PromotionByQuantity] [bit] NULL,
	[PromotionByAmount] [bit] NULL,
	[PromotionByDiscount] [bit] NULL,
	[ApplyForCode] [varchar](40) NULL,
	[CustomerCode] [varchar](40) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[BudgetCode] [varchar](40) NULL,
	[MultiHigh] [bit] NULL,
	[LineAndGroup] [bit] NULL,
	[Status] [char](1) NULL,
	[AutoPromotion] [char](1) NULL,
	[OfficialAnnouncedDoc] [nvarchar](100) NULL,
	[OfficialAnnouncedDocLink] [nvarchar](255) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[PromotionSource] [varchar](40) NULL,
	[Progressive] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_PromotionResult]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_PromotionResult](
	[CustomerCode] [varchar](40) NULL,
	[SalesOrderCode] [varchar](40) NULL,
	[SalesOrderDetailLineID] [int] NULL,
	[PromotionCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL,
	[AutoPromotion] [char](1) NULL,
	[ProductCode] [varchar](40) NULL,
	[ProductUOMCode] [varchar](40) NULL,
	[UOMQuantity] [float] NULL,
	[PromotionQuantity] [float] NULL,
	[PromotionLineAmount] [float] NULL,
	[FreeItemValue] [float] NULL,
	[PromotionInvoiceAmount] [float] NULL,
	[PromotionGroupAmount] [float] NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_ProspectActivity]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_ProspectActivity](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[ActivityID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Description] [nvarchar](510) NULL,
	[Type] [varchar](40) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Remark] [nvarchar](1000) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[ActivityCode] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_ProspectNonASOActivity]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_ProspectNonASOActivity](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[ActivityID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Description] [nvarchar](510) NULL,
	[Type] [varchar](40) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Remark] [nvarchar](1000) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_ProspectSecondaryCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_ProspectSecondaryCustomer](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[Type] [varchar](40) NULL,
	[SecondaryCustomerName] [nvarchar](255) NULL,
	[LegalOwnerName] [nvarchar](255) NULL,
	[OEMCusBrandName] [nvarchar](255) NULL,
	[ReferenceSecondaryCustomerCode] [varchar](40) NULL,
	[ParentSecondaryCustomerCode] [varchar](40) NULL,
	[ContactName] [nvarchar](255) NULL,
	[Gender] [char](1) NULL,
	[DateOfBirth] [datetime] NULL,
	[GivenName] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[IdentityCard] [varchar](40) NULL,
	[TaxType] [varchar](40) NULL,
	[TaxCode] [varchar](120) NULL,
	[Fax] [varchar](120) NULL,
	[Website] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[NeverEmail] [bit] NULL,
	[ContactDesignation] [nvarchar](255) NULL,
	[Phone] [varchar](80) NULL,
	[Phone2] [varchar](80) NULL,
	[Address] [nvarchar](500) NULL,
	[Address2] [nvarchar](500) NULL,
	[Address3] [nvarchar](500) NULL,
	[Country] [nvarchar](500) NULL,
	[State] [nvarchar](500) NULL,
	[City] [nvarchar](500) NULL,
	[PostCode] [varchar](40) NULL,
	[AgeGroup] [varchar](40) NULL,
	[Hobbies] [nvarchar](500) NULL,
	[OtherHobbies] [nvarchar](500) NULL,
	[FavouriteClub] [nvarchar](500) NULL,
	[OtherFavouriteClub] [nvarchar](500) NULL,
	[EnviromentallyConscious] [nvarchar](500) NULL,
	[WeddingAnniversary] [datetime] NULL,
	[RegionCode] [varchar](40) NULL,
	[RegionL1] [varchar](40) NULL,
	[RegionL2] [varchar](40) NULL,
	[RegionL3] [varchar](40) NULL,
	[RegionL4] [varchar](40) NULL,
	[RegionL5] [varchar](40) NULL,
	[HierarchyCode] [varchar](40) NULL,
	[HierarchyL01] [varchar](40) NULL,
	[HierarchyL02] [varchar](40) NULL,
	[HierarchyL03] [varchar](40) NULL,
	[ShipToAddress] [nvarchar](500) NULL,
	[ShipToAddress2] [nvarchar](500) NULL,
	[ShipToPhone] [varchar](40) NULL,
	[PaymentTerm] [varchar](40) NULL,
	[CreditDay] [int] NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[CreditLimit] [float] NULL,
	[BankCode] [varchar](40) NULL,
	[BankName] [nvarchar](255) NULL,
	[BankAccount] [varchar](80) NULL,
	[BankAccountName] [nvarchar](120) NULL,
	[SecondaryCustomerGroup] [varchar](40) NULL,
	[SecondaryCustomerClass] [varchar](40) NULL,
	[Attribute1] [nvarchar](255) NULL,
	[Attribute2] [nvarchar](255) NULL,
	[Remark] [nvarchar](2000) NULL,
	[Status] [char](1) NULL,
	[SystemStatus] [char](1) NULL,
	[DefaultDeliveryDay] [int] NULL,
	[ContractExpiredDate] [datetime] NULL,
	[Spouse] [nvarchar](255) NULL,
	[Children] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[Interest] [nvarchar](255) NULL,
	[DecisionMaker] [nvarchar](255) NULL,
	[SyncStatus] [char](1) NULL,
	[CompetitorCode] [varchar](40) NULL,
	[ReferenceImageID] [varchar](100) NULL,
	[PotentialVolume] [float] NULL,
	[VisitDate] [datetime] NULL,
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[CustomerSegment] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_SalesForce]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_SalesForce](
	[SalesForceCode] [varchar](40) NULL,
	[SalesForceLevel] [int] NULL,
	[SalesForceName] [nvarchar](255) NULL,
	[SalesForceName2] [nvarchar](255) NULL,
	[SalesForceName3] [nvarchar](255) NULL,
	[Ordinal] [int] NULL,
	[ParentCode] [varchar](40) NULL,
	[Status] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[EmployeeCode] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_SalesOrderDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_SalesOrderDetail](
	[CustomerCode] [varchar](40) NULL,
	[SalesOrderCode] [varchar](40) NULL,
	[ProductCode] [varchar](40) NULL,
	[UnitPrice] [float] NULL,
	[Quantity] [float] NULL,
	[SalesOrderDetailLineID] [int] NULL,
	[UOMCode] [varchar](40) NULL,
	[UOMQuantity] [float] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[FreeItem] [bit] NULL,
	[FreeItemType] [char](1) NULL,
	[OrderDiscount] [float] NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_SalesOrderHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_SalesOrderHeader](
	[CustomerCode] [varchar](40) NULL,
	[SalesOrderCode] [varchar](40) NULL,
	[OrderDate] [datetime] NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[OrderType] [int] NULL,
	[OrderStatus] [char](1) NULL,
	[OrderDiscount] [float] NULL,
	[PlanDeliveryDate] [datetime] NULL,
	[OffRoute] [bit] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[VisitedDate] [datetime] NULL,
	[SyncStatus] [char](1) NULL,
	[ShipAddress] [nvarchar](500) NULL,
	[Notes] [nvarchar](1000) NULL,
	[IsProspect] [bit] NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[GSV] [float] NULL,
	[NIV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_SalesPerson]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eMobiz_SalesPerson](
	[ID] [uniqueidentifier] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesPersonCode] [nvarchar](40) NOT NULL,
	[SalesPersonName] [nvarchar](255) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[DateOfBirth] [datetime] NULL,
	[IdentityCard] [nvarchar](40) NULL,
	[IdentityCardPlace] [nvarchar](120) NULL,
	[IdentityCardDate] [datetime] NULL,
	[IdentityCardAddress] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](80) NULL,
	[Phone2] [nvarchar](80) NULL,
	[Address] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Salesman] [bit] NULL,
	[DeliveryPerson] [bit] NULL,
	[CashCollector] [bit] NULL,
	[Ward] [nvarchar](80) NULL,
	[District] [nvarchar](80) NULL,
	[City] [nvarchar](80) NULL,
	[State] [nvarchar](80) NULL,
	[Country] [nvarchar](80) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[HiredDate] [datetime] NULL,
	[Attribute1] [nvarchar](255) NULL,
	[Attribute2] [nvarchar](255) NULL,
	[Remark] [nvarchar](1000) NULL,
	[Status] [nvarchar](1) NULL,
	[Systemstatus] [nvarchar](1) NULL,
	[PaymentType] [nvarchar](40) NULL,
	[TaxType] [nvarchar](40) NULL,
	[TaxCode] [nvarchar](120) NULL,
	[Address3] [nvarchar](255) NULL,
	[Address4] [nvarchar](255) NULL,
	[Customer_ID] [uniqueidentifier] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.eMobiz_SalesPerson] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eMobiz_SalesRoute]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_SalesRoute](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SalesRouteName] [nvarchar](255) NULL,
	[SalesForceCode] [varchar](40) NULL,
	[SalesForceL1] [varchar](40) NULL,
	[SalesForceL2] [varchar](40) NULL,
	[SalesForceL3] [varchar](40) NULL,
	[SalesForceL4] [varchar](40) NULL,
	[SalesForceL5] [varchar](40) NULL,
	[SalesForceL6] [varchar](40) NULL,
	[SalesTeamCode] [varchar](40) NULL,
	[DefaultDeliveryman] [varchar](40) NULL,
	[Remark] [varchar](1000) NULL,
	[Status] [char](1) NULL,
	[Password] [varchar](40) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[SalesPersonCode] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_SizeandInStoreShare]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_SizeandInStoreShare](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[CheckedCompanyCode] [varchar](40) NULL,
	[Quantity] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_SurveyResult]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_SurveyResult](
	[CustomerCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[TemplateID] [int] NULL,
	[QuestionID] [int] NULL,
	[AnswerID] [int] NULL,
	[AnswerNote] [varchar](4000) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eMobiz_WCSCStepTracking]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eMobiz_WCSCStepTracking](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime2](7) NULL,
	[StepCode] [char](255) NULL,
	[SubStepCode] [char](255) NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[LocationOffset] [float] NULL,
	[Remark] [nvarchar](1000) NULL,
	[SyncStatus] [char](1) NULL,
	[PlanVisitDate] [datetime2](7) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMOrderStatus]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMOrderStatus](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[SystemStatus] [varchar](40) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_EMOrderStatus] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[SalesOrderCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMOrderStatusHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMOrderStatusHistory](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[SystemStatus] [varchar](40) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMOutletCheckCapturedObservation]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMOutletCheckCapturedObservation](
	[ExternalOutletCheckCode] [varchar](4) NULL,
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[Observation] [nvarchar](1000) NULL,
	[ImageCode] [varchar](100) NULL,
	[ReasonCode] [varchar](40) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMOutletSafeStock]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMOutletSafeStock](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[ApplyForCode] [varchar](40) NOT NULL,
	[ProductGroupCode] [varchar](40) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CalCallDuration] [int] NOT NULL,
	[SafeStock] [float] NOT NULL,
	[InitialQuantity] [float] NOT NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK_EMOutletSafeStock] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[ApplyForCode] ASC,
	[ProductGroupCode] ASC,
	[StartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMOutletSafeStockDays]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMOutletSafeStockDays](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[SalesRegionCode] [varchar](40) NOT NULL,
	[Levels] [int] NOT NULL,
	[ProductCode] [varchar](40) NULL,
	[StockDays] [int] NULL,
 CONSTRAINT [PK_OutletSafeStockDays] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[SalesRegionCode] ASC,
	[Levels] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMOutletStock]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMOutletStock](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[CheckedCompanyCode] [varchar](40) NULL,
	[ProductCode] [varchar](40) NULL,
	[Quantity] [float] NULL,
	[HasCheck] [bit] NULL,
	[Description] [nvarchar](255) NULL,
	[CompetitorCode] [varchar](40) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[Send] [bit] NULL CONSTRAINT [DF_EMOutletStock_Send]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMOutletStockExpDate]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMOutletStockExpDate](
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[CheckedCompanyCode] [nvarchar](40) NOT NULL,
	[ProductCode] [nvarchar](40) NOT NULL,
	[OutletStockQuantity] [float] NULL,
	[OutletSalesQuantity] [float] NULL,
	[ExpDate1] [datetime] NULL,
	[StockQuantity1] [float] NULL,
	[ExpDate2] [datetime] NULL,
	[StockQuantity2] [float] NULL,
	[ExpDate3] [datetime] NULL,
	[StockQuantity3] [float] NULL,
	[HasCheck] [bit] NOT NULL CONSTRAINT [DF_EMOutletStockExpDate_HasCheck]  DEFAULT ((0)),
	[Description] [nvarchar](40) NULL,
	[CompetitorCode] [nvarchar](40) NULL,
	[SyncStatus] [nvarchar](40) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL CONSTRAINT [DF_EMOutletStockExpDate_Deleted]  DEFAULT ((0)),
	[RowNumber] [bigint] NOT NULL,
	[Send] [bit] NULL CONSTRAINT [DF_EMOutletStockExpDate_Send]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[Addr1] [nvarchar](300) NOT NULL,
	[Addr2] [nvarchar](300) NULL CONSTRAINT [DF_Employee_Addr2]  DEFAULT ('    '),
	[Sale] [varchar](3) NULL,
	[Phone] [varchar](30) NOT NULL,
	[Active] [char](1) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[TeamID] [varchar](20) NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_Employee_Send]  DEFAULT ((0)),
	[BranchID] [varchar](15) NULL,
	[Sex] [bit] NULL CONSTRAINT [DF_Employee_Sex]  DEFAULT ((0)),
	[CMND] [varchar](15) NULL,
	[Ngaycap] [datetime] NULL,
	[Noicap] [nvarchar](100) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[AllowGPS] [bit] NULL CONSTRAINT [DF_Employee_AllowGPS]  DEFAULT ((1)),
	[UserUpdated] [varchar](40) NULL,
	[DateUpdated] [datetime] NULL,
	[WorkEndDate] [datetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee_Temp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee_Temp](
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[Addr1] [nvarchar](300) NOT NULL,
	[Addr2] [nvarchar](300) NULL,
	[Sale] [varchar](3) NULL,
	[Phone] [varchar](30) NOT NULL,
	[Active] [char](1) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[TeamID] [varchar](20) NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Send] [bit] NOT NULL,
	[BranchID] [varchar](15) NULL,
	[Sex] [bit] NULL,
	[CMND] [varchar](15) NULL,
	[Ngaycap] [datetime] NULL,
	[Noicap] [nvarchar](100) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[AllowGPS] [bit] NULL,
	[UserUpdated] [varchar](40) NULL,
	[DateUpdated] [datetime] NULL,
	[WorkEndDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeCount]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeCount](
	[BranchID] [varchar](50) NOT NULL,
	[DateCount] [datetime] NOT NULL,
	[TotalEmployee] [int] NULL CONSTRAINT [DF_EmployeeCount_EmployeeCount]  DEFAULT ((0)),
	[ActiveEmployee] [int] NULL CONSTRAINT [DF_EmployeeCount_ActiveEmployee]  DEFAULT ((0)),
	[NotActiveEmployee] [int] NULL CONSTRAINT [DF_EmployeeCount_NotActiveEmployee]  DEFAULT ((0)),
 CONSTRAINT [PK_EmployeeCount] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[DateCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeResult]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeResult](
	[BranchID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[Result] [bit] NULL,
	[BeginDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NOT NULL,
	[CreateUser] [varchar](50) NULL,
	[UpdateUser] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeResult] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[EmployeeID] ASC,
	[BeginDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeVisit]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeVisit](
	[BranchID] [varchar](15) NOT NULL,
	[Visit_Date] [datetime] NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[Num_Visited] [int] NULL,
	[Crtd_Datetime] [datetime] NULL,
	[LUpd_Datetime] [datetime] NULL,
	[Crtd_User] [nchar](50) NULL,
	[LUpd_User] [varchar](50) NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_EmployeeVisit] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[Visit_Date] ASC,
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMProductGroup]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMProductGroup](
	[ID] [uniqueidentifier] NOT NULL,
	[ProductGroupCode] [nvarchar](40) NOT NULL,
	[GroupType] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ProductGroupName] [nvarchar](255) NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[Send] [bit] NULL CONSTRAINT [DF_EMProductGroup_Send]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMProductGroupDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMProductGroupDetail](
	[ID] [uniqueidentifier] NOT NULL,
	[ProductGroupCode] [nvarchar](40) NOT NULL,
	[LineID] [int] NOT NULL,
	[DetailType] [nvarchar](40) NULL,
	[HierarchyCode] [nvarchar](40) NULL,
	[HierarchyLevel] [int] NULL,
	[SpaceCode] [nvarchar](40) NULL,
	[MaterialType] [nvarchar](40) NULL,
	[ProductCategoryCode] [nvarchar](40) NULL,
	[ProductCategoryLevel] [int] NULL,
	[ProductCode] [nvarchar](40) NULL,
	[UOM] [nvarchar](40) NULL,
	[Quantity] [float] NULL,
	[Description] [nvarchar](1000) NULL,
	[ProductGroup_ID] [uniqueidentifier] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[Send] [bit] NULL CONSTRAINT [DF_EMProductGroupDetail_Send]  DEFAULT ((0)),
	[CompareType] [varchar](1) NULL DEFAULT (NULL),
	[Min] [float] NULL DEFAULT (NULL),
	[Max] [float] NULL DEFAULT (NULL)
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMProductGroupDetail702]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMProductGroupDetail702](
	[ID] [uniqueidentifier] NOT NULL,
	[ProductGroupCode] [nvarchar](40) NOT NULL,
	[LineID] [int] NOT NULL,
	[DetailType] [nvarchar](40) NULL,
	[HierarchyCode] [nvarchar](40) NULL,
	[HierarchyLevel] [int] NULL,
	[SpaceCode] [nvarchar](40) NULL,
	[MaterialType] [nvarchar](40) NULL,
	[ProductCategoryCode] [nvarchar](40) NULL,
	[ProductCategoryLevel] [int] NULL,
	[ProductCode] [nvarchar](40) NULL,
	[UOM] [nvarchar](40) NULL,
	[Quantity] [float] NULL,
	[Description] [nvarchar](1000) NULL,
	[ProductGroup_ID] [uniqueidentifier] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[Send] [bit] NULL,
	[CompareType] [varchar](1) NULL,
	[Min] [float] NULL,
	[Max] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMProductHierarchy]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMProductHierarchy](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[HierarchyCode] [varchar](40) NOT NULL,
	[HierarchyLevel] [int] NOT NULL,
	[HierarchyName] [nvarchar](255) NULL,
	[HierarchyName2] [nvarchar](255) NULL,
	[HierarchyName3] [nvarchar](255) NULL,
	[Ordinal] [int] NULL,
	[ParentCode] [varchar](40) NULL,
	[Status] [char](1) NULL,
	[Deleted] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_ProductHierarchy_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_ProductHierarchy_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_ProductHierarchy] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[HierarchyCode] ASC,
	[HierarchyLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMProductUOM]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMProductUOM](
	[ProductCode] [nvarchar](40) NOT NULL,
	[UOMCode] [nvarchar](40) NOT NULL,
	[SellingUom] [bit] NOT NULL,
	[UomWeight] [float] NULL,
	[UomVolume] [float] NULL,
	[UomLength] [float] NULL,
	[UomHeight] [float] NULL,
	[Quantity] [float] NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RGBCode] [nvarchar](40) NULL,
	[RowNumber] [bigint] NULL,
	[Send] [bit] NULL CONSTRAINT [DF_EMProductUOM_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_EMProductUOM] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC,
	[UOMCode] ASC,
	[CompanyCode] ASC,
	[SalesOrgCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMProgramActual]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMProgramActual](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProgramDetailLineID] [int] NOT NULL,
	[CustomerCode] [nvarchar](20) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[CumulativeTurnover] [float] NOT NULL,
	[CumulativePoint] [float] NOT NULL,
	[CumulativeVolume] [float] NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ProgramDetail_ID] [uniqueidentifier] NULL,
	[ProgramType] [nvarchar](40) NOT NULL DEFAULT (''),
	[Description] [nvarchar](255) NULL,
	[TargetTurnover] [float] NULL,
	[TargetPoint] [float] NULL,
	[TargetVolume] [float] NULL,
	[RowNumber] [bigint] NOT NULL,
	[RewardAmount] [float] NULL,
	[RewardQuantity] [float] NULL,
	[QualifiedLevel] [int] NULL,
	[LoyaltyLevelCap] [float] NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_dbo.EMProgramActual] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMProgramActual_BAK]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMProgramActual_BAK](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProgramDetailLineID] [int] NOT NULL,
	[CustomerCode] [nvarchar](20) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[CumulativeTurnover] [float] NOT NULL,
	[CumulativePoint] [float] NOT NULL,
	[CumulativeVolume] [float] NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ProgramDetail_ID] [uniqueidentifier] NULL,
	[ProgramType] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[TargetTurnover] [float] NULL,
	[TargetPoint] [float] NULL,
	[TargetVolume] [float] NULL,
	[RowNumber] [bigint] NOT NULL,
	[RewardAmount] [float] NULL,
	[RewardQuantity] [float] NULL,
	[QualifiedLevel] [int] NULL,
	[LoyaltyLevelCap] [float] NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMProgramConversion]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMProgramConversion](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProductCode] [nvarchar](40) NOT NULL,
	[UOM] [nvarchar](40) NOT NULL,
	[Quantity] [float] NULL,
	[BonusPoint] [float] NULL,
	[Amount] [float] NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[ProgramType] [nvarchar](40) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_dbo.EMProgramConversion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMProgramDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMProgramDetail](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProgramDetailLineID] [int] NOT NULL,
	[SalesProductType] [nvarchar](40) NULL,
	[SalesProductCode] [nvarchar](40) NULL,
	[SalesProductGroupCode] [nvarchar](40) NULL,
	[PaymentQuantity] [int] NULL,
	[PaymentProductType] [nvarchar](40) NULL,
	[PaymentProductCode] [nvarchar](40) NULL,
	[PaymentProductGroupCode] [nvarchar](40) NULL,
	[PaymentUom] [nvarchar](40) NULL,
	[PaymentAmount] [decimal](18, 2) NULL,
	[PaymentDiscount] [decimal](18, 2) NULL,
	[Status] [nvarchar](1) NULL,
	[LevelCode] [nvarchar](40) NULL,
	[LevelDescription] [nvarchar](255) NULL,
	[QuantityFaceDisplay] [int] NULL,
	[Pro_AmountOneFace] [float] NULL,
	[MinimumAmount] [float] NULL,
	[MinimumPoint] [float] NULL,
	[MinimumVolume] [float] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ProgramLine_ID] [uniqueidentifier] NULL,
	[SurveyID] [int] NULL,
	[ProgramType] [nvarchar](40) NOT NULL DEFAULT (''),
	[SalesUomCode] [nvarchar](40) NULL,
	[CalculateBy] [nvarchar](40) NULL,
	[RowNumber] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.EMProgramDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMProgramHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMProgramHeader](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NULL,
	[Description] [nvarchar](2000) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Status] [nvarchar](1) NULL,
	[OfficialAnnouncedDoc] [nvarchar](100) NULL,
	[OfficialAnnouncedDocLink] [nvarchar](255) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ProgramType] [nvarchar](40) NOT NULL DEFAULT (''),
	[RowNumber] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.EMProgramHeader] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMProgramLine]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMProgramLine](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProgramType] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[ApplyForCode] [nvarchar](40) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[BudgetCode] [nvarchar](40) NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[PaymentBy] [nvarchar](40) NULL,
	[TargetType] [nvarchar](40) NULL,
	[StartDateRegister] [datetime] NULL,
	[EndDateRegister] [datetime] NULL,
	[StartDatePayReward] [datetime] NULL,
	[EndDatePayReward] [datetime] NULL,
	[Period] [nvarchar](40) NULL,
	[PeriodBefore] [nvarchar](40) NULL,
	[NumberLeverMax] [int] NULL,
	[NumberRateMax] [int] NULL,
	[OfficialAnnouncedDoc] [nvarchar](100) NULL,
	[OfficialAnnouncedDocLink] [nvarchar](255) NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ProgramHeader_ID] [uniqueidentifier] NULL,
	[AwardDescription] [nvarchar](1000) NULL,
	[AwardType] [nvarchar](40) NULL,
	[PaymentType] [nvarchar](40) NULL,
	[MaxRegisterSet] [int] NULL,
	[RowNumber] [bigint] NOT NULL,
	[RewardCycle] [int] NULL,
	[ContractType] [nvarchar](40) NULL,
	[PromotionSource] [nvarchar](40) NULL,
 CONSTRAINT [PK_dbo.EMProgramLine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMProgramRegistrationList]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMProgramRegistrationList](
	[ID] [uniqueidentifier] NOT NULL,
	[ProgramCode] [nvarchar](40) NOT NULL,
	[ProgramMasterCode] [nvarchar](40) NOT NULL,
	[ProgramDetailLineID] [int] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[RegistrationDate] [datetime2](7) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[QuantityRegister] [float] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[SecondaryCustomer_ID] [uniqueidentifier] NULL,
	[ProgramDetail_ID] [uniqueidentifier] NULL,
	[SyncStatus] [nvarchar](1) NOT NULL,
	[ProgramType] [nvarchar](40) NOT NULL,
	[Remark] [nvarchar](1000) NULL,
	[SystemStatus] [nvarchar](1) NOT NULL,
	[RegisterStatus] [nvarchar](1) NOT NULL,
	[RowNumber] [bigint] NOT NULL,
	[ProgramActual_ID] [uniqueidentifier] NULL,
	[TargetTurnover] [float] NULL,
	[TargetPoint] [float] NULL,
	[TargetVolume] [float] NULL,
 CONSTRAINT [PK_dbo.EMProgramRegistrationList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPromotionDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPromotionDetail](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[PromotionCode] [varchar](40) NOT NULL,
	[PromotionMasterCode] [varchar](40) NOT NULL,
	[PromotionDetailLineID] [int] NOT NULL,
	[SalesProductType] [varchar](40) NULL,
	[SalesProductCode] [varchar](40) NULL,
	[SalesProductGroupCode] [varchar](40) NULL,
	[SalesByQuantity] [int] NULL,
	[SalesUOM] [varchar](40) NULL,
	[SalesByAmount] [decimal](18, 2) NULL,
	[PromotionQuantity] [float] NULL,
	[PromotionProductType] [varchar](40) NULL,
	[PromotionProductCode] [varchar](40) NULL,
	[PromotionProductGroupCode] [varchar](40) NULL,
	[PromotionUOM] [varchar](40) NULL,
	[PromotionAmount] [decimal](18, 2) NULL,
	[PromotionDiscount] [decimal](18, 2) NULL,
	[Status] [nvarchar](1) NULL,
	[AutoPromotion] [char](1) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[IsSend] [bit] NULL CONSTRAINT [DF_EMPromotionDetail_IsSend]  DEFAULT ((0)),
	[MinGroupLine] [int] NULL CONSTRAINT [DF_EMPromotionDetail_MinGroupLine]  DEFAULT ((0)),
 CONSTRAINT [PK_EMPromotionDetail] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[PromotionCode] ASC,
	[PromotionMasterCode] ASC,
	[PromotionDetailLineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPromotionHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPromotionHeader](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[PromotionMasterCode] [varchar](40) NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Status] [char](1) NOT NULL,
	[AutoPromotion] [char](1) NOT NULL,
	[OfficialAnnouncedDoc] [nvarchar](100) NOT NULL,
	[OfficialAnnouncedDocLink] [nvarchar](255) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[IsSend] [bit] NULL CONSTRAINT [DF_EMPromotionHeader_IsSend]  DEFAULT ((0)),
 CONSTRAINT [PK_EMPromotionMaster] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[PromotionMasterCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPromotionLine]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPromotionLine](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[PromotionCode] [varchar](40) NOT NULL,
	[PromotionMasterCode] [varchar](40) NOT NULL,
	[PromotionType] [varchar](40) NULL,
	[Description] [nvarchar](2000) NULL,
	[SalesBy] [varchar](40) NULL,
	[PromotionByQuantity] [bit] NULL,
	[PromotionByAmount] [bit] NULL,
	[PromotionByDiscount] [bit] NULL,
	[ApplyForCode] [varchar](40) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[BudgetCode] [varchar](40) NULL,
	[MultiHigh] [bit] NULL,
	[Status] [char](1) NULL,
	[AutoPromotion] [char](1) NULL,
	[OfficialAnnouncedDoc] [nvarchar](100) NULL,
	[OfficialAnnouncedDocLink] [nvarchar](255) NULL,
	[LineAndGroup] [bit] NULL,
	[CustomerCode] [varchar](40) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[IsSend] [bit] NULL CONSTRAINT [DF_EMPromotionLine_IsSend]  DEFAULT ((0)),
	[PromotionSource] [varchar](40) NULL,
	[Progressive] [bit] NULL CONSTRAINT [DF_EMPromotionLine_Progressive]  DEFAULT ((0)),
 CONSTRAINT [PK_EMPromotion] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[PromotionCode] ASC,
	[PromotionMasterCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPromotionResult]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPromotionResult](
	[CustomerCode] [varchar](40) NULL,
	[SalesOrderCode] [varchar](40) NULL,
	[SalesOrderDetailLineID] [int] NULL,
	[PromotionCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL,
	[AutoPromotion] [char](1) NULL,
	[ProductCode] [varchar](40) NULL,
	[ProductUOMCode] [varchar](40) NULL,
	[UOMQuantity] [float] NULL,
	[PromotionQuantity] [float] NULL,
	[PromotionLineAmount] [float] NULL,
	[FreeItemValue] [float] NULL,
	[PromotionInvoiceAmount] [float] NULL,
	[PromotionGroupAmount] [float] NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[IsSend] [bit] NULL CONSTRAINT [DF_EMPromotionResult_IsSend]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPromotionResultA]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPromotionResultA](
	[CustomerCode] [varchar](40) NULL,
	[SalesOrderCode] [varchar](40) NULL,
	[SalesOrderDetailLineID] [int] NULL,
	[PromotionCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL,
	[AutoPromotion] [char](1) NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[ProductUOMCode] [varchar](40) NOT NULL,
	[UOMQuantity] [float] NOT NULL,
	[PromotionQuantity] [float] NOT NULL,
	[PromotionLineAmount] [float] NOT NULL,
	[FreeItemValue] [float] NOT NULL,
	[PromotionInvoiceAmount] [float] NOT NULL,
	[PromotionGroupAmount] [float] NOT NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[IsSend] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPromotionResultHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPromotionResultHistory](
	[CustomerCode] [varchar](40) NULL,
	[SalesOrderCode] [varchar](40) NULL,
	[SalesOrderDetailLineID] [int] NULL,
	[PromotionCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL,
	[AutoPromotion] [char](1) NULL,
	[ProductCode] [varchar](40) NULL,
	[ProductUOMCode] [varchar](40) NULL,
	[UOMQuantity] [float] NULL,
	[PromotionQuantity] [float] NULL,
	[PromotionLineAmount] [float] NULL,
	[FreeItemValue] [float] NULL,
	[PromotionInvoiceAmount] [float] NULL,
	[PromotionGroupAmount] [float] NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[IsSend] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPromotionResultTemp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPromotionResultTemp](
	[CustomerCode] [varchar](40) NULL,
	[SalesOrderCode] [varchar](40) NULL,
	[SalesOrderDetailLineID] [int] NULL,
	[PromotionCode] [varchar](40) NULL,
	[PromotionMasterCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL,
	[AutoPromotion] [char](1) NULL,
	[ProductCode] [varchar](40) NULL,
	[ProductUOMCode] [varchar](40) NULL,
	[UOMQuantity] [float] NULL,
	[PromotionQuantity] [float] NULL,
	[PromotionLineAmount] [float] NULL,
	[FreeItemValue] [float] NULL,
	[PromotionInvoiceAmount] [float] NULL,
	[PromotionGroupAmount] [float] NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[IsSend] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMProspectBill]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMProspectBill](
	[SalesOrderCode] [varchar](40) NOT NULL,
	[BranchID] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[IsSend] [bit] NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_EMProspectBill_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_EMProspectBill] PRIMARY KEY CLUSTERED 
(
	[SalesOrderCode] ASC,
	[BranchID] ASC,
	[SecondaryCustomerCode] ASC,
	[CustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMProspectBilltemp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMProspectBilltemp](
	[SalesOrderCode] [varchar](40) NOT NULL,
	[BranchID] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[IsSend] [bit] NULL,
	[DateCreated] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMProspectNonASOActivity]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMProspectNonASOActivity](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[ActivityID] [int] NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[Description] [nvarchar](510) NULL,
	[Type] [varchar](40) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Remark] [nvarchar](1000) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_EMProspectNonASOActivity] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[SecondaryCustomerCode] ASC,
	[ActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMProspectSecondaryCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMProspectSecondaryCustomer](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[Type] [varchar](40) NULL,
	[SecondaryCustomerName] [nvarchar](255) NULL,
	[LegalOwnerName] [nvarchar](255) NULL,
	[OEMCusBrandName] [nvarchar](255) NULL,
	[ReferenceSecondaryCustomerCode] [varchar](40) NULL,
	[ParentSecondaryCustomerCode] [varchar](40) NULL,
	[ContactName] [nvarchar](255) NULL,
	[Gender] [char](1) NULL,
	[DateOfBirth] [datetime] NULL,
	[GivenName] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[IdentityCard] [varchar](40) NULL,
	[TaxType] [varchar](40) NULL,
	[TaxCode] [varchar](120) NULL,
	[Fax] [varchar](120) NULL,
	[Website] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[NeverEmail] [bit] NULL,
	[ContactDesignation] [nvarchar](255) NULL,
	[Phone] [varchar](80) NULL,
	[Phone2] [varchar](80) NULL,
	[Address] [nvarchar](500) NULL,
	[Address2] [nvarchar](500) NULL,
	[Address3] [nvarchar](500) NULL,
	[Country] [nvarchar](500) NULL,
	[State] [nvarchar](500) NULL,
	[City] [nvarchar](500) NULL,
	[PostCode] [varchar](40) NULL,
	[AgeGroup] [varchar](40) NULL,
	[Hobbies] [nvarchar](500) NULL,
	[OtherHobbies] [nvarchar](500) NULL,
	[FavouriteClub] [nvarchar](500) NULL,
	[OtherFavouriteClub] [nvarchar](500) NULL,
	[EnviromentallyConscious] [nvarchar](500) NULL,
	[WeddingAnniversary] [datetime] NULL,
	[RegionCode] [varchar](40) NULL,
	[RegionL1] [varchar](40) NULL,
	[RegionL2] [varchar](40) NULL,
	[RegionL3] [varchar](40) NULL,
	[RegionL4] [varchar](40) NULL,
	[RegionL5] [varchar](40) NULL,
	[HierarchyCode] [varchar](40) NULL,
	[HierarchyL01] [varchar](40) NULL,
	[HierarchyL02] [varchar](40) NULL,
	[HierarchyL03] [varchar](40) NULL,
	[ShipToAddress] [nvarchar](500) NULL,
	[ShipToAddress2] [nvarchar](500) NULL,
	[ShipToPhone] [varchar](40) NULL,
	[PaymentTerm] [varchar](40) NULL,
	[CreditDay] [int] NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[CreditLimit] [float] NULL,
	[BankCode] [varchar](40) NULL,
	[BankName] [nvarchar](255) NULL,
	[BankAccount] [varchar](80) NULL,
	[BankAccountName] [nvarchar](120) NULL,
	[SecondaryCustomerGroup] [varchar](40) NULL,
	[SecondaryCustomerClass] [varchar](40) NULL,
	[Attribute1] [nvarchar](255) NULL,
	[Attribute2] [nvarchar](255) NULL,
	[Remark] [nvarchar](2000) NULL,
	[Status] [char](1) NULL,
	[SystemStatus] [char](1) NULL,
	[DefaultDeliveryDay] [int] NULL,
	[ContractExpiredDate] [datetime] NULL,
	[Spouse] [nvarchar](255) NULL,
	[Children] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[Interest] [nvarchar](255) NULL,
	[DecisionMaker] [nvarchar](255) NULL,
	[SyncStatus] [char](1) NULL,
	[CompetitorCode] [varchar](40) NULL,
	[ReferenceImageID] [varchar](100) NULL,
	[PotentialVolume] [float] NULL,
	[VisitDate] [datetime] NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL,
	[CustomerSegment] [varchar](40) NULL,
	[IsSend] [bigint] NULL CONSTRAINT [DF_EMProspectSecondaryCustomer_IsSend]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesForce]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesForce](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[SalesForceCode] [varchar](40) NOT NULL,
	[SalesForceLevel] [int] NOT NULL,
	[SalesForceName] [nvarchar](255) NOT NULL,
	[SalesForceName2] [nvarchar](255) NULL,
	[SalesForceName3] [nvarchar](255) NULL,
	[Ordinal] [int] NOT NULL,
	[ParentCode] [varchar](40) NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[EmployeeCode] [varchar](40) NULL,
 CONSTRAINT [PK_EMSalesForce] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[SalesForceCode] ASC,
	[SalesForceLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesInvoiceDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesInvoiceDetail](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[WarehouseType] [nvarchar](40) NULL,
	[WarehouseLocCode] [nvarchar](40) NULL,
	[WarehouseCode] [nvarchar](40) NULL,
	[InvoiceCode] [varchar](40) NOT NULL,
	[LineNo] [int] NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[FreeItem] [bit] NOT NULL,
	[Quantity] [float] NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[BaseQuantity] [float] NOT NULL,
	[BaseUOMCode] [varchar](40) NOT NULL,
	[InvoiceDiscount] [float] NOT NULL,
	[IncentivePoint] [float] NOT NULL,
	[TotalPoint] [float] NOT NULL,
	[POSM] [bit] NOT NULL,
	[Ordinal] [int] NULL,
	[BaseOrderQuantity] [float] NULL,
	[BaseDeliveryQuantity] [float] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[UnitPrice] [float] NULL,
	[ProgramMasterCode] [nvarchar](40) NULL,
	[ProgramCode] [nvarchar](40) NULL,
	[ProgramDetailLineID] [int] NULL,
	[ProgramType] [nvarchar](40) NULL,
	[ReferenceCode] [nvarchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesInvoiceDetailHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesInvoiceDetailHistory](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[WarehouseType] [nvarchar](40) NULL,
	[WarehouseLocCode] [nvarchar](40) NULL,
	[WarehouseCode] [nvarchar](40) NULL,
	[InvoiceCode] [varchar](40) NOT NULL,
	[LineNo] [int] NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[FreeItem] [bit] NOT NULL,
	[Quantity] [float] NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[BaseQuantity] [float] NOT NULL,
	[BaseUOMCode] [varchar](40) NOT NULL,
	[InvoiceDiscount] [float] NOT NULL,
	[IncentivePoint] [float] NOT NULL,
	[TotalPoint] [float] NOT NULL,
	[POSM] [bit] NOT NULL,
	[Ordinal] [int] NULL,
	[BaseOrderQuantity] [float] NULL,
	[BaseDeliveryQuantity] [float] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[UnitPrice] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesInvoiceHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesInvoiceHeader](
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[InvoiceCode] [nvarchar](40) NOT NULL,
	[SalesOrderCode] [nvarchar](40) NOT NULL,
	[Invoicedate] [datetime] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[OrderType] [int] NOT NULL,
	[InvoiceDiscount] [float] NOT NULL,
	[Deliverydate] [datetime] NOT NULL,
	[DeliveryAddress] [nvarchar](255) NOT NULL,
	[OffRoute] [bit] NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[SalesPersonCode] [nvarchar](40) NOT NULL,
	[OrderDateTime] [datetime] NOT NULL,
	[DeliveryDateTime] [datetime] NOT NULL,
	[InvoiceDateTime] [datetime] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[GSV] [float] NOT NULL,
	[NIV] [float] NOT NULL,
 CONSTRAINT [PK_EMSalesInvoiceHeader_1] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[InvoiceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesInvoiceHeaderHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesInvoiceHeaderHistory](
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[InvoiceCode] [nvarchar](40) NOT NULL,
	[SalesOrderCode] [nvarchar](40) NOT NULL,
	[Invoicedate] [datetime] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[OrderType] [int] NOT NULL,
	[InvoiceDiscount] [float] NOT NULL,
	[Deliverydate] [datetime] NOT NULL,
	[DeliveryAddress] [nvarchar](255) NOT NULL,
	[OffRoute] [bit] NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[SalesPersonCode] [nvarchar](40) NOT NULL,
	[OrderDateTime] [datetime] NOT NULL,
	[DeliveryDateTime] [datetime] NOT NULL,
	[InvoiceDateTime] [datetime] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
 CONSTRAINT [PK_EMSalesInvoiceHeader] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[InvoiceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderDetail](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[SalesOrderDetailLineID] [int] NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[FreeItem] [bit] NOT NULL,
	[Quantity] [float] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[UOMQuantity] [float] NULL,
	[OrderDiscount] [float] NULL,
	[Ordinal] [int] NULL,
	[Send] [bit] NOT NULL,
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_EMSalesOrderDetail_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_EMSalesOrderDetail_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_EMSalesOrderDetail] PRIMARY KEY NONCLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[SalesOrderCode] ASC,
	[SalesOrderDetailLineID] ASC,
	[UOMCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderDetailDMS]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderDetailDMS](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[SalesOrderDetailLineID] [int] NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[FreeItem] [bit] NOT NULL,
	[Quantity] [float] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[UOMQuantity] [float] NULL,
	[OrderDiscount] [float] NULL,
	[Ordinal] [int] NULL,
	[Send] [bit] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderDetailDMSHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderDetailDMSHistory](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[SalesOrderDetailLineID] [int] NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[FreeItem] [bit] NOT NULL,
	[Quantity] [float] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[UOMQuantity] [float] NULL,
	[OrderDiscount] [float] NULL,
	[Ordinal] [int] NULL,
	[Send] [bit] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderDetailHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderDetailHistory](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[SalesOrderDetailLineID] [int] NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[FreeItem] [bit] NOT NULL,
	[Quantity] [float] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[UOMQuantity] [float] NULL,
	[OrderDiscount] [float] NULL,
	[Ordinal] [int] NULL,
	[Send] [bit] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderDetailnotdelete]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderDetailnotdelete](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[SalesOrderDetailLineID] [int] NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[FreeItem] [bit] NOT NULL,
	[Quantity] [float] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[UOMQuantity] [float] NULL,
	[OrderDiscount] [float] NULL,
	[Ordinal] [int] NULL,
	[Send] [bit] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderDetailNotSend]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderDetailNotSend](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[SalesOrderDetailLineID] [int] NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[FreeItem] [bit] NOT NULL,
	[Quantity] [float] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[UOMQuantity] [float] NULL,
	[OrderDiscount] [float] NULL,
	[Ordinal] [int] NULL,
	[Send] [bit] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderDetailTemp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderDetailTemp](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[SalesOrderDetailLineID] [int] NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[FreeItem] [bit] NOT NULL,
	[Quantity] [float] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[UOMQuantity] [float] NULL,
	[OrderDiscount] [float] NULL,
	[Ordinal] [int] NULL,
	[Send] [bit] NOT NULL,
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_EMSalesOrderDetailTemp_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_EMSalesOrderDetailTemp_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_EMSalesOrderDetailTemp] PRIMARY KEY NONCLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[SalesOrderCode] ASC,
	[SalesOrderDetailLineID] ASC,
	[UOMCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderHeader](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[OrderType] [int] NOT NULL,
	[OrderDiscount] [float] NOT NULL,
	[OrderStatus] [char](1) NOT NULL,
	[PlanDeliveryDate] [datetime] NOT NULL,
	[ShipAddress] [nvarchar](255) NOT NULL,
	[OffRoute] [bit] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[VisitedDate] [datetime] NULL,
	[Send] [bit] NOT NULL,
	[Notes] [nvarchar](1000) NULL,
	[IsProspect] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[ImportDate] [datetime] NULL CONSTRAINT [DF_EMSalesOrderHeader_ImportDate]  DEFAULT (getdate()),
	[GSV] [float] NULL CONSTRAINT [DF_EMSalesOrderHeader_GSV]  DEFAULT ((0)),
	[NIV] [float] NULL CONSTRAINT [DF_EMSalesOrderHeader_NIV]  DEFAULT ((0)),
 CONSTRAINT [PK_EMSalesOrderHeader] PRIMARY KEY NONCLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[SalesOrderCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderHeaderDMS]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderHeaderDMS](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[OrderType] [int] NOT NULL,
	[OrderDiscount] [float] NOT NULL,
	[OrderStatus] [char](1) NOT NULL,
	[PlanDeliveryDate] [datetime] NOT NULL,
	[ShipAddress] [nvarchar](255) NOT NULL,
	[OffRoute] [bit] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[VisitedDate] [datetime] NULL,
	[Send] [bit] NOT NULL,
	[Notes] [nvarchar](1000) NULL,
	[IsProspect] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[ImportDate] [datetime] NULL,
	[GSV] [float] NULL,
	[NIV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderHeaderDMSBackup]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderHeaderDMSBackup](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[OrderType] [int] NOT NULL,
	[OrderDiscount] [float] NOT NULL,
	[OrderStatus] [char](1) NOT NULL,
	[PlanDeliveryDate] [datetime] NOT NULL,
	[ShipAddress] [nvarchar](255) NOT NULL,
	[OffRoute] [bit] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[VisitedDate] [datetime] NULL,
	[Send] [bit] NOT NULL,
	[Notes] [nvarchar](1000) NULL,
	[IsProspect] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[ImportDate] [datetime] NULL,
	[GSV] [float] NULL,
	[NIV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderHeaderDMSHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderHeaderDMSHistory](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[OrderType] [int] NOT NULL,
	[OrderDiscount] [float] NOT NULL,
	[OrderStatus] [char](1) NOT NULL,
	[PlanDeliveryDate] [datetime] NOT NULL,
	[ShipAddress] [nvarchar](255) NOT NULL,
	[OffRoute] [bit] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[VisitedDate] [datetime] NULL,
	[Send] [bit] NOT NULL,
	[Notes] [nvarchar](1000) NULL,
	[IsProspect] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[ImportDate] [datetime] NULL,
	[GSV] [float] NULL,
	[NIV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderHeaderHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderHeaderHistory](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[OrderType] [int] NOT NULL,
	[OrderDiscount] [float] NOT NULL,
	[OrderStatus] [char](1) NOT NULL,
	[PlanDeliveryDate] [datetime] NOT NULL,
	[ShipAddress] [nvarchar](255) NOT NULL,
	[OffRoute] [bit] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[VisitedDate] [datetime] NULL,
	[Send] [bit] NOT NULL,
	[Notes] [nvarchar](1000) NULL,
	[IsProspect] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[ImportDate] [datetime] NULL,
	[GSV] [float] NULL,
	[NIV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderHeadernotdelete]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderHeadernotdelete](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[OrderType] [int] NOT NULL,
	[OrderDiscount] [float] NOT NULL,
	[OrderStatus] [char](1) NOT NULL,
	[PlanDeliveryDate] [datetime] NOT NULL,
	[ShipAddress] [nvarchar](255) NOT NULL,
	[OffRoute] [bit] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[VisitedDate] [datetime] NULL,
	[Send] [bit] NOT NULL,
	[Notes] [nvarchar](1000) NULL,
	[IsProspect] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[ImportDate] [datetime] NULL,
	[GSV] [float] NULL,
	[NIV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderHeaderNotSend]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderHeaderNotSend](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[OrderType] [int] NOT NULL,
	[OrderDiscount] [float] NOT NULL,
	[OrderStatus] [char](1) NOT NULL,
	[PlanDeliveryDate] [datetime] NOT NULL,
	[ShipAddress] [nvarchar](255) NOT NULL,
	[OffRoute] [bit] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[VisitedDate] [datetime] NULL,
	[Send] [bit] NOT NULL,
	[Notes] [nvarchar](1000) NULL,
	[IsProspect] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[ImportDate] [datetime] NULL,
	[GSV] [float] NULL,
	[NIV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderHeaderTemp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderHeaderTemp](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[OrderType] [int] NOT NULL,
	[OrderDiscount] [float] NOT NULL,
	[OrderStatus] [char](1) NOT NULL,
	[PlanDeliveryDate] [datetime] NOT NULL,
	[ShipAddress] [nvarchar](255) NOT NULL,
	[OffRoute] [bit] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[VisitedDate] [datetime] NULL,
	[Send] [bit] NOT NULL,
	[Notes] [nvarchar](1000) NULL,
	[IsProspect] [bit] NULL,
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_EMSalesOrderHeaderTemp_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_EMSalesOrderHeaderTemp_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
	[ImportDate] [datetime] NULL CONSTRAINT [DF_EMSalesOrderHeaderTemp_ImportDate]  DEFAULT (getdate()),
	[GSV] [float] NULL CONSTRAINT [DF_EMSalesOrderHeaderTemp_GSV]  DEFAULT ((0)),
	[NIV] [float] NULL CONSTRAINT [DF_EMSalesOrderHeaderTemp_NIV]  DEFAULT ((0)),
 CONSTRAINT [PK_EMSalesOrderHeaderTemp] PRIMARY KEY NONCLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[SalesOrderCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesOrderStock]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesOrderStock](
	[BranchID] [varchar](40) NOT NULL,
	[SiteID] [varchar](4) NOT NULL,
	[EmployeeID] [varchar](40) NULL,
	[InvtID] [varchar](40) NOT NULL,
	[QtyOpen] [float] NULL,
	[QtyIN] [int] NULL,
	[QtyOut] [int] NULL,
	[QtyRe] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesRegion]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesRegion](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[SalesRegionCode] [varchar](40) NOT NULL,
	[SalesRegionLevel] [int] NOT NULL,
	[SalesRegionName] [nvarchar](255) NOT NULL,
	[SalesRegionName2] [nvarchar](255) NULL,
	[SalesRegionName3] [nvarchar](255) NULL,
	[Ordinal] [int] NOT NULL,
	[ParentCode] [varchar](40) NOT NULL,
	[Status] [nvarchar](1) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_EMSalesRegion] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[SalesRegionCode] ASC,
	[SalesRegionLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesRoute]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesRoute](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesRouteName] [nvarchar](255) NOT NULL,
	[SalesForceCode] [varchar](40) NULL,
	[SalesForceL1] [varchar](40) NULL,
	[SalesForceL2] [varchar](40) NULL,
	[SalesForceL3] [varchar](40) NULL,
	[SalesForceL4] [varchar](40) NULL,
	[SalesForceL5] [varchar](40) NULL,
	[SalesForceL6] [varchar](40) NULL,
	[SalesTeamCode] [varchar](40) NOT NULL,
	[DefaultDeliveryman] [varchar](40) NOT NULL,
	[Remark] [nvarchar](1000) NULL,
	[Status] [char](1) NOT NULL,
	[Password] [varchar](40) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_EMSalesRoute] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[SalesRouteCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesRouteFCSActual]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesRouteFCSActual](
	[TargetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Actual] [float] NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.SalesRouteFCSActual] PRIMARY KEY CLUSTERED 
(
	[TargetCode] ASC,
	[CustomerCode] ASC,
	[SalesRouteCode] ASC,
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesRouteFCSTargetDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesRouteFCSTargetDetail](
	[TargetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[Target] [float] NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Target2] [float] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.EMSalesRouteFCSTargetDetail] PRIMARY KEY CLUSTERED 
(
	[TargetCode] ASC,
	[CustomerCode] ASC,
	[SalesRouteCode] ASC,
	[CompanyCode] ASC,
	[SalesOrgCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesRouteFCSTargetHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesRouteFCSTargetHeader](
	[TargetCode] [nvarchar](40) NOT NULL,
	[TargetName] [nvarchar](255) NOT NULL,
	[TargetType] [nvarchar](40) NOT NULL,
	[ApplyForCode] [nvarchar](40) NOT NULL,
	[Year] [nvarchar](4) NOT NULL,
	[ProductType] [nvarchar](40) NOT NULL,
	[ProductGroupCode] [nvarchar](40) NULL,
	[ProductCode] [nvarchar](40) NULL,
	[OnOffRoute] [nvarchar](40) NULL,
	[Status] [nvarchar](1) NOT NULL,
	[MinimumAmount] [float] NULL,
	[MinimumQuantity] [float] NULL,
	[UOM] [nvarchar](40) NULL,
	[MinimumPoint] [float] NULL,
	[MinimumPC] [int] NULL,
	[MinimumSellSKU] [int] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[PeriodID] [int] NOT NULL,
	[TargetUOMType] [nvarchar](40) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[FreeItemIncluded] [bit] NULL,
	[DisplayFreeItemIncluded] [bit] NULL,
	[UOMType] [nvarchar](40) NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.EMSalesRouteFCSTargetHeader] PRIMARY KEY CLUSTERED 
(
	[TargetCode] ASC,
	[CompanyCode] ASC,
	[SalesOrgCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSalesRoutePeriod]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMSalesRoutePeriod](
	[Year] [nvarchar](4) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[NumberofSecondaryCustomer] [int] NOT NULL,
	[NumberofVisitplan] [int] NOT NULL,
	[ASO] [int] NOT NULL,
	[TotalCoverageSecondaryCustomer] [int] NOT NULL,
	[PC] [int] NOT NULL,
	[TotalSalesInvoice] [int] NOT NULL,
	[TL] [int] NOT NULL,
	[TotalSKU] [int] NOT NULL,
	[OnRouteTurnOver] [float] NOT NULL,
	[TotalTurnover] [float] NOT NULL,
	[OnRouteVolume] [float] NOT NULL,
	[TotalVolume] [float] NOT NULL,
	[AV] [int] NOT NULL,
	[TotalVisited] [int] NOT NULL,
	[NumberofNewSecondaryCustomer] [int] NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[CycleID] [int] NOT NULL DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMSalesTeamProductHierarchy]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSalesTeamProductHierarchy](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[SalesTeamCode] [varchar](40) NOT NULL,
	[LineNo] [varchar](255) NOT NULL,
	[HierarchyCode] [varchar](40) NULL,
	[HierarchyLevel] [int] NULL,
	[SpaceCode] [varchar](40) NULL,
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_EMSalesTeamHierarchy_Crtd_DateTime]  DEFAULT (getdate()),
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_EMSalesTeamHierarchy_LUpd_DateTime]  DEFAULT (getdate()),
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_EMSalesTeamHierarchy] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[SalesTeamCode] ASC,
	[LineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSCFCSTargetActual]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSCFCSTargetActual](
	[TargetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Actual] [float] NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
 CONSTRAINT [PK_EMSCFCSTargetActual] PRIMARY KEY CLUSTERED 
(
	[TargetCode] ASC,
	[CustomerCode] ASC,
	[SecondaryCustomerCode] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSCFCSTargetDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSCFCSTargetDetail](
	[TargetCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[Target] [float] NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
 CONSTRAINT [PK_EMSCFCSTargetDetail] PRIMARY KEY CLUSTERED 
(
	[TargetCode] ASC,
	[CustomerCode] ASC,
	[SecondaryCustomerCode] ASC,
	[CompanyCode] ASC,
	[SalesOrgCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSCFCSTargetHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSCFCSTargetHeader](
	[TargetCode] [nvarchar](40) NOT NULL,
	[TargetName] [nvarchar](255) NOT NULL,
	[TargetType] [nvarchar](40) NOT NULL,
	[ApplyForCode] [nvarchar](40) NOT NULL,
	[Year] [nvarchar](4) NOT NULL,
	[ProductType] [nvarchar](40) NOT NULL,
	[ProductGroupCode] [nvarchar](40) NULL,
	[ProductCode] [nvarchar](40) NULL,
	[OnOffRoute] [nvarchar](40) NULL,
	[Status] [nvarchar](1) NOT NULL,
	[MinimumAmount] [float] NULL,
	[MinimumQuantity] [float] NULL,
	[UOM] [nvarchar](40) NULL,
	[MinimumPoint] [float] NULL,
	[MinimumPC] [int] NULL,
	[MinimumSellSKU] [int] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[PeriodID] [int] NOT NULL,
	[TargetUOMType] [nvarchar](40) NOT NULL,
	[FreeItemIncluded] [bit] NULL,
	[DisplayFreeItemIncluded] [bit] NULL,
	[UOMType] [nvarchar](40) NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
 CONSTRAINT [PK_EMSCFCSTargetHeader] PRIMARY KEY CLUSTERED 
(
	[TargetCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSecondaryCustomerPeriod]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSecondaryCustomerPeriod](
	[Year] [varchar](4) NULL,
	[CycleID] [int] NULL,
	[CustomerCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[TimeSpend] [float] NULL,
	[NumberofVisitplan] [int] NULL,
	[PC] [int] NULL,
	[TotalSalesInvoice] [int] NULL,
	[TL] [int] NULL,
	[TotalSKU] [int] NULL,
	[OnRouteTurnOver] [float] NULL,
	[TotalTurnover] [float] NULL,
	[OnRouteVolume] [float] NULL,
	[TotalVolume] [float] NULL,
	[AV] [int] NULL,
	[TotalVisited] [int] NULL,
	[IsNewSecondaryCustomer] [bit] NULL,
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSecondaryCustomerStock]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSecondaryCustomerStock](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[CheckedCompanyCode] [varchar](40) NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[Quantity] [float] NOT NULL,
	[HasCheck] [bit] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Crtd_User] [varchar](20) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
 CONSTRAINT [PK_EMSecondaryCustomerStock] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[SecondaryCustomerCode] ASC,
	[VisitDate] ASC,
	[CheckedCompanyCode] ASC,
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSecondaryCustomerStockChecklist]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSecondaryCustomerStockChecklist](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[ChecklistCode] [varchar](40) NOT NULL,
	[ChecklistName] [nvarchar](100) NOT NULL,
	[ApplyForCode] [varchar](40) NOT NULL,
	[ProductGroupCode] [varchar](40) NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[Remark] [nvarchar](1000) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
 CONSTRAINT [PK_EMSecondaryCustomerStockChecklist] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[ChecklistCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSecondarySalePriceDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSecondarySalePriceDetail](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[PlanCode] [varchar](40) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[SellingPrice] [float] NOT NULL,
	[IncentivePoint] [float] NOT NULL,
	[Remark] [nvarchar](1000) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_EMSecondarySalePriceDetail] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[PlanCode] ASC,
	[StartDate] ASC,
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSecondarySalePriceHeader]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSecondarySalePriceHeader](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[PlanCode] [varchar](40) NOT NULL,
	[ApplyforCode] [varchar](40) NOT NULL,
	[PlanDate] [datetime] NOT NULL,
	[PriceLevel] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Remark] [nvarchar](1000) NULL,
	[Status] [bit] NOT NULL,
	[SystemStatus] [char](1) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_EMSecondarySalePriceHeader] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[PlanCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSizeandInStoreShare]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EMSizeandInStoreShare](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime] NULL,
	[CheckedCompanyCode] [varchar](40) NULL,
	[Quantity] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[SyncStatus] [char](1) NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSizeInStoreShare]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EMSizeInStoreShare](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[CheckedCompanyCode] [varchar](40) NOT NULL,
	[Quantity] [float] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Crtd_User] [varchar](20) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
 CONSTRAINT [PK_EMSizeInStoreShare] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[SecondaryCustomerCode] ASC,
	[VisitDate] ASC,
	[CheckedCompanyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSKUSuggest]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMSKUSuggest](
	[ProductCode] [nvarchar](40) NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime2](7) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDateTime] [datetime2](7) NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[SuggestQuantity] [float] NOT NULL,
	[AvgQuantityPerCall] [float] NOT NULL,
	[CalCallDuration] [int] NOT NULL,
	[SafeStockinTime] [float] NOT NULL,
	[Type] [int] NULL,
	[Ordinal] [int] NULL,
	[FeedbackID_old] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMStock]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMStock](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[Date] [datetime] NOT NULL,
	[WareHouseCode] [varchar](40) NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[StockType] [char](1) NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[Quantity] [float] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyAlloc] [float] NULL CONSTRAINT [DF_EMStock_QtyAlloc]  DEFAULT ((0)),
	[QtyOnHand] [float] NULL CONSTRAINT [DF_EMStock_QtyOnHand]  DEFAULT ((0)),
	[QtyAvail] [float] NULL CONSTRAINT [DF_EMStock_QtyAvail]  DEFAULT ((0)),
	[FirstUpdate] [datetime] NULL,
	[Version] [int] NULL,
 CONSTRAINT [PK_EMStock] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[Date] ASC,
	[WareHouseCode] ASC,
	[SalesRouteCode] ASC,
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMStockEmployee]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMStockEmployee](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[ProductCode] [varchar](40) NULL,
	[Quantity] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMSTOCKOPENING]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMSTOCKOPENING](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[Date] [datetime] NOT NULL,
	[WareHouseCode] [varchar](40) NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[StockType] [char](1) NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[Quantity] [float] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyAlloc] [float] NULL,
	[QtyOnHand] [float] NULL,
	[QtyAvail] [float] NULL,
	[FirstUpdate] [datetime] NULL,
	[Version] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMStockTemp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMStockTemp](
	[BranchID] [varchar](20) NOT NULL,
	[EmployeeID] [varchar](15) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[TranDate] [datetime] NULL,
	[QtyIN] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMStockTempImport]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMStockTempImport](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[Date] [datetime] NOT NULL,
	[WareHouseCode] [varchar](40) NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[ProductCode] [varchar](40) NOT NULL,
	[StockType] [char](1) NOT NULL,
	[UOMCode] [varchar](40) NOT NULL,
	[Quantity] [float] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyAlloc] [float] NULL,
	[QtyOnHand] [float] NULL,
	[QtyAvail] [float] NULL,
	[FirstUpdate] [datetime] NULL,
	[Version] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMVisitPlan]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMVisitPlan](
	[CompanyCode] [varchar](40) NOT NULL,
	[SalesOrgCode] [varchar](40) NOT NULL,
	[CustomerCode] [varchar](40) NOT NULL,
	[BeatPlanMasterCode] [varchar](40) NOT NULL,
	[BeatplanCode] [varchar](40) NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SecondaryCustomerCode] [varchar](40) NOT NULL,
	[Sequence] [int] NULL,
	[IsSpecialDate] [bit] NULL,
	[Staus] [bit] NULL,
	[Remark] [nvarchar](1000) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
 CONSTRAINT [PK_EMVisitPlan] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[SalesOrgCode] ASC,
	[CustomerCode] ASC,
	[BeatPlanMasterCode] ASC,
	[BeatplanCode] ASC,
	[VisitDate] ASC,
	[SalesRouteCode] ASC,
	[SecondaryCustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMWCSCStepTracking]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMWCSCStepTracking](
	[CustomerCode] [varchar](40) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[SalesPersonCode] [varchar](40) NULL,
	[SecondaryCustomerCode] [varchar](40) NULL,
	[VisitDate] [datetime2](7) NULL,
	[StepCode] [char](255) NULL,
	[SubStepCode] [char](255) NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[LocationOffset] [float] NULL,
	[Remark] [nvarchar](1000) NULL,
	[SyncStatus] [char](1) NULL,
	[PlanVisitDate] [datetime2](7) NULL,
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[CompanyCode] [nvarchar](40) NULL,
	[SalesOrgCode] [nvarchar](40) NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Frequency]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Frequency](
	[CustID] [varchar](15) NOT NULL,
	[Monday] [bit] NOT NULL CONSTRAINT [DF_Frequency_Monday]  DEFAULT ((1)),
	[Tuesday] [bit] NOT NULL CONSTRAINT [DF_Frequency_Tuesday]  DEFAULT ((1)),
	[Wednesday] [bit] NOT NULL CONSTRAINT [DF_Frequency_Wednesday]  DEFAULT ((1)),
	[Thursday] [bit] NOT NULL CONSTRAINT [DF_Frequency_Thursday]  DEFAULT ((1)),
	[Friday] [bit] NOT NULL CONSTRAINT [DF_Frequency_Friday]  DEFAULT ((1)),
	[Saturday] [bit] NOT NULL CONSTRAINT [DF_Frequency_Saturday]  DEFAULT ((1)),
	[Sunday] [bit] NOT NULL CONSTRAINT [DF_Frequency_Sunday]  DEFAULT ((1)),
	[DateEff] [datetime] NOT NULL CONSTRAINT [DF_Frequency_DateEff]  DEFAULT (((3)-(5))-(2011)),
 CONSTRAINT [PK_Frequency] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[DateEff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FulfilmentTransactions]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FulfilmentTransactions](
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[ProductPackCode] [varchar](20) NOT NULL,
	[SalesOrderNumber] [varchar](20) NOT NULL,
	[SalesOrderDate] [varchar](10) NULL,
	[RequestedDeliveryDate] [varchar](10) NULL,
	[SalesOrderCurrency] [varchar](3) NOT NULL,
	[WholesalerID] [varchar](15) NOT NULL,
	[BranchID] [varchar](15) NOT NULL,
	[StoreID] [varchar](40) NOT NULL,
	[SalesRepID] [varchar](15) NOT NULL,
	[VisitID] [varchar](88) NULL,
	[IsReturn] [int] NOT NULL,
	[DistributionCenterID] [varchar](20) NULL,
	[DistributionCenterName] [nvarchar](100) NULL,
	[UnitOfMeasure] [int] NOT NULL,
	[ProductPackEANforUnitOfMeasure] [varchar](1) NOT NULL,
	[QuantityOrderedInUnitOfMeasure] [varchar](40) NULL,
	[GrossPrice] [varchar](40) NULL,
	[NetAmount] [varchar](40) NULL,
	[DiscountAmount] [varchar](40) NULL,
	[MDLZPromotionID] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Functions]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Functions](
	[FunctionName] [varchar](50) NOT NULL,
	[FunctionType] [tinyint] NULL,
	[Description] [nvarchar](200) NULL,
	[FunctionOrder] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FunctionsA]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FunctionsA](
	[FunctionName] [varchar](50) NOT NULL,
	[FunctionType] [tinyint] NULL,
	[Description] [nvarchar](200) NULL,
	[FunctionOrder] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gdh8712KPIsDH]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gdh8712KPIsDH](
	[ProvinceName] [nvarchar](300) NULL,
	[DistrictName] [nvarchar](300) NULL,
	[Region] [nvarchar](300) NULL,
	[BranchName] [nvarchar](300) NULL,
	[EmployeeID] [varchar](30) NULL,
	[EmployeeName] [nvarchar](300) NULL,
	[ProvinceID] [varchar](20) NULL,
	[DistrictID] [varchar](20) NULL,
	[TotQty] [float] NULL,
	[TotAmt] [float] NULL,
	[Active] [varchar](30) NULL,
	[TLDONHANG] [float] NULL,
	[SKUDONHANG] [float] NULL,
	[SKUOUTLET] [float] NULL,
	[DTOUTLET] [float] NULL,
	[BillSele] [int] NULL,
	[BillReturn] [int] NULL,
	[G] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IndexSend]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexSend](
	[Customer] [decimal](18, 0) NOT NULL,
	[Batch] [decimal](18, 0) NOT NULL,
	[POSTran] [decimal](18, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndexSendserver]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexSendserver](
	[Inventory] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_Inventory]  DEFAULT ((0)),
	[Brand] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_Brand]  DEFAULT ((0)),
	[Chanel] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_Chanel]  DEFAULT ((0)),
	[CustClass] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_CustClass]  DEFAULT ((0)),
	[District] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_District]  DEFAULT ((0)),
	[Division] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_Division]  DEFAULT ((0)),
	[Employee] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_Employee]  DEFAULT ((0)),
	[InvtType] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_InvtType]  DEFAULT ((0)),
	[MaterialGroup] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_MaterialGroup]  DEFAULT ((0)),
	[ProductClass] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_ProductClass]  DEFAULT ((0)),
	[ProductGroup] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_ProductGroup]  DEFAULT ((0)),
	[ProductType] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_ProductType]  DEFAULT ((0)),
	[Province] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_Province]  DEFAULT ((0)),
	[SalesTax] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_SalesTax]  DEFAULT ((0)),
	[SKUType] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_SKUType]  DEFAULT ((0)),
	[Specification] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_Specification]  DEFAULT ((0)),
	[Unit] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_Unit]  DEFAULT ((0)),
	[UnitClass] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_UnitClass]  DEFAULT ((0)),
	[INUnit] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_INUnit]  DEFAULT ((0)),
	[Team] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_Team]  DEFAULT ((0)),
	[WeekKH] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_WeekKH]  DEFAULT ((0)),
	[WeekKHCT] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_WeekKH1]  DEFAULT ((0)),
	[Customer] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_Customer]  DEFAULT ((0)),
	[ChanelIVT] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_ChaneIVT]  DEFAULT ((0)),
	[SalePrice] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_SalePrice]  DEFAULT ((0)),
	[ShopType] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_ShopType]  DEFAULT ((0)),
	[SaleOrder] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_SaleOrder]  DEFAULT ((0)),
	[ShopTypeCustomer] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_ShopTypeCustomer]  DEFAULT ((0)),
	[CustomerStock] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_CustomerStock]  DEFAULT ((0)),
	[EMPromotionDetail] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_EMPromotionDetail]  DEFAULT ((0)),
	[EMPromotionHeader] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_EMPromotionDetail1]  DEFAULT ((0)),
	[EMPromotionLine] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_EMPromotionDetail2]  DEFAULT ((0)),
	[EMPromotionResult] [decimal](18, 0) NOT NULL CONSTRAINT [DF_IndexSendserver_EMPromotionDetail3]  DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InOutMonitor]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InOutMonitor](
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](100) NULL,
	[InvtID] [nvarchar](20) NOT NULL,
	[InvtName] [nvarchar](200) NULL,
	[UnitPrice01] [float] NULL,
	[SystemQty] [float] NULL,
	[ActualQty] [float] NULL,
	[DeviationQty] [float] NULL,
	[DeviationPrice] [float] NULL,
	[DateEnd] [datetime] NOT NULL,
 CONSTRAINT [PK_InOutMonitor] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[InvtID] ASC,
	[DateEnd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InStoreTransactions]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InStoreTransactions](
	[StoreID] [nvarchar](40) NOT NULL,
	[SalesRepID] [varchar](40) NULL,
	[VisitID] [nvarchar](88) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INTran]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INTran](
	[BranchID] [varchar](20) NOT NULL,
	[RecordID] [int] NOT NULL CONSTRAINT [DF_INTran_RecordID]  DEFAULT ((0)),
	[BatNbr] [varchar](20) NOT NULL,
	[Acct] [varchar](20) NOT NULL,
	[InvtAcct] [varchar](20) NOT NULL,
	[PerPost] [char](6) NOT NULL,
	[BarCode] [char](30) NOT NULL,
	[CnvFact] [float] NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Discount] [float] NOT NULL,
	[ExtCost] [float] NOT NULL,
	[ExtPrice] [float] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtMult] [smallint] NOT NULL,
	[JrnlType] [char](3) NOT NULL,
	[LineID] [smallint] NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NOT NULL,
	[ReasonCd] [char](6) NOT NULL,
	[RefNbr] [varchar](15) NOT NULL,
	[ReceiptDate] [datetime] NOT NULL,
	[Rlsed] [smallint] NOT NULL,
	[SiteID] [varchar](20) NOT NULL,
	[TaxID] [varchar](20) NULL,
	[ToSiteID] [varchar](20) NOT NULL,
	[ToWhseLoc] [varchar](20) NOT NULL,
	[TranDate] [datetime] NOT NULL,
	[TranType] [char](2) NOT NULL,
	[UnitCost] [float] NOT NULL,
	[UnitDesc] [char](6) NOT NULL,
	[UnitMultDiv] [char](1) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[WhseLoc] [varchar](20) NOT NULL,
	[UnitCostEx] [float] NULL,
	[Send] [bit] NULL CONSTRAINT [DF_INTran_Send]  DEFAULT ((0)),
	[ImportDate] [datetime] NULL,
	[DisPercent] [float] NULL CONSTRAINT [DF_INTran_DisPercent]  DEFAULT ((0)),
	[SumDisPercent] [float] NULL CONSTRAINT [DF_INTran_SumDisPercent]  DEFAULT ((0)),
	[SumVAT] [float] NULL CONSTRAINT [DF_INTran_SumVAT]  DEFAULT ((0)),
 CONSTRAINT [PK_INTran] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[RecordID] ASC,
	[BatNbr] ASC,
	[InvtID] ASC,
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INTranphucphu]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INTranphucphu](
	[BranchID] [varchar](20) NOT NULL,
	[RecordID] [int] NOT NULL,
	[BatNbr] [varchar](20) NOT NULL,
	[Acct] [varchar](20) NOT NULL,
	[InvtAcct] [varchar](20) NOT NULL,
	[PerPost] [char](6) NOT NULL,
	[BarCode] [char](30) NOT NULL,
	[CnvFact] [float] NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Discount] [float] NOT NULL,
	[ExtCost] [float] NOT NULL,
	[ExtPrice] [float] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtMult] [smallint] NOT NULL,
	[JrnlType] [char](3) NOT NULL,
	[LineID] [smallint] NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NOT NULL,
	[ReasonCd] [char](6) NOT NULL,
	[RefNbr] [varchar](15) NOT NULL,
	[ReceiptDate] [datetime] NOT NULL,
	[Rlsed] [smallint] NOT NULL,
	[SiteID] [varchar](20) NOT NULL,
	[TaxID] [varchar](20) NULL,
	[ToSiteID] [varchar](20) NOT NULL,
	[ToWhseLoc] [varchar](20) NOT NULL,
	[TranDate] [datetime] NOT NULL,
	[TranType] [char](2) NOT NULL,
	[UnitCost] [float] NOT NULL,
	[UnitDesc] [char](6) NOT NULL,
	[UnitMultDiv] [char](1) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[WhseLoc] [varchar](20) NOT NULL,
	[UnitCostEx] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisPercent] [float] NULL,
	[SumDisPercent] [float] NULL,
	[SumVAT] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INTranthanhloi]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INTranthanhloi](
	[BranchID] [varchar](20) NOT NULL,
	[RecordID] [int] NOT NULL,
	[BatNbr] [varchar](20) NOT NULL,
	[Acct] [varchar](20) NOT NULL,
	[InvtAcct] [varchar](20) NOT NULL,
	[PerPost] [char](6) NOT NULL,
	[BarCode] [char](30) NOT NULL,
	[CnvFact] [float] NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Discount] [float] NOT NULL,
	[ExtCost] [float] NOT NULL,
	[ExtPrice] [float] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtMult] [smallint] NOT NULL,
	[JrnlType] [char](3) NOT NULL,
	[LineID] [smallint] NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NOT NULL,
	[ReasonCd] [char](6) NOT NULL,
	[RefNbr] [varchar](15) NOT NULL,
	[ReceiptDate] [datetime] NOT NULL,
	[Rlsed] [smallint] NOT NULL,
	[SiteID] [varchar](20) NOT NULL,
	[TaxID] [varchar](20) NULL,
	[ToSiteID] [varchar](20) NOT NULL,
	[ToWhseLoc] [varchar](20) NOT NULL,
	[TranDate] [datetime] NOT NULL,
	[TranType] [char](2) NOT NULL,
	[UnitCost] [float] NOT NULL,
	[UnitDesc] [char](6) NOT NULL,
	[UnitMultDiv] [char](1) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[WhseLoc] [varchar](20) NOT NULL,
	[UnitCostEx] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisPercent] [float] NULL,
	[SumDisPercent] [float] NULL,
	[SumVAT] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INTranvinhphong]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INTranvinhphong](
	[BranchID] [varchar](20) NOT NULL,
	[RecordID] [int] NOT NULL,
	[BatNbr] [varchar](20) NOT NULL,
	[Acct] [varchar](20) NOT NULL,
	[InvtAcct] [varchar](20) NOT NULL,
	[PerPost] [char](6) NOT NULL,
	[BarCode] [char](30) NOT NULL,
	[CnvFact] [float] NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Discount] [float] NOT NULL,
	[ExtCost] [float] NOT NULL,
	[ExtPrice] [float] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtMult] [smallint] NOT NULL,
	[JrnlType] [char](3) NOT NULL,
	[LineID] [smallint] NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NOT NULL,
	[ReasonCd] [char](6) NOT NULL,
	[RefNbr] [varchar](15) NOT NULL,
	[ReceiptDate] [datetime] NOT NULL,
	[Rlsed] [smallint] NOT NULL,
	[SiteID] [varchar](20) NOT NULL,
	[TaxID] [varchar](20) NULL,
	[ToSiteID] [varchar](20) NOT NULL,
	[ToWhseLoc] [varchar](20) NOT NULL,
	[TranDate] [datetime] NOT NULL,
	[TranType] [char](2) NOT NULL,
	[UnitCost] [float] NOT NULL,
	[UnitDesc] [char](6) NOT NULL,
	[UnitMultDiv] [char](1) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[WhseLoc] [varchar](20) NOT NULL,
	[UnitCostEx] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisPercent] [float] NULL,
	[SumDisPercent] [float] NULL,
	[SumVAT] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INUnit]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INUnit](
	[UnitClassID] [smallint] NOT NULL,
	[ToUnit] [varchar](20) NOT NULL,
	[FromUnit] [varchar](20) NOT NULL,
	[CnvFact] [float] NOT NULL,
	[MultDiv] [varchar](1) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Active] [bit] NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_INUnit_Send]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventory](
	[InvtID] [nvarchar](20) NOT NULL,
	[Descr] [nvarchar](200) NOT NULL,
	[ph] [nvarchar](20) NOT NULL,
	[UnitClassID] [smallint] NOT NULL,
	[DfltPOUnit] [nvarchar](10) NOT NULL,
	[DfltSOUnit] [nvarchar](10) NOT NULL,
	[DfltStkUnit] [nvarchar](10) NOT NULL,
	[LastCost] [float] NOT NULL,
	[StdCost] [float] NOT NULL CONSTRAINT [DF_Inventory_StdCost_2]  DEFAULT ((0)),
	[UnitPrice01] [float] NOT NULL,
	[UnitPrice03] [float] NOT NULL,
	[TaxID] [nvarchar](50) NOT NULL,
	[SKUTypeID] [nvarchar](50) NULL,
	[CogsAcct] [nvarchar](200) NOT NULL,
	[InvtAcct] [nvarchar](200) NOT NULL,
	[DfltWhseLoc] [nvarchar](10) NOT NULL,
	[SaleAcct] [nvarchar](10) NOT NULL,
	[IsKD] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[Crtd_User] [nvarchar](10) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [nvarchar](50) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_Inventory_Send_2]  DEFAULT ((0)),
	[InvtIDref] [nvarchar](20) NULL,
	[ChanelID_ivt] [nvarchar](15) NULL,
	[BrandSegmentID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventoryMT]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventoryMT](
	[InvtID] [varchar](50) NOT NULL,
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_InventoryMT_Crtd_DateTime]  DEFAULT (getdate()),
	[LUpd_DateTime] [datetime] NULL CONSTRAINT [DF_InventoryMT_LUpd_DateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_InventoryMT] PRIMARY KEY CLUSTERED 
(
	[InvtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventoryReports]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventoryReports](
	[InvtID] [nvarchar](20) NOT NULL,
	[Descr] [nvarchar](200) NOT NULL,
	[ph] [nvarchar](20) NOT NULL,
	[UnitClassID] [smallint] NOT NULL,
	[DfltPOUnit] [varchar](20) NOT NULL,
	[DfltSOUnit] [varchar](20) NOT NULL,
	[DfltStkUnit] [varchar](20) NOT NULL,
	[LastCost] [float] NOT NULL,
	[StdCost] [float] NOT NULL,
	[UnitPrice01] [float] NOT NULL,
	[UnitPrice03] [float] NOT NULL,
	[TaxID] [nvarchar](50) NOT NULL,
	[SKUTypeID] [nvarchar](50) NULL,
	[SKUTypeName] [nvarchar](100) NULL,
	[CogsAcct] [varchar](20) NOT NULL,
	[InvtAcct] [varchar](20) NOT NULL,
	[DfltWhseLoc] [varchar](20) NOT NULL,
	[SaleAcct] [varchar](20) NOT NULL,
	[IsKD] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Crtd_DateTime] [smalldatetime] NOT NULL,
	[LUpd_DateTime] [smalldatetime] NOT NULL,
	[LUpd_User] [nvarchar](50) NOT NULL,
	[Send] [bit] NOT NULL,
	[InvtIDref] [nvarchar](20) NULL,
	[ChanelID_ivt] [nvarchar](15) NULL,
	[phSBU] [varchar](20) NULL,
	[phProductGroup] [varchar](20) NULL,
	[phBrand] [varchar](20) NULL,
	[phMaterialGroup] [varchar](20) NULL,
	[phProductClass] [varchar](20) NULL,
	[ProductGroupID] [varchar](50) NULL,
	[BrandID] [varchar](50) NULL,
	[MaterialGroupID] [varchar](50) NULL,
	[ChanelName_ivt] [nvarchar](100) NULL,
	[DivisionID] [varchar](50) NULL,
	[ProductClassID] [varchar](50) NULL,
	[ProductGroupName] [nvarchar](50) NULL,
	[BrandName] [varchar](50) NULL,
	[MaterialGroupName] [nvarchar](50) NULL,
	[DivisionName] [nvarchar](50) NULL,
	[ProductClassName] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvtClass]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvtClass](
	[ClassID] [varchar](50) NOT NULL,
	[ClassName] [varchar](50) NULL,
	[Note] [varchar](100) NULL,
	[Send] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvtSpecial]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvtSpecial](
	[InvtID] [varchar](20) NOT NULL,
	[SKUTypeID] [varchar](15) NOT NULL,
	[Send] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvtType]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvtType](
	[InvtID] [varchar](20) NOT NULL,
	[ProductTypeID] [varchar](50) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_InvtType_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_InvtType] PRIMARY KEY CLUSTERED 
(
	[InvtID] ASC,
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemSite]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemSite](
	[InvtAcct] [varchar](20) NOT NULL,
	[CogsAcct] [varchar](20) NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [char](20) NOT NULL,
	[SiteID] [varchar](20) NOT NULL,
	[WhseLoc] [varchar](20) NULL,
	[QtyAvail] [float] NOT NULL,
	[QtyOnHand] [float] NOT NULL,
	[LastCost] [float] NOT NULL,
	[IssueCost] [float] NOT NULL,
	[StdCost] [float] NOT NULL,
	[TotCost] [float] NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[SaleAcct] [varchar](20) NOT NULL,
	[QtyAlloc] [float] NOT NULL,
 CONSTRAINT [PK_ItemSite] PRIMARY KEY CLUSTERED 
(
	[InvtID] ASC,
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemSiteAll]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemSiteAll](
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[TranDate] [datetime] NOT NULL,
	[Quantity] [decimal](18, 2) NULL,
	[QtyOut] [decimal](18, 2) NULL,
	[QtyIn] [decimal](18, 2) NULL,
	[UnitClassID] [decimal](18, 0) NULL,
	[UnitPrice01] [decimal](18, 0) NULL,
	[DateChanged] [datetime] NULL CONSTRAINT [DF_ItemSiteAll_DateChanged]  DEFAULT (getdate()),
 CONSTRAINT [PK_ItemSiteAll] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[InvtID] ASC,
	[TranDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemSiteByDate]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemSiteByDate](
	[BranchID] [varchar](15) NOT NULL,
	[TranDate] [datetime] NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[UnitClassID] [smallint] NOT NULL,
	[DfltSOUnit] [nvarchar](10) NOT NULL,
	[UnitPrice01] [float] NOT NULL,
	[QtyBegin] [float] NULL,
	[QtyInput] [float] NULL,
	[QtyOutPut] [float] NULL,
	[QtyEnd] [float] NULL,
	[LastChanged] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemTemp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemTemp](
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[TranDate] [datetime] NOT NULL,
	[Quantity] [decimal](18, 2) NULL,
	[QtyOut] [decimal](18, 2) NULL,
	[QtyIn] [decimal](18, 2) NULL,
	[UnitClassID] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobDetails]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobDetails](
	[ID] [nvarchar](128) NOT NULL,
	[JobName] [nvarchar](max) NULL,
	[JobGroup] [nvarchar](max) NULL,
	[LastRunLocalTime] [datetime] NULL,
	[LastRunServerTime] [datetime] NULL,
	[LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobDetails_bak]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobDetails_bak](
	[ID] [nvarchar](128) NOT NULL,
	[JobName] [nvarchar](max) NULL,
	[JobGroup] [nvarchar](max) NULL,
	[LastRunLocalTime] [datetime] NULL,
	[LastRunServerTime] [datetime] NULL,
	[LastUpdated] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobFailRecords]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobFailRecords](
	[ID] [nvarchar](50) NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
	[EntityName] [nvarchar](255) NULL,
	[Data] [nvarchar](max) NULL,
	[Retried] [int] NULL,
	[EntityID] [varchar](50) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_JobFailRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobSync]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobSync](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](50) NOT NULL,
	[PrimaryKey] [varchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Active] [bit] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[RunMinutes] [int] NULL CONSTRAINT [DF_JobSync_RunMinutes]  DEFAULT ((0)),
	[CreatedUser] [varchar](50) NULL,
	[CreatedDateTime] [datetime] NULL CONSTRAINT [DF_JobSync_CreatedDateTime]  DEFAULT (getdate()),
	[UpdatedUser] [varchar](50) NULL,
	[UpdatedDateTime] [datetime] NULL,
	[LastRunTime] [datetime] NULL CONSTRAINT [DF_JobSync_LastRunTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_JobSync] PRIMARY KEY CLUSTERED 
(
	[TableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobSync_Bak]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobSync_Bak](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](50) NOT NULL,
	[PrimaryKey] [varchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Active] [bit] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[CreatedUser] [varchar](50) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](50) NULL,
	[UpdatedDateTime] [datetime] NULL,
	[LastRunTime] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHInfo]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHInfo](
	[PeriodID] [varchar](2) NULL,
	[Year] [varchar](4) NULL,
	[StartDate] [smalldatetime] NULL,
	[EndDate] [smalldatetime] NULL,
	[CustomerCode] [varchar](50) NULL,
	[CustomerName] [varchar](50) NULL,
	[TargetCode] [varchar](50) NULL,
	[TargetName] [varchar](50) NULL,
	[SalesPersonCode] [varchar](50) NULL,
	[Target] [numeric](18, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhTam]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhTam](
	[Cot] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KiemKeTonKho]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KiemKeTonKho](
	[RegionID] [varchar](15) NOT NULL,
	[BranchID] [varchar](15) NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[InvtID] [nvarchar](20) NOT NULL,
	[Qty] [float] NULL,
 CONSTRAINT [PK_KiemKeTonKho] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC,
	[BranchID] ASC,
	[EndDate] ASC,
	[InvtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KKTonKho]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KKTonKho](
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[KKTonTypeID] [varchar](20) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[QtyPM] [float] NOT NULL,
	[QtyByStkUnitPM] [float] NULL,
	[QtyKK] [float] NOT NULL,
	[QtyByStkUnitKK] [float] NULL,
	[TranDate] [datetime] NOT NULL,
	[QtyNormal] [float] NOT NULL,
	[QtyByStkUnitNormal] [float] NULL,
	[DateNormal] [nvarchar](200) NOT NULL,
	[QtyNear] [float] NOT NULL,
	[QtyByStkUnitNear] [float] NULL,
	[DateNear] [nvarchar](200) NOT NULL,
	[QtyEnd] [float] NOT NULL,
	[QtyByStkUnitEnd] [float] NULL,
	[DateEnd] [nvarchar](200) NOT NULL,
	[Note] [nvarchar](2000) NOT NULL,
	[ImportDate] [datetime] NULL CONSTRAINT [DF_KKTonKho_DateImport]  DEFAULT (getdate()),
	[Date50] [varchar](200) NULL,
	[Date30] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KKTonKhobakup]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KKTonKhobakup](
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[KKTonTypeID] [varchar](20) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[QtyPM] [float] NOT NULL,
	[QtyByStkUnitPM] [float] NULL,
	[QtyKK] [float] NOT NULL,
	[QtyByStkUnitKK] [float] NULL,
	[TranDate] [datetime] NOT NULL,
	[QtyNormal] [float] NOT NULL,
	[QtyByStkUnitNormal] [float] NULL,
	[DateNormal] [nvarchar](200) NOT NULL,
	[QtyNear] [float] NOT NULL,
	[QtyByStkUnitNear] [float] NULL,
	[DateNear] [nvarchar](200) NOT NULL,
	[QtyEnd] [float] NOT NULL,
	[QtyByStkUnitEnd] [float] NULL,
	[DateEnd] [nvarchar](200) NOT NULL,
	[Note] [nvarchar](2000) NOT NULL,
	[ImportDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loyalty]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Loyalty](
	[LoyaltyID] [varchar](40) NOT NULL,
	[LoyaltyName] [nvarchar](250) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[RegisterCustomerStartDate] [datetime] NULL,
	[RegisterCustomerEndDate] [datetime] NULL,
	[RegisterCustomerLock] [datetime] NULL,
	[CustomerCode] [varchar](40) NULL,
	[Status] [varchar](5) NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[ImportDate] [datetime] NULL CONSTRAINT [DF_Loyalty_ImportDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Loyalty] PRIMARY KEY CLUSTERED 
(
	[LoyaltyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoyaltyCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoyaltyCustomer](
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SecondaryCustomerCode] [nvarchar](40) NOT NULL,
	[SalesRouteCode] [nvarchar](40) NOT NULL,
	[EmployeeID] [nvarchar](15) NULL,
	[ProgramCode] [varchar](40) NOT NULL,
	[ProgramMasterCode] [varchar](40) NOT NULL,
	[ProgramDetailLineID] [int] NOT NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[SecondaryCustomer_ID] [uniqueidentifier] NULL,
	[ProgramDetail_ID] [uniqueidentifier] NULL,
	[Status] [varchar](5) NOT NULL,
	[Crtd_User] [varchar](20) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[Send] [bit] NULL CONSTRAINT [DF_LoyaltyCustomer_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_LoyaltyCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerCode] ASC,
	[SecondaryCustomerCode] ASC,
	[SalesRouteCode] ASC,
	[ProgramCode] ASC,
	[ProgramMasterCode] ASC,
	[ProgramDetailLineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[luanKPIsDH]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[luanKPIsDH](
	[ProvinceName] [nvarchar](300) NULL,
	[DistrictName] [nvarchar](300) NULL,
	[Region] [nvarchar](300) NULL,
	[BranchName] [nvarchar](300) NULL,
	[EmployeeID] [varchar](30) NULL,
	[EmployeeName] [nvarchar](300) NULL,
	[ProvinceID] [varchar](20) NULL,
	[DistrictID] [varchar](20) NULL,
	[TotQty] [float] NULL,
	[TotAmt] [float] NULL,
	[Active] [varchar](30) NULL,
	[TLDONHANG] [float] NULL,
	[SKUDONHANG] [float] NULL,
	[SKUOUTLET] [float] NULL,
	[DTOUTLET] [float] NULL,
	[BillSele] [int] NULL,
	[BillReturn] [int] NULL,
	[G] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[luongtamtinh]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[luongtamtinh](
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NULL,
	[BranchName] [nvarchar](100) NULL,
	[EmployeeID] [varchar](15) NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](15) NULL,
	[WorkDay] [int] NULL,
	[DTTargetTotalTuoi] [float] NULL,
	[DTActualTotalT] [float] NULL,
	[ResultTotalT] [float] NULL,
	[DTTargetTotalK] [float] NULL,
	[DTActualTotalK] [float] NULL,
	[ResultTotalK] [float] NULL,
	[DTTargetTotal] [float] NULL,
	[DTActualTotal] [float] NULL,
	[ResultTotal] [float] NULL,
	[DTTargetGLICO] [float] NULL,
	[DTActualGLICO] [float] NULL,
	[ResultGLICO] [float] NULL,
	[DTTargetMigoi] [float] NULL,
	[DTActualMigoi] [float] NULL,
	[ResultMigoi] [float] NULL,
	[TargetWork] [nvarchar](337) NULL,
	[ActualWork] [nvarchar](87) NULL,
	[ResultWork] [nvarchar](31) NULL,
	[NumOrder] [int] NULL,
	[Visitplan] [int] NULL,
	[WorkDayInMonth] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MapCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MapCustomer](
	[CustID] [varchar](20) NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[StatusActive] [char](1) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_MapCustomer_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_MapCustomer] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MasterDataForProductObjects]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MasterDataForProductObjects](
	[ProductPackCode] [nvarchar](20) NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[ProductPackStatus] [varchar](1) NOT NULL,
	[DefaultUnitOfMeasure] [varchar](1) NOT NULL,
	[ProductPackName] [nvarchar](200) NOT NULL,
	[ProductStartDate] [varchar](1) NOT NULL,
	[ProductEndDate] [varchar](1) NOT NULL,
	[ProductPackEANCodePiece] [varchar](1) NOT NULL,
	[ProductPackEANCodeCase] [varchar](1) NOT NULL,
	[ProductPackEANCodeInner] [varchar](1) NOT NULL,
	[ProductPackCategory] [varchar](2) NOT NULL,
	[ProductPackCategoryName] [varchar](9) NOT NULL,
	[ProductPackSegmentCode] [varchar](50) NULL,
	[ProductPackSegmentName] [nvarchar](250) NULL,
	[ProductPackBrandCode] [varchar](50) NULL,
	[ProductPackBrandName] [varchar](50) NULL,
	[ProductPackProduct] [varchar](50) NULL,
	[ProductPackProductName] [nvarchar](50) NULL,
	[ProductPackManufacturerName] [varchar](4) NOT NULL,
	[ConversionFactorPieceToCase] [smallint] NOT NULL,
	[ConversionFactorPieceToInner] [int] NOT NULL,
	[ConversionFactorInnerToCase] [int] NOT NULL,
	[PricePerCase] [varchar](40) NULL,
	[PricePerPiece] [varchar](40) NULL,
	[PricePerInnerBox] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MasterDataForStoreObjects]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MasterDataForStoreObjects](
	[TaxIdentificationNumber] [varchar](15) NOT NULL,
	[TerminationDate] [varchar](1) NOT NULL,
	[StoreStartDate] [varchar](10) NOT NULL,
	[StoreName] [nvarchar](100) NOT NULL,
	[StoreLegalName] [nvarchar](100) NOT NULL,
	[StoreGrade] [varchar](1) NOT NULL,
	[RouteToMarket] [varchar](5) NOT NULL,
	[NumberOfCheckouts] [int] NOT NULL,
	[NumberOfPermanentDisplayInGold] [int] NOT NULL,
	[NumberOfActiveHotZone] [int] NOT NULL,
	[MasterDataForStoreObjects_Id] [varchar](50) NOT NULL,
	[StoreID] [varchar](50) NOT NULL,
	[Terminated] [int] NULL,
	[RDPartyIntegration_Id] [int] NOT NULL,
	[MarketSegment] [varchar](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaterialGroup]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaterialGroup](
	[phMaterialGroup] [varchar](20) NOT NULL,
	[MaterialGroupID] [varchar](50) NOT NULL,
	[MaterialGroupName] [nvarchar](100) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_MaterialGroup_Send]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MDLZMSL]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MDLZMSL](
	[InvtID] [varchar](50) NULL,
	[MSLCODE] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[PERIODID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MDLZMSLTYPE]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MDLZMSLTYPE](
	[Region] [varchar](50) NULL,
	[ChanelID] [varchar](15) NULL,
	[MSLCODE] [varchar](50) NULL,
	[TYPEID] [varchar](50) NULL,
	[PERIODID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberConfig]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberConfig](
	[MemberID] [varchar](50) NOT NULL,
	[StrValue1] [nvarchar](100) NULL,
	[StrValue2] [nvarchar](100) NULL,
	[StrValue3] [nvarchar](100) NULL,
	[StrValue4] [nvarchar](100) NULL,
	[StrValue5] [nvarchar](100) NULL,
	[DateChange] [datetime] NULL,
	[DateNext] [datetime] NULL,
	[NumberChange] [int] NULL,
	[CurrentPass] [int] NULL,
 CONSTRAINT [PK_MemberConfig] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberFunction]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberFunction](
	[MemberID] [varchar](20) NULL,
	[FunctionName] [varchar](50) NULL,
	[AllowView] [bit] NULL,
	[AllowAdd] [bit] NULL,
	[AllowEdit] [bit] NULL,
	[AllowDelete] [bit] NULL,
	[UserCreated] [varchar](50) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_MemberFunction_DateCreated]  DEFAULT (getdate()),
	[UserUpdated] [varchar](50) NULL,
	[DateUpdated] [datetime] NULL CONSTRAINT [DF_MemberFunction_DateUpdated]  DEFAULT (getdate())
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberfunctionAnlkh]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberfunctionAnlkh](
	[MemberID] [varchar](20) NULL,
	[FunctionName] [varchar](50) NULL,
	[AllowView] [bit] NULL,
	[AllowAdd] [bit] NULL,
	[AllowEdit] [bit] NULL,
	[AllowDelete] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberHistory](
	[MemberID] [varchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[ComputerName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberInActive]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberInActive](
	[MemberID] [varchar](20) NOT NULL,
	[Active] [bit] NULL,
	[DateInActive] [datetime] NULL,
 CONSTRAINT [PK_MemberInActive] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberOf]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberOf](
	[MemberID] [varchar](20) NULL,
	[ParentID] [varchar](20) NULL,
	[UserCreated] [varchar](50) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_MemberOf_DateCreated]  DEFAULT (getdate())
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberProcesses]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberProcesses](
	[IDKEYCHECK] [uniqueidentifier] NOT NULL,
	[MemberID] [varchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[DateFinish] [datetime] NULL,
	[FunctionName] [nvarchar](50) NULL,
	[ComputerName] [nvarchar](50) NULL,
 CONSTRAINT [PK_MemberProcesses] PRIMARY KEY CLUSTERED 
(
	[IDKEYCHECK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberProperties]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberProperties](
	[MemberID] [varchar](20) NULL,
	[PropertyID] [tinyint] NULL,
	[PropertyValue] [nvarchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Members]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Members](
	[MemberID] [varchar](20) NOT NULL,
	[MemberName] [nvarchar](100) NULL,
	[MemberType] [tinyint] NULL,
	[Description] [nvarchar](400) NULL,
	[BranchID] [nvarchar](400) NULL,
	[BirthDate] [datetime] NULL,
	[WorkDate] [datetime] NULL,
	[Address] [nvarchar](400) NULL,
	[Phone] [nvarchar](100) NULL,
	[UserCreated] [varchar](50) NULL,
	[UserUpdated] [varchar](50) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_Members_DateCreated]  DEFAULT (getdate()),
	[DateUPdated] [datetime] NULL CONSTRAINT [DF_Members_DateUPdated]  DEFAULT (getdate()),
	[Email] [nvarchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MienBac]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MienBac](
	[Kênh hàng] [nvarchar](255) NULL,
	[SBU] [nvarchar](255) NULL,
	[Nghành hàng] [nvarchar](255) NULL,
	[Nhãn hàng] [nvarchar](255) NULL,
	[Chi tiết nhãn hàng] [nvarchar](255) NULL,
	[Nhóm hàng] [nvarchar](255) NULL,
	[Mã hàng hóa] [nvarchar](255) NULL,
	[Mã hàng có KM] [nvarchar](255) NULL,
	[Tên hàng hóa] [nvarchar](255) NULL,
	[Nhóm ĐVT] [float] NULL,
	[ĐVT Xuất] [nvarchar](255) NULL,
	[ĐVT Nhập] [nvarchar](255) NULL,
	[ĐVT Tồn kho] [nvarchar](255) NULL,
	[Thuế VAT] [nvarchar](255) NULL,
	[Giá mua gần nhất] [float] NULL,
	[Giá bán NPP] [float] NULL,
	[Trạng thái] [nvarchar](255) NULL,
	[Loại hàng] [nvarchar](255) NULL,
	[Kinh đô] [nvarchar](255) NULL,
	[ph] [nvarchar](255) NULL,
	[List SP đang sử dụng NKD] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MienNam]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MienNam](
	[Kênh hàng] [nvarchar](255) NULL,
	[SBU] [nvarchar](255) NULL,
	[Nghành hàng] [nvarchar](255) NULL,
	[Nhãn hàng] [nvarchar](255) NULL,
	[Chi tiết nhãn hàng] [nvarchar](255) NULL,
	[Nhóm hàng] [nvarchar](255) NULL,
	[Mã hàng hóa] [nvarchar](255) NULL,
	[Mã hàng có KM] [nvarchar](255) NULL,
	[Tên hàng hóa] [nvarchar](255) NULL,
	[Nhóm ĐVT] [float] NULL,
	[ĐVT Xuất] [nvarchar](255) NULL,
	[ĐVT Nhập] [nvarchar](255) NULL,
	[ĐVT Tồn kho] [nvarchar](255) NULL,
	[Thuế VAT] [nvarchar](255) NULL,
	[Giá mua gần nhất] [float] NULL,
	[Giá bán NPP] [float] NULL,
	[Trạng thái] [nvarchar](255) NULL,
	[Loại hàng] [nvarchar](255) NULL,
	[Kinh đô] [nvarchar](255) NULL,
	[ph] [nvarchar](255) NULL,
	[Giá mua thùng] [float] NULL,
	[Giá ĐV MN] [float] NULL,
	[Giá mua gần nhất cũ] [float] NULL,
	[F24] [nvarchar](255) NULL,
	[F25] [nvarchar](255) NULL,
	[F26] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MOBILE]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOBILE](
	[Region] [nvarchar](255) NULL,
	[NPP] [nvarchar](255) NULL,
	[Mã NPP] [float] NULL,
	[Mã KH] [nvarchar](255) NULL,
	[RE] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ModuleActive]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModuleActive](
	[ModuleID] [char](2) NOT NULL,
	[Descr] [nvarchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_ModuleActive] PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSL]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSL](
	[InvtID] [nvarchar](100) NULL,
	[MSLID] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MSL_MB]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSL_MB](
	[InvtID] [varchar](50) NULL,
	[MSL] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSL_MN]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSL_MN](
	[InvtID] [varchar](50) NULL,
	[MSL] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLEXPORT_0]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLEXPORT_0](
	[AreaID] [varchar](50) NULL,
	[RegionID] [varchar](50) NULL,
	[CustomerCode] [varchar](50) NULL,
	[SalesPersonCode] [varchar](50) NULL,
	[SalesRouteCode] [varchar](50) NULL,
	[SecondaryCustomerCode] [varchar](50) NULL,
	[CustID] [varchar](50) NULL,
	[ChanelID] [varchar](50) NULL,
	[MSLT] [varchar](5) NOT NULL,
	[MSLCODE] [varchar](50) NULL,
	[TeamID] [varchar](50) NULL,
	[DATAP] [int] NULL,
	[MSL] [int] NULL,
	[Total] [int] NOT NULL,
	[EmployeeID] [varchar](15) NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[KEY] [varchar](100) NULL,
	[CustName] [nvarchar](100) NULL,
	[CustName1] [nvarchar](100) NULL,
	[ChanelName] [nvarchar](100) NULL,
	[Region] [varchar](50) NULL,
	[BranchName] [nvarchar](100) NULL,
	[BranchID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLEXPORT_1]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLEXPORT_1](
	[AreaID] [varchar](50) NULL,
	[RegionID] [varchar](50) NULL,
	[CustomerCode] [varchar](50) NULL,
	[SalesPersonCode] [varchar](50) NULL,
	[SalesRouteCode] [varchar](50) NULL,
	[TeamID] [varchar](50) NULL,
	[Taget] [int] NULL,
	[Actual] [int] NULL,
	[Rate] [decimal](38, 20) NULL,
	[BranchName] [nvarchar](100) NULL,
	[EmployeeID] [varchar](15) NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[ASO] [int] NULL,
	[KH70] [int] NULL,
	[KH71] [int] NULL,
	[KH72] [int] NULL,
	[KH73] [int] NULL,
	[KH74] [int] NULL,
	[KH75] [int] NULL,
	[KH76] [int] NULL,
	[KH77] [int] NULL,
	[KH78] [int] NULL,
	[KH79] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLEXPORT_2]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLEXPORT_2](
	[AreaID] [varchar](50) NULL,
	[RegionID] [varchar](50) NULL,
	[CustomerCode] [varchar](50) NULL,
	[Actual] [int] NULL,
	[Taget] [int] NULL,
	[Rate] [decimal](37, 19) NULL,
	[BranchName] [nvarchar](100) NULL,
	[ASO] [int] NULL,
	[KH70] [int] NULL,
	[KH71] [int] NULL,
	[KH72] [int] NULL,
	[KH73] [int] NULL,
	[KH74] [int] NULL,
	[KH75] [int] NULL,
	[KH76] [int] NULL,
	[KH77] [int] NULL,
	[KH78] [int] NULL,
	[KH79] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLForSalesRoute]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLForSalesRoute](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[RegionID] [nvarchar](100) NULL,
	[BranchID] [varchar](20) NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCode] [varchar](50) NULL,
	[EmployeeID] [varchar](50) NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[TeamID] [varchar](20) NULL,
	[CustID] [varchar](50) NULL,
	[ChanelID] [varchar](50) NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[MSLChanel] [varchar](5) NOT NULL,
	[MSLGroupHeaderID] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NOT NULL,
	[MSLActualCheck] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLGroupChanelReport]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLGroupChanelReport](
	[AreaID] [varchar](15) NOT NULL,
	[SubAreaID] [varchar](15) NOT NULL,
	[RegionID] [varchar](15) NOT NULL,
	[MSLChanel] [varchar](50) NOT NULL,
	[ChanelID] [varchar](15) NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[MSLConditionTypeID] [int] NOT NULL,
	[MSLGroupTypeID] [varchar](50) NOT NULL,
	[MSLGroupHeaderID] [varchar](50) NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[TotalHeader] [int] NULL,
	[UOMHeader] [varchar](50) NULL,
	[UseTotalHeader] [bit] NULL,
	[TotalDetail] [int] NULL,
	[UOMDetail] [varchar](50) NULL,
	[UseTotalDetail] [bit] NULL,
	[ph] [nvarchar](20) NOT NULL,
	[ChanelID_ivt] [nvarchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLGroupForSale]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLGroupForSale](
	[Region] [varchar](50) NULL,
	[ProductGroupID] [varchar](50) NULL,
	[MSLGroup] [varchar](50) NULL,
	[TYPES] [varchar](50) NULL,
	[CHANNELID] [varchar](50) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_MSLGroupForSale_Send]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLGroupForSaleMT]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLGroupForSaleMT](
	[Region] [varchar](50) NULL,
	[ProductGroupID] [varchar](50) NULL,
	[MSLGroup] [varchar](50) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLGroupForSaleT7]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLGroupForSaleT7](
	[Region] [varchar](50) NULL,
	[ProductGroupID] [varchar](50) NULL,
	[MSLGroup] [varchar](50) NULL,
	[TYPES] [varchar](50) NULL,
	[CHANNELID] [varchar](50) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLGroupForSalet7NPP]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLGroupForSalet7NPP](
	[Region] [varchar](50) NULL,
	[ProductGroupID] [varchar](50) NULL,
	[MSLGroup] [varchar](50) NULL,
	[TYPES] [varchar](50) NULL,
	[CHANNELID] [varchar](50) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLGroups]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLGroups](
	[Region] [varchar](50) NULL,
	[ProductGroupID] [varchar](50) NULL,
	[MSLGroup] [varchar](50) NULL,
	[TYPES] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLNOT]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLNOT](
	[InvtID] [varchar](50) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_MSLNOT_Send]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLNOTMT]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLNOTMT](
	[InvtID] [varchar](50) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_MSLNOTMT_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_MSLNOTMT] PRIMARY KEY CLUSTERED 
(
	[InvtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLNOTNPP]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLNOTNPP](
	[InvtID] [varchar](50) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLOFF]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLOFF](
	[TeamID] [varchar](5) NOT NULL,
	[BranchID] [varchar](15) NULL,
	[AreaID] [varchar](15) NULL,
	[BranchName] [nvarchar](300) NULL,
	[EmployeeID] [varchar](40) NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[SalesRouteCode] [varchar](40) NOT NULL,
	[Region] [nvarchar](100) NULL,
	[Actual] [int] NULL,
	[FA] [decimal](38, 2) NULL,
	[FB] [decimal](38, 2) NULL,
	[FC] [decimal](38, 2) NULL,
	[DA] [decimal](38, 2) NULL,
	[DB] [decimal](38, 2) NULL,
	[DC] [decimal](38, 2) NULL,
	[DD] [decimal](38, 2) NULL,
	[Taget] [decimal](38, 2) NULL,
	[Compliance] [decimal](38, 26) NULL,
	[TranDate] [datetime] NULL CONSTRAINT [DF_MSLOFF_TranDate]  DEFAULT (getdate())
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLPOSTranCustomerHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLPOSTranCustomerHistory](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[CustID] [varchar](15) NOT NULL,
	[FRESH] [float] NULL,
	[DRY] [float] NULL,
	[ChanelMSL] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSLTrade]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSLTrade](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCodeActual] [varchar](40) NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](20) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CustID] [varchar](15) NOT NULL,
	[CustName] [nvarchar](100) NULL,
	[CustName1] [nvarchar](100) NULL,
	[ChanelID] [varchar](15) NULL,
	[Address] [nvarchar](300) NULL,
	[Phone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[MSLGroupHeaderID] [varchar](50) NOT NULL,
	[MSLChanel] [varchar](50) NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[TT] [float] NULL,
	[Amount] [float] NULL,
	[ConditionQuantity] [int] NULL,
	[ConditionUOM] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NULL,
	[MSLActualCheck] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NielsenProvince]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NielsenProvince](
	[BranchID] [varchar](20) NULL,
	[NielsenProvince] [nvarchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PASSBY]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PASSBY](
	[Region] [nvarchar](255) NULL,
	[NPP] [nvarchar](255) NULL,
	[Mã NPP] [float] NULL,
	[Mã KH] [nvarchar](255) NULL,
	[RE] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PeriodDateLock]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PeriodDateLock](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PeriodMonth] [int] NULL,
	[PeriodYear] [int] NULL,
	[DateLock] [datetime] NOT NULL,
	[UserCreated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_PeriodDateLock] PRIMARY KEY CLUSTERED 
(
	[DateLock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSAPPROVED]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSAPPROVED](
	[BranchID] [varchar](20) NULL,
	[BillNbr] [varchar](50) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_POSAPPROVED_DateCreated]  DEFAULT (getdate()),
	[Send] [bit] NULL,
	[ReasonCd] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSOPENING]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSOPENING](
	[BranchID] [varchar](50) NOT NULL,
	[InvtID] [varchar](50) NOT NULL,
	[BegQty] [float] NULL,
	[SiteID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_POSOPENING] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[InvtID] ASC,
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSOPENING2014]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSOPENING2014](
	[BranchID] [varchar](50) NOT NULL,
	[InvtID] [varchar](50) NULL,
	[BegQty] [float] NULL,
	[SiteID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSOPENING2015]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSOPENING2015](
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NULL,
	[BegQty] [float] NULL,
	[SiteID] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSOPENING2015T4]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSOPENING2015T4](
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NULL,
	[BegQty] [float] NULL,
	[SiteID] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSOPENINGT092015]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSOPENINGT092015](
	[BranchID] [varchar](50) NOT NULL,
	[InvtID] [varchar](50) NULL,
	[BegQty] [float] NULL,
	[SiteID] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSREPORTSDATA]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSREPORTSDATA](
	[BranchID] [varchar](15) NOT NULL,
	[Region] [varchar](100) NULL,
	[BranchName] [nvarchar](100) NOT NULL,
	[ChanelBranchID] [varchar](20) NULL,
	[TranDate] [datetime] NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[UnitPriceInclTax] [float] NULL,
	[Qtybystkunit] [float] NULL,
	[QtybystkunitKM] [float] NULL,
	[tranamt] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[TT] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[Discount1] [float] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[UnitClassID] [smallint] NULL,
	[InvtName] [nvarchar](200) NULL,
	[ProductGroupID] [varchar](50) NULL,
	[ProductGroupName] [nvarchar](50) NULL,
	[MaterialGroupName] [nvarchar](50) NULL,
	[BrandSegmentID] [varchar](50) NULL,
	[BrandName] [varchar](50) NULL,
	[ChanelName_ivt] [nvarchar](100) NULL,
	[DivisionName] [nvarchar](50) NULL,
	[ProductClassName] [nvarchar](50) NULL,
	[BrandID] [varchar](50) NULL,
	[TypeReports] [nvarchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTran]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTran](
	[BranchID] [varchar](15) NOT NULL,
	[RecordID] [int] NOT NULL,
	[Pos] [varchar](50) NULL,
	[TranDate] [datetime] NOT NULL,
	[BatNbr] [varchar](20) NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeID1] [varchar](15) NULL,
	[LineID] [smallint] NOT NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtIDref] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[TranDescr] [varchar](20) NULL,
	[UnitDesc] [varchar](20) NULL,
	[CnvFact] [float] NULL,
	[UnitMultDiv] [varchar](50) NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[UnitCost] [float] NULL,
	[ExtCost] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[TaxID] [varchar](20) NULL,
	[TaxRate] [float] NULL,
	[TaxAmt] [float] NULL,
	[TaxAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[JrnlType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyOnhand] [float] NULL,
	[QtyAvail] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[BoolUpdate] [bit] NULL,
	[BoolDelete] [bit] NULL,
	[OffRoute] [bit] NULL,
	[PromotionResultStr] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL,
	[PlanDeliveryDate] [datetime] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL,
	[OrderType] [int] NULL
) ON [PScheme_TranDate]([TranDate])

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTRANA]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTRANA](
	[BranchID] [varchar](15) NOT NULL,
	[RecordID] [int] NOT NULL,
	[Pos] [varchar](50) NULL,
	[TranDate] [datetime] NOT NULL,
	[BatNbr] [varchar](20) NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeID1] [varchar](15) NULL,
	[LineID] [smallint] NOT NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtIDref] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[TranDescr] [varchar](20) NULL,
	[UnitDesc] [varchar](20) NULL,
	[CnvFact] [float] NULL,
	[UnitMultDiv] [varchar](50) NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[UnitCost] [float] NULL,
	[ExtCost] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[TaxID] [varchar](20) NULL,
	[TaxRate] [float] NULL,
	[TaxAmt] [float] NULL,
	[TaxAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[JrnlType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyOnhand] [float] NULL,
	[QtyAvail] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[BoolUpdate] [bit] NULL,
	[BoolDelete] [bit] NULL,
	[OffRoute] [bit] NULL,
	[PromotionResultStr] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL,
	[PlanDeliveryDate] [datetime] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL,
	[OrderType] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTranApproved]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTranApproved](
	[BranchID] [varchar](15) NOT NULL,
	[RecordID] [int] NOT NULL,
	[Pos] [varchar](50) NULL,
	[TranDate] [datetime] NOT NULL,
	[BatNbr] [varchar](20) NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](30) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeID1] [varchar](15) NULL,
	[LineID] [smallint] NOT NULL,
	[SiteID] [varchar](10) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtIDref] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[TranDescr] [nvarchar](300) NULL,
	[UnitDesc] [varchar](20) NULL,
	[CnvFact] [float] NULL,
	[UnitMultDiv] [varchar](50) NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[UnitCost] [float] NULL,
	[ExtCost] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[TaxID] [char](10) NULL,
	[TaxRate] [float] NULL,
	[TaxAmt] [float] NULL,
	[TaxAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[JrnlType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyOnhand] [float] NULL,
	[QtyAvail] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[OrderStatus] [varchar](40) NULL,
	[BoolUpdate] [bit] NULL,
	[BoolDelete] [bit] NULL,
	[OffRoute] [bit] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL,
	[DeliveryDate] [datetime] NULL,
	[PromotionDetailLineID] [int] NULL,
	[PRINTNUMBER] [varchar](10) NULL,
 CONSTRAINT [PK_POSTranApproved111] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[RecordID] ASC,
	[TranDate] ASC,
	[BillNbr] ASC,
	[CustID] ASC,
	[EmployeeID] ASC,
	[LineID] ASC,
	[InvtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTranDataReport]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTranDataReport](
	[BranchID] [varchar](15) NOT NULL,
	[Region] [varchar](100) NULL,
	[BranchName] [nvarchar](100) NOT NULL,
	[ChanelBranchID] [varchar](20) NULL,
	[TranDate] [datetime] NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[UnitPriceInclTax] [float] NULL,
	[QtyByStkUnit] [float] NULL,
	[QtyByStkUnitKM] [float] NULL,
	[TranAmt] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[TT] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[Discount1] [float] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[UnitClassID] [smallint] NULL,
	[InvtName] [nvarchar](200) NULL,
	[ProductGroupID] [varchar](50) NULL,
	[ProductGroupName] [nvarchar](50) NULL,
	[MaterialGroupID] [varchar](50) NULL,
	[MaterialGroupName] [nvarchar](50) NULL,
	[BrandID] [varchar](50) NULL,
	[BrandName] [varchar](50) NULL,
	[ChanelID_ivt] [nvarchar](15) NULL,
	[ChanelName_ivt] [nvarchar](100) NULL,
	[DivisionID] [varchar](50) NULL,
	[DivisionName] [nvarchar](50) NULL,
	[BrandSegmentID] [varchar](50) NULL,
	[BrandSegmentName] [nvarchar](250) NULL,
	[ProductClassID] [varchar](50) NULL,
	[ProductClassName] [nvarchar](50) NULL,
	[TypeReports] [nvarchar](31) NOT NULL,
	[SiteID] [varchar](20) NULL,
	[OrderType] [int] NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTranDelete]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTranDelete](
	[BranchID] [varchar](15) NOT NULL,
	[RecordID] [int] NOT NULL,
	[Pos] [varchar](50) NULL,
	[TranDate] [datetime] NOT NULL,
	[BatNbr] [varchar](20) NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeID1] [varchar](15) NULL,
	[LineID] [smallint] NOT NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtIDref] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[TranDescr] [varchar](20) NULL,
	[UnitDesc] [varchar](20) NULL,
	[CnvFact] [float] NULL,
	[UnitMultDiv] [varchar](50) NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[UnitCost] [float] NULL,
	[ExtCost] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[TaxID] [varchar](20) NULL,
	[TaxRate] [float] NULL,
	[TaxAmt] [float] NULL,
	[TaxAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[JrnlType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyOnhand] [float] NULL,
	[QtyAvail] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[BoolUpdate] [bit] NULL,
	[BoolDelete] [bit] NULL,
	[OffRoute] [bit] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTranDeliveryOrder]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTranDeliveryOrder](
	[BranchID] [varchar](15) NOT NULL,
	[RecordID] [int] NOT NULL,
	[Pos] [varchar](50) NULL,
	[TranDate] [datetime] NOT NULL,
	[BatNbr] [varchar](20) NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeID1] [varchar](15) NULL,
	[LineID] [smallint] NOT NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtIDref] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[TranDescr] [varchar](20) NULL,
	[UnitDesc] [varchar](20) NULL,
	[CnvFact] [float] NULL,
	[UnitMultDiv] [varchar](50) NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[UnitCost] [float] NULL,
	[ExtCost] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[TaxID] [varchar](20) NULL,
	[TaxRate] [float] NULL,
	[TaxAmt] [float] NULL,
	[TaxAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[JrnlType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyOnhand] [float] NULL,
	[QtyAvail] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[BoolUpdate] [bit] NULL,
	[BoolDelete] [bit] NULL,
	[OffRoute] [bit] NULL,
	[PromotionResultStr] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL,
	[PlanDeliveryDate] [datetime] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTRANFIX]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTRANFIX](
	[BranchID] [varchar](15) NOT NULL,
	[TranDate] [datetime] NOT NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[TranDescr] [varchar](20) NULL,
	[UnitDesc] [varchar](20) NULL,
	[CnvFact] [float] NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[OffRoute] [bit] NULL,
	[PromotionResultStr] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL,
	[PlanDeliveryDate] [datetime] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[postranngatest]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[postranngatest](
	[BranchID] [varchar](15) NOT NULL,
	[RecordID] [int] NOT NULL,
	[Pos] [varchar](50) NULL,
	[TranDate] [datetime] NOT NULL,
	[BatNbr] [varchar](20) NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeID1] [varchar](15) NULL,
	[LineID] [smallint] NOT NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtIDref] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[TranDescr] [varchar](20) NULL,
	[UnitDesc] [varchar](20) NULL,
	[CnvFact] [float] NULL,
	[UnitMultDiv] [varchar](50) NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[UnitCost] [float] NULL,
	[ExtCost] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[TaxID] [varchar](20) NULL,
	[TaxRate] [float] NULL,
	[TaxAmt] [float] NULL,
	[TaxAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[JrnlType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyOnhand] [float] NULL,
	[QtyAvail] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[BoolUpdate] [bit] NULL,
	[BoolDelete] [bit] NULL,
	[OffRoute] [bit] NULL,
	[PromotionResultStr] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL,
	[PlanDeliveryDate] [datetime] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTranNgay]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTranNgay](
	[TranDate] [datetime] NOT NULL,
	[BranchID] [varchar](20) NULL,
	[InvtID] [varchar](20) NULL,
	[Qty] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[SiteID] [varchar](20) NULL,
	[ToSiteID] [varchar](20) NOT NULL,
	[InvtMult] [smallint] NULL,
	[ReasonCD] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTranNPPTemp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTranNPPTemp](
	[BranchID] [varchar](15) NOT NULL,
	[RecordID] [int] NOT NULL,
	[Pos] [varchar](50) NOT NULL,
	[TranDate] [datetime] NOT NULL,
	[BatNbr] [varchar](20) NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NOT NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeID1] [varchar](15) NULL,
	[LineID] [smallint] NOT NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtIDref] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[TranDescr] [varchar](20) NULL,
	[UnitDesc] [varchar](20) NOT NULL,
	[CnvFact] [float] NULL,
	[UnitMultDiv] [varchar](50) NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NOT NULL,
	[UnitCost] [float] NULL,
	[ExtCost] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[TaxID] [varchar](20) NULL,
	[TaxRate] [float] NULL,
	[TaxAmt] [float] NULL,
	[TaxAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[JrnlType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyOnhand] [float] NULL,
	[QtyAvail] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[BoolUpdate] [bit] NULL,
	[BoolDelete] [bit] NULL,
	[OffRoute] [bit] NULL,
	[PromotionResultStr] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL,
	[PlanDeliveryDate] [datetime] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL,
	[OrderType] [int] NULL,
 CONSTRAINT [PK_POSTranNPPTemp] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[Pos] ASC,
	[TranDate] ASC,
	[BillNbr] ASC,
	[RefBillNbr] ASC,
	[CustID] ASC,
	[EmployeeID] ASC,
	[LineID] ASC,
	[InvtID] ASC,
	[UnitDesc] ASC,
	[QtyByStkUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTranSalesOrder]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTranSalesOrder](
	[BranchID] [varchar](15) NOT NULL,
	[RecordID] [int] NOT NULL,
	[Pos] [varchar](50) NULL,
	[TranDate] [datetime] NOT NULL,
	[BatNbr] [varchar](20) NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeID1] [varchar](15) NULL,
	[LineID] [smallint] NOT NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtIDref] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[TranDescr] [nvarchar](200) NULL,
	[UnitDesc] [varchar](20) NULL,
	[CnvFact] [float] NULL,
	[UnitMultDiv] [varchar](50) NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[UnitCost] [float] NULL,
	[ExtCost] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[TaxID] [varchar](20) NULL,
	[TaxRate] [float] NULL,
	[TaxAmt] [float] NULL,
	[TaxAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[JrnlType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyOnhand] [float] NULL,
	[QtyAvail] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[BoolUpdate] [bit] NULL,
	[BoolDelete] [bit] NULL,
	[OffRoute] [bit] NULL,
	[PromotionResultStr] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL,
	[PlanDeliveryDate] [datetime] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTranSalesOrderMB]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTranSalesOrderMB](
	[BranchID] [varchar](15) NOT NULL,
	[RecordID] [int] NOT NULL,
	[Pos] [varchar](50) NULL,
	[TranDate] [datetime] NOT NULL,
	[BatNbr] [varchar](20) NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeID1] [varchar](15) NULL,
	[LineID] [smallint] NOT NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtIDref] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[TranDescr] [nvarchar](200) NULL,
	[UnitDesc] [varchar](20) NULL,
	[CnvFact] [float] NULL,
	[UnitMultDiv] [varchar](50) NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[UnitCost] [float] NULL,
	[ExtCost] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[TaxID] [varchar](20) NULL,
	[TaxRate] [float] NULL,
	[TaxAmt] [float] NULL,
	[TaxAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[JrnlType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyOnhand] [float] NULL,
	[QtyAvail] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[BoolUpdate] [bit] NULL,
	[BoolDelete] [bit] NULL,
	[OffRoute] [bit] NULL,
	[PromotionResultStr] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL,
	[PlanDeliveryDate] [datetime] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL,
	[OrderType] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTranSalesOrderMN]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTranSalesOrderMN](
	[BranchID] [varchar](15) NOT NULL,
	[RecordID] [int] NOT NULL,
	[Pos] [varchar](50) NULL,
	[TranDate] [datetime] NOT NULL,
	[BatNbr] [varchar](20) NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeID1] [varchar](15) NULL,
	[LineID] [smallint] NOT NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtIDref] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[TranDescr] [nvarchar](200) NULL,
	[UnitDesc] [varchar](20) NULL,
	[CnvFact] [float] NULL,
	[UnitMultDiv] [varchar](50) NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[UnitCost] [float] NULL,
	[ExtCost] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[TaxID] [varchar](20) NULL,
	[TaxRate] [float] NULL,
	[TaxAmt] [float] NULL,
	[TaxAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[JrnlType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyOnhand] [float] NULL,
	[QtyAvail] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[BoolUpdate] [bit] NULL,
	[BoolDelete] [bit] NULL,
	[OffRoute] [bit] NULL,
	[PromotionResultStr] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL,
	[PlanDeliveryDate] [datetime] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL,
	[OrderType] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POSTranThang]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTranThang](
	[YearPOS] [int] NULL,
	[MonthPOS] [int] NULL,
	[BranchID] [varchar](20) NULL,
	[InvtID] [varchar](20) NULL,
	[Qty] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[SiteID] [varchar](20) NULL,
	[ToSiteID] [varchar](20) NOT NULL,
	[InvtMult] [smallint] NULL,
	[ReasonCD] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductClass]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductClass](
	[phProductClass] [varchar](20) NOT NULL CONSTRAINT [DF_ProductClass_BrandID]  DEFAULT (''),
	[ProductClassID] [varchar](50) NOT NULL,
	[ProductClassName] [nvarchar](100) NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_ProductGroup_Active]  DEFAULT ((1)),
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_DateTime] [datetime] NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_ProductClass_Send]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductGroup]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductGroup](
	[phProductGroup] [varchar](20) NOT NULL,
	[ProductGroupID] [varchar](15) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Descr] [nvarchar](100) NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Send] [bit] NULL CONSTRAINT [DF_ProductGroup_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_ProductGroup_1] PRIMARY KEY CLUSTERED 
(
	[phProductGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeID] [char](3) NOT NULL,
	[ProductTypeName] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_ProductType_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_SKUGroup] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Province]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Province](
	[ProvinceID] [varchar](15) NOT NULL,
	[ProvinceName] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_Province_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PublicHoliday]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicHoliday](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[DAY] [int] NOT NULL,
	[MONTH] [int] NOT NULL,
	[YEAR] [int] NOT NULL,
	[FULLDATE] [datetime] NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_PublicHoliday_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_Holiday] PRIMARY KEY CLUSTERED 
(
	[DAY] ASC,
	[MONTH] ASC,
	[YEAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RDPartyIntegration]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RDPartyIntegration](
	[RDPartyIntegration_ID] [int] NOT NULL,
	[RDPartyCompanyName] [varchar](4) NOT NULL,
	[CountryIsoCode] [varchar](2) NOT NULL,
	[CurrencyIsoCode] [varchar](3) NOT NULL,
	[CurrencyIsoName] [varchar](3) NOT NULL,
	[TradePartnerCode] [varchar](1) NOT NULL,
	[SourceDataID] [varchar](4) NOT NULL,
	[RDPartyGLN] [varchar](4) NOT NULL,
	[ExtrationDateFrom] [date] NULL,
	[ExtrationDateTo] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReasonCode]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReasonCode](
	[Acct] [varchar](20) NOT NULL,
	[ReasonCD] [varchar](20) NOT NULL,
	[LCType] [char](2) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Descr] [nvarchar](100) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[IsSolTran] [bit] NOT NULL,
	[IsLiabilityTran] [smallint] NOT NULL,
	[LiabilityType] [char](2) NOT NULL,
	[POSTranType] [char](15) NOT NULL,
	[SolReasonCD] [varchar](20) NULL,
 CONSTRAINT [PK_ReasonCode] PRIMARY KEY CLUSTERED 
(
	[ReasonCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Region](
	[RegionID] [varchar](15) NOT NULL,
	[RegionName] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_Region_Active]  DEFAULT ((1)),
	[Send] [bit] NOT NULL CONSTRAINT [DF_Region_Send]  DEFAULT ((0)),
	[AreaID] [varchar](15) NOT NULL,
	[SubAreaID] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportController]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportController](
	[ReportID] [uniqueidentifier] NOT NULL,
	[AppInstanceID] [varchar](250) NULL,
	[FireInstanceID] [varchar](50) NULL,
	[ReportName] [varchar](250) NULL,
	[ReportTableName] [varchar](250) NULL,
	[ReportParameters] [nvarchar](2000) NULL,
	[ReportStartDate] [datetime] NULL,
	[ReportEndDate] [datetime] NULL,
	[ReportStatus] [varchar](50) NULL,
	[ReportExecuteLog] [nvarchar](2000) NULL,
	[isFileDownloaded] [bit] NULL CONSTRAINT [DF_ReportController_isDownloadFile]  DEFAULT ((0)),
	[ReportComputerName] [varchar](50) NULL,
	[ReportUserName] [varchar](50) NULL,
	[DateTimeBegin] [datetime] NULL,
	[DateTimeFinish] [datetime] NULL,
	[CreatedUser] [varchar](20) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](20) NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ReportController] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportControllerHistory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportControllerHistory](
	[ReportID] [uniqueidentifier] NOT NULL,
	[AppInstanceID] [varchar](250) NULL,
	[FireInstanceId] [varchar](50) NULL,
	[ReportName] [varchar](250) NULL,
	[ReportTableName] [varchar](250) NULL,
	[ReportParameters] [nvarchar](2000) NULL,
	[ReportStartDate] [datetime] NULL,
	[ReportEndDate] [datetime] NULL,
	[ReportStatus] [varchar](50) NULL,
	[ReportExecuteLog] [nvarchar](2000) NULL,
	[isFileDownloaded] [bit] NULL,
	[ReportComputerName] [varchar](50) NULL,
	[ReportUserName] [varchar](50) NULL,
	[DateTimeBegin] [datetime] NULL,
	[DateTimeFinish] [datetime] NULL,
	[CreatedUser] [varchar](20) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](20) NULL,
	[UpdatedDateTime] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTableTemplate]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTableTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReportName] [varchar](150) NOT NULL,
	[DataTableTemplate] [ntext] NULL,
	[UserCreated] [varchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[UserUpdated] [varchar](50) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_ReportTableTemplate] PRIMARY KEY CLUSTERED 
(
	[ReportName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180618100248]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180618100248](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCodeActual] [varchar](40) NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](20) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CustID] [varchar](15) NOT NULL,
	[CustomerCode] [varchar](50) NULL,
	[CustName] [nvarchar](100) NULL,
	[CustName1] [nvarchar](100) NULL,
	[ChanelID] [varchar](15) NULL,
	[SpecifiID] [smallint] NULL,
	[Address] [nvarchar](300) NULL,
	[Phone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[MSLGroupHeaderID] [varchar](50) NOT NULL,
	[MSLChanelHistory] [varchar](5) NULL,
	[MSLChanel] [varchar](5) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[Qty] [float] NULL,
	[QtyByStkUnit] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[TT] [float] NULL,
	[Amount] [float] NULL,
	[ConditionQuantity] [int] NULL,
	[ConditionUOM] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NULL,
	[MSLActualCheck] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180618164803]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180618164803](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCodeActual] [varchar](40) NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](20) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CustID] [varchar](15) NOT NULL,
	[CustName] [nvarchar](100) NULL,
	[CustName1] [nvarchar](100) NULL,
	[ChanelID] [varchar](15) NULL,
	[Address] [nvarchar](300) NULL,
	[Phone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[MSLGroupHeaderID] [varchar](50) NOT NULL,
	[MSLChanelHistory] [varchar](5) NULL,
	[MSLChanel] [varchar](5) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[Qty] [float] NULL,
	[QtyByStkUnit] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[TT] [float] NULL,
	[Amount] [float] NULL,
	[ConditionQuantity] [int] NULL,
	[ConditionUOM] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NULL,
	[MSLActualCheck] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180618180710]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180618180710](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCodeActual] [varchar](40) NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](20) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CustID] [varchar](15) NOT NULL,
	[CustName] [nvarchar](100) NULL,
	[CustName1] [nvarchar](100) NULL,
	[ChanelID] [varchar](15) NULL,
	[Address] [nvarchar](300) NULL,
	[Phone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[MSLGroupHeaderID] [varchar](50) NOT NULL,
	[MSLChanel] [varchar](50) NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[TT] [float] NULL,
	[Amount] [float] NULL,
	[ConditionQuantity] [int] NULL,
	[ConditionUOM] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NULL,
	[MSLActualCheck] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180718100317]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180718100317](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCodeActual] [varchar](40) NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](20) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CustID] [varchar](15) NOT NULL,
	[CustomerCode] [varchar](50) NULL,
	[CustName] [nvarchar](100) NULL,
	[CustName1] [nvarchar](100) NULL,
	[ChanelID] [varchar](15) NULL,
	[SpecifiID] [smallint] NULL,
	[Address] [nvarchar](300) NULL,
	[Phone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[MSLGroupHeaderID] [varchar](50) NOT NULL,
	[MSLChanelHistory] [varchar](5) NULL,
	[MSLChanel] [varchar](5) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[Qty] [float] NULL,
	[QtyByStkUnit] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[TT] [float] NULL,
	[Amount] [float] NULL,
	[ConditionQuantity] [int] NULL,
	[ConditionUOM] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NULL,
	[MSLActualCheck] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180718101034]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180718101034](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCodeActual] [varchar](40) NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](20) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CustID] [varchar](15) NOT NULL,
	[CustomerCode] [varchar](50) NULL,
	[CustName] [nvarchar](100) NULL,
	[CustName1] [nvarchar](100) NULL,
	[ChanelID] [varchar](15) NULL,
	[SpecifiID] [smallint] NULL,
	[Address] [nvarchar](300) NULL,
	[Phone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[MSLGroupHeaderID] [varchar](50) NOT NULL,
	[MSLChanelHistory] [varchar](5) NULL,
	[MSLChanel] [varchar](5) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[Qty] [float] NULL,
	[QtyByStkUnit] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[TT] [float] NULL,
	[Amount] [float] NULL,
	[ConditionQuantity] [int] NULL,
	[ConditionUOM] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NULL,
	[MSLActualCheck] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180718103051]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180718103051](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCodeActual] [varchar](40) NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](20) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CustID] [varchar](15) NOT NULL,
	[CustomerCode] [varchar](50) NULL,
	[CustName] [nvarchar](100) NULL,
	[CustName1] [nvarchar](100) NULL,
	[ChanelID] [varchar](15) NULL,
	[SpecifiID] [smallint] NULL,
	[Address] [nvarchar](300) NULL,
	[Phone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[MSLGroupHeaderID] [varchar](50) NOT NULL,
	[MSLChanelHistory] [varchar](5) NULL,
	[MSLChanel] [varchar](5) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[Qty] [float] NULL,
	[QtyByStkUnit] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[TT] [float] NULL,
	[Amount] [float] NULL,
	[ConditionQuantity] [int] NULL,
	[ConditionUOM] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NULL,
	[MSLActualCheck] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180718104214]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180718104214](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCodeActual] [varchar](40) NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](20) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CustID] [varchar](15) NOT NULL,
	[CustomerCode] [varchar](50) NULL,
	[CustName] [nvarchar](100) NULL,
	[CustName1] [nvarchar](100) NULL,
	[ChanelID] [varchar](15) NULL,
	[SpecifiID] [smallint] NULL,
	[Address] [nvarchar](300) NULL,
	[Phone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[MSLGroupHeaderID] [varchar](50) NOT NULL,
	[MSLChanelHistory] [varchar](5) NULL,
	[MSLChanel] [varchar](5) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[Qty] [float] NULL,
	[QtyByStkUnit] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[TT] [float] NULL,
	[Amount] [float] NULL,
	[ConditionQuantity] [int] NULL,
	[ConditionUOM] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NULL,
	[MSLActualCheck] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180718104540]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180718104540](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCodeActual] [varchar](40) NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](20) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CustID] [varchar](15) NOT NULL,
	[CustName] [nvarchar](100) NULL,
	[CustName1] [nvarchar](100) NULL,
	[ChanelID] [varchar](15) NULL,
	[Address] [nvarchar](300) NULL,
	[Phone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[MSLGroupHeaderID] [varchar](50) NOT NULL,
	[MSLChanel] [varchar](50) NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[TT] [float] NULL,
	[Amount] [float] NULL,
	[ConditionQuantity] [int] NULL,
	[ConditionUOM] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NULL,
	[MSLActualCheck] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180718113740]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180718113740](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[Region] [nvarchar](100) NULL,
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCodeActual] [varchar](40) NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](20) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[CustID] [varchar](15) NOT NULL,
	[CustomerCode] [varchar](50) NULL,
	[CustName] [nvarchar](100) NULL,
	[CustName1] [nvarchar](100) NULL,
	[ChanelID] [varchar](15) NULL,
	[SpecifiID] [smallint] NULL,
	[Address] [nvarchar](300) NULL,
	[Phone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[MSLGroupHeaderID] [varchar](50) NOT NULL,
	[MSLChanelHistory] [varchar](5) NULL,
	[MSLChanel] [varchar](5) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[Qty] [float] NULL,
	[QtyByStkUnit] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[TT] [float] NULL,
	[Amount] [float] NULL,
	[ConditionQuantity] [int] NULL,
	[ConditionUOM] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NULL,
	[MSLActualCheck] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180718140651]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180718140651](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[RegionID] [nvarchar](100) NULL,
	[BranchID] [varchar](20) NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCode] [varchar](50) NULL,
	[EmployeeID] [varchar](50) NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[TeamID] [varchar](20) NULL,
	[CustID] [varchar](50) NULL,
	[ChanelID] [varchar](50) NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[MSLChanel] [varchar](5) NOT NULL,
	[MSLGroupHeaderID] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NOT NULL,
	[MSLActualCheck] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180718142857]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180718142857](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[RegionID] [nvarchar](100) NULL,
	[BranchID] [varchar](20) NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCode] [varchar](50) NULL,
	[EmployeeID] [varchar](50) NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[TeamID] [varchar](20) NULL,
	[CustID] [varchar](50) NULL,
	[ChanelID] [varchar](50) NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[MSLChanel] [varchar](5) NOT NULL,
	[MSLGroupHeaderID] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NOT NULL,
	[MSLActualCheck] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180718144107]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180718144107](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[RegionID] [nvarchar](100) NULL,
	[BranchID] [varchar](20) NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCode] [varchar](50) NULL,
	[EmployeeID] [varchar](50) NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[TeamID] [varchar](20) NULL,
	[CustID] [varchar](50) NULL,
	[ChanelID] [varchar](50) NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[MSLChanel] [varchar](5) NOT NULL,
	[MSLGroupHeaderID] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NOT NULL,
	[MSLActualCheck] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180718145308]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180718145308](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[RegionID] [nvarchar](100) NULL,
	[BranchID] [varchar](20) NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCode] [varchar](50) NULL,
	[EmployeeID] [varchar](50) NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[TeamID] [varchar](20) NULL,
	[CustID] [varchar](50) NULL,
	[ChanelID] [varchar](50) NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[MSLChanel] [varchar](5) NOT NULL,
	[MSLGroupHeaderID] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NOT NULL,
	[MSLActualCheck] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportTHBHtuphHO06120180718145945]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportTHBHtuphHO06120180718145945](
	[AreaID] [varchar](15) NULL,
	[SubAreaID] [varchar](15) NULL,
	[RegionID] [nvarchar](100) NULL,
	[BranchID] [varchar](20) NULL,
	[BranchName] [nvarchar](300) NULL,
	[SalesRouteCode] [varchar](50) NULL,
	[EmployeeID] [varchar](50) NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[TeamID] [varchar](20) NULL,
	[CustID] [varchar](50) NULL,
	[ChanelID] [varchar](50) NOT NULL,
	[SpecifiID] [smallint] NOT NULL,
	[MSLChanel] [varchar](5) NOT NULL,
	[MSLGroupHeaderID] [varchar](50) NULL,
	[MSLTarget] [int] NULL,
	[MSLActual] [int] NOT NULL,
	[MSLActualCheck] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReportToolTemplate]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportToolTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReportName] [varchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[ReportFileName] [nvarchar](150) NULL,
	[SQLTemplate] [nvarchar](max) NULL,
	[UserAccountRequired] [varchar](20) NULL,
	[UserFullNameRequired] [nvarchar](150) NULL,
	[OrderBy] [int] NULL,
	[Active] [varchar](5) NULL,
	[CreatedUser] [varchar](50) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedUser] [varchar](50) NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ReportTemplate] PRIMARY KEY CLUSTERED 
(
	[ReportName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ResultKPIsDONHANGKD1]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResultKPIsDONHANGKD1](
	[Region] [varchar](100) NULL,
	[ProvinceID] [varchar](20) NULL,
	[ProvinceName] [nvarchar](300) NULL,
	[Branchid] [varchar](20) NULL,
	[Branchname] [nvarchar](300) NULL,
	[Sodonhang] [float] NULL,
	[Soaso] [float] NULL,
	[Sosku] [float] NULL,
	[Tongsl] [float] NULL,
	[Tongtt] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ResultKPIsDONHANGKDem1]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResultKPIsDONHANGKDem1](
	[Region] [varchar](100) NULL,
	[ProvinceID] [varchar](20) NULL,
	[ProvinceName] [nvarchar](300) NULL,
	[Branchid] [varchar](20) NULL,
	[Branchname] [nvarchar](300) NULL,
	[Employeeid] [varchar](20) NULL,
	[EmployeeName] [nvarchar](300) NULL,
	[Sodonhang] [float] NULL,
	[Soaso] [float] NULL,
	[Sosku] [float] NULL,
	[Tongsl] [float] NULL,
	[Tongtt] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rp_ProductItem]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rp_ProductItem](
	[InvtID] [varchar](40) NOT NULL,
	[UserID] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rp_ShopTypeCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rp_ShopTypeCustomer](
	[CustID] [varchar](40) NULL,
	[UserID] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RuleDetail]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RuleDetail](
	[RuleID] [uniqueidentifier] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[DisAmount] [decimal](18, 3) NULL,
	[TypeInvt1] [nvarchar](50) NULL,
	[TypeInvt2] [nvarchar](50) NULL,
	[DateUpdated] [datetime] NULL CONSTRAINT [DF_RuleDetail_DateUpdated]  DEFAULT (getdate()),
 CONSTRAINT [PK_RuleDetail] PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC,
	[InvtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RuleDetailInvt]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RuleDetailInvt](
	[RuleID] [uniqueidentifier] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[SortNumber] [int] NULL,
	[TypeInvt1] [nvarchar](50) NULL,
	[TypeInvt2] [nvarchar](50) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_RuleDetailInvt] PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC,
	[InvtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RuleDisAmount]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RuleDisAmount](
	[RuleID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_RuleDisAmount_RuleID]  DEFAULT (newid()),
	[RuleName] [nvarchar](100) NULL,
	[StartDate] [datetime] NULL,
	[Status] [bit] NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_RuleDisAmount_DateCreated]  DEFAULT (getdate()),
	[DateUpdated] [datetime] NULL CONSTRAINT [DF_RuleDisAmount_DateUpdated]  DEFAULT (getdate()),
	[Send] [bit] NULL,
 CONSTRAINT [PK_RuleDisAmount] PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RuleDisAmountInvt]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RuleDisAmountInvt](
	[RuleID] [uniqueidentifier] NOT NULL,
	[RuleName] [nvarchar](100) NULL,
	[StartDate] [datetime] NULL,
	[Status] [bit] NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_RuleDisAmountInvt] PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RuleMap]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RuleMap](
	[RuleID] [uniqueidentifier] NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[RegionID] [varchar](50) NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_RuleMap_DateCreated]  DEFAULT (getdate()),
	[DateUpdated] [datetime] NULL CONSTRAINT [DF_RuleMap_DateUpdated]  DEFAULT (getdate()),
	[Send] [bit] NULL CONSTRAINT [DF_RuleMap_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_RuleMap] PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC,
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RuleMapInvt]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RuleMapInvt](
	[RuleID] [uniqueidentifier] NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[RegionID] [varchar](50) NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_RuleMapInvt] PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC,
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S000_CHECK]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S000_CHECK](
	[DateCheck] [nvarchar](11) NULL,
	[MonthYear] [varchar](7) NULL,
	[D01A] [int] NULL,
	[D01B] [int] NULL,
	[D02A] [int] NULL,
	[D02B] [int] NULL,
	[D03A] [int] NULL,
	[D03B] [int] NULL,
	[D04A] [int] NULL,
	[D04B] [int] NULL,
	[D05A] [int] NULL,
	[D05B] [int] NULL,
	[D06A] [int] NULL,
	[D06B] [int] NULL,
	[D07A] [int] NULL,
	[D07B] [int] NULL,
	[D08A] [int] NULL,
	[D08B] [int] NULL,
	[D09A] [int] NULL,
	[D09B] [int] NULL,
	[D10A] [int] NULL,
	[D10B] [int] NULL,
	[D11A] [int] NULL,
	[D11B] [int] NULL,
	[D12A] [int] NULL,
	[D12B] [int] NULL,
	[D13A] [int] NULL,
	[D13B] [int] NULL,
	[D14A] [int] NULL,
	[D14B] [int] NULL,
	[D15A] [int] NULL,
	[D15B] [int] NULL,
	[D16A] [int] NULL,
	[D16B] [int] NULL,
	[D17A] [int] NULL,
	[D17B] [int] NULL,
	[D18A] [int] NULL,
	[D18B] [int] NULL,
	[D19A] [int] NULL,
	[D19B] [int] NULL,
	[D20A] [int] NULL,
	[D20B] [int] NULL,
	[D21A] [int] NULL,
	[D21B] [int] NULL,
	[D22A] [int] NULL,
	[D22B] [int] NULL,
	[D23A] [int] NULL,
	[D23B] [int] NULL,
	[D24A] [int] NULL,
	[D24B] [int] NULL,
	[D25A] [int] NULL,
	[D25B] [int] NULL,
	[D26A] [int] NULL,
	[D26B] [int] NULL,
	[D27A] [int] NULL,
	[D27B] [int] NULL,
	[D28A] [int] NULL,
	[D28B] [int] NULL,
	[D29A] [int] NULL,
	[D29B] [int] NULL,
	[D30A] [int] NULL,
	[D30B] [int] NULL,
	[D31A] [int] NULL,
	[D31B] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S002CHECHDATADATE]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S002CHECHDATADATE](
	[NAM] [int] NULL,
	[THANG] [int] NULL,
	[LOAIBANG] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[NGAY] [datetime] NULL,
	[SODONG] [int] NULL,
	[IMPORTDATE] [datetime] NULL CONSTRAINT [DF_S002CHECHDATADATE_IMPORTDATE]  DEFAULT (getdate())
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S002CHECHDATADATE_20170529_11]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S002CHECHDATADATE_20170529_11](
	[NAM] [int] NULL,
	[THANG] [int] NULL,
	[LOAIBANG] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[NGAY] [datetime] NULL,
	[SODONG] [int] NULL,
	[IMPORTDATE] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S002CHECHDATADATE_20170613_1]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S002CHECHDATADATE_20170613_1](
	[NAM] [int] NULL,
	[THANG] [int] NULL,
	[LOAIBANG] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[NGAY] [datetime] NULL,
	[SODONG] [int] NULL,
	[IMPORTDATE] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S002CHECHDATADATE_20170613_2]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S002CHECHDATADATE_20170613_2](
	[NAM] [int] NULL,
	[THANG] [int] NULL,
	[LOAIBANG] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[NGAY] [datetime] NULL,
	[SODONG] [int] NULL,
	[IMPORTDATE] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S002CHECHDATADATE_20170613_3]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S002CHECHDATADATE_20170613_3](
	[NAM] [int] NULL,
	[THANG] [int] NULL,
	[LOAIBANG] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[NGAY] [datetime] NULL,
	[SODONG] [int] NULL,
	[IMPORTDATE] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S002CHECHDATADATE_20170619_1]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S002CHECHDATADATE_20170619_1](
	[NAM] [int] NULL,
	[THANG] [int] NULL,
	[LOAIBANG] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[NGAY] [datetime] NULL,
	[SODONG] [int] NULL,
	[IMPORTDATE] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S002CHECHDATADATE_20170619_2]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S002CHECHDATADATE_20170619_2](
	[NAM] [int] NULL,
	[THANG] [int] NULL,
	[LOAIBANG] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[NGAY] [datetime] NULL,
	[SODONG] [int] NULL,
	[IMPORTDATE] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S002CHECHDATADATE_20170619_3]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S002CHECHDATADATE_20170619_3](
	[NAM] [int] NULL,
	[THANG] [int] NULL,
	[LOAIBANG] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[NGAY] [datetime] NULL,
	[SODONG] [int] NULL,
	[IMPORTDATE] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S002CHECHDATADATE_20170619_4]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S002CHECHDATADATE_20170619_4](
	[NAM] [int] NULL,
	[THANG] [int] NULL,
	[LOAIBANG] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[NGAY] [datetime] NULL,
	[SODONG] [int] NULL,
	[IMPORTDATE] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S002CHECHDATADATE_20170619_5]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S002CHECHDATADATE_20170619_5](
	[NAM] [int] NULL,
	[THANG] [int] NULL,
	[LOAIBANG] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[NGAY] [datetime] NULL,
	[SODONG] [int] NULL,
	[IMPORTDATE] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S003V1]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S003V1](
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[TotalRowSalesOrder] [int] NULL,
	[TotalRowPOS] [int] NULL DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S003V2]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S003V2](
	[CustomerCode] [varchar](40) NOT NULL,
	[SalesOrderCode] [varchar](40) NOT NULL,
	[TotalRowSalesOrder] [int] NULL,
	[TotalRowPOS] [int] NULL DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S00CHECKDATA]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S00CHECKDATA](
	[NAM] [int] NULL,
	[THANG] [int] NULL,
	[LOAIBANG] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[SODONG] [int] NULL,
	[IMPORTDATE] [datetime] NULL CONSTRAINT [DF_S00CHECKDATA_IMPORTDATE]  DEFAULT (getdate())
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S02]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S02](
	[BranchID] [varchar](20) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Quantity] [nvarchar](250) NULL,
	[Amount] [nvarchar](250) NULL,
 CONSTRAINT [PK_S02] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalePrice]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalePrice](
	[NTHL] [datetime] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[LastCode] [float] NOT NULL,
	[UnitPrice01] [float] NULL,
	[UnitPrice01C] [bit] NULL,
	[UnitPrice03] [float] NULL,
	[UnitPrice03C] [bit] NULL,
	[Crtd_User] [nvarchar](10) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [nvarchar](50) NULL,
	[Status] [char](1) NULL CONSTRAINT [DF_SalePrice_Status]  DEFAULT ('L'),
	[Send] [bit] NULL CONSTRAINT [DF_SalePrice_Send]  DEFAULT ((0)),
	[SalePriceCode] [varchar](40) NOT NULL,
 CONSTRAINT [PK_SalePrice] PRIMARY KEY CLUSTERED 
(
	[NTHL] ASC,
	[InvtID] ASC,
	[SalePriceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalePricebak]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalePricebak](
	[NTHL] [datetime] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[LastCode] [float] NOT NULL,
	[UnitPrice01] [float] NULL,
	[UnitPrice01C] [bit] NULL,
	[UnitPrice03] [float] NULL,
	[UnitPrice03C] [bit] NULL,
	[Crtd_User] [nvarchar](10) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [nvarchar](50) NULL,
	[Status] [char](1) NULL,
	[Send] [bit] NULL,
	[SalePriceCode] [varchar](40) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salepriceGTtemp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salepriceGTtemp](
	[NTHL] [datetime] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[LastCode] [float] NOT NULL,
	[UnitPrice01] [float] NULL,
	[UnitPrice01C] [bit] NULL,
	[UnitPrice03] [float] NULL,
	[UnitPrice03C] [bit] NULL,
	[Crtd_User] [nvarchar](10) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [nvarchar](50) NULL,
	[Status] [char](1) NULL,
	[Send] [bit] NULL,
	[SalePriceCode] [varchar](40) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalePriceHead]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalePriceHead](
	[SalePriceCode] [varchar](40) NOT NULL,
	[SalePriceName] [nvarchar](100) NULL,
	[Status] [bit] NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_SalePriceHead_DateCreated]  DEFAULT (getdate()),
	[DateUpdated] [datetime] NULL CONSTRAINT [DF_SalePriceHead_DateUpdated]  DEFAULT (getdate()),
	[Send] [bit] NULL,
	[StartDate] [datetime] NULL,
 CONSTRAINT [PK_SalePriceHead] PRIMARY KEY CLUSTERED 
(
	[SalePriceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalePriceHeadbak]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalePriceHeadbak](
	[SalePriceCode] [varchar](40) NOT NULL,
	[SalePriceName] [nvarchar](100) NULL,
	[Status] [bit] NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[Send] [bit] NULL,
	[StartDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalePriceMap]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalePriceMap](
	[SalePriceCode] [varchar](40) NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[RegionID] [varchar](100) NOT NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_SalePriceMap_DateCreated]  DEFAULT (getdate()),
	[DateUpdated] [datetime] NULL CONSTRAINT [DF_SalePriceMap_DateUpdated]  DEFAULT (getdate()),
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_SalePriceMap_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_SalePriceMap] PRIMARY KEY CLUSTERED 
(
	[SalePriceCode] ASC,
	[BranchID] ASC,
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalePriceMapbak]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalePriceMapbak](
	[SalePriceCode] [varchar](40) NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[RegionID] [varchar](100) NOT NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalePricetemp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalePricetemp](
	[InvtID] [varchar](20) NOT NULL,
	[NTHL] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salepricevy]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salepricevy](
	[NTHL] [datetime] NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[LastCode] [float] NOT NULL,
	[UnitPrice01] [float] NULL,
	[UnitPrice01C] [bit] NULL,
	[UnitPrice03] [float] NULL,
	[UnitPrice03C] [bit] NULL,
	[Crtd_User] [nvarchar](10) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [nvarchar](50) NULL,
	[Status] [char](1) NULL,
	[Send] [bit] NULL,
	[SalePriceCode] [varchar](40) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesPerson]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPerson](
	[ID] [uniqueidentifier] NOT NULL,
	[CustomerCode] [nvarchar](40) NOT NULL,
	[SalesPersonCode] [nvarchar](40) NOT NULL,
	[SalesPersonName] [nvarchar](255) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[DateOfBirth] [datetime] NULL,
	[IdentityCard] [nvarchar](40) NULL,
	[IdentityCardPlace] [nvarchar](120) NULL,
	[IdentityCardDate] [datetime] NULL,
	[IdentityCardAddress] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](80) NULL,
	[Phone2] [nvarchar](80) NULL,
	[Address] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Salesman] [bit] NULL,
	[DeliveryPerson] [bit] NULL,
	[CashCollector] [bit] NULL,
	[Ward] [nvarchar](80) NULL,
	[District] [nvarchar](80) NULL,
	[City] [nvarchar](80) NULL,
	[State] [nvarchar](80) NULL,
	[Country] [nvarchar](80) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[HiredDate] [datetime] NULL,
	[Attribute1] [nvarchar](255) NULL,
	[Attribute2] [nvarchar](255) NULL,
	[Remark] [nvarchar](1000) NULL,
	[Status] [nvarchar](1) NULL,
	[Systemstatus] [nvarchar](1) NULL,
	[PaymentType] [nvarchar](40) NULL,
	[TaxType] [nvarchar](40) NULL,
	[TaxCode] [nvarchar](120) NULL,
	[Address3] [nvarchar](255) NULL,
	[Address4] [nvarchar](255) NULL,
	[Customer_ID] [uniqueidentifier] NULL,
	[CompanyCode] [nvarchar](40) NOT NULL,
	[SalesOrgCode] [nvarchar](40) NOT NULL,
	[Source] [nvarchar](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersion] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SalesPerson] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalesRoute]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesRoute](
	[SalesRouteCode] [varchar](40) NOT NULL,
	[SalesRouteName] [nvarchar](255) NULL,
	[BranchID] [varchar](20) NULL,
	[Status] [bit] NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL CONSTRAINT [DF_SalesRoute_DateCreated]  DEFAULT (getdate()),
	[DateUpdated] [datetime] NULL CONSTRAINT [DF_SalesRoute_DateUpdated]  DEFAULT (getdate()),
 CONSTRAINT [PK_SalesRoute] PRIMARY KEY CLUSTERED 
(
	[SalesRouteCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesTax]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesTax](
	[TaxID] [varchar](15) NOT NULL,
	[Descr] [nvarchar](100) NOT NULL,
	[TaxRate] [float] NOT NULL CONSTRAINT [DF_SalesTax_TaxRate]  DEFAULT ((0)),
	[POAcct] [varchar](20) NOT NULL,
	[OPAcct] [varchar](20) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_SalesTax_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_SalesTax] PRIMARY KEY CLUSTERED 
(
	[TaxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SaleTarget]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaleTarget](
	[RegionID] [nvarchar](50) NOT NULL,
	[phSBU] [nvarchar](10) NOT NULL,
	[DivisionID] [varchar](20) NOT NULL,
	[TargetMonth] [int] NOT NULL,
	[TargetYear] [int] NOT NULL,
	[TargetQty] [float] NULL,
	[TargetCost] [float] NULL,
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_A_Target] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC,
	[phSBU] ASC,
	[DivisionID] ASC,
	[TargetMonth] ASC,
	[TargetYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopType]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopType](
	[TypeID] [varchar](15) NOT NULL,
	[TypeName] [nvarchar](150) NULL,
	[Active] [varchar](5) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](50) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](50) NOT NULL,
	[Send] [bit] NULL,
	[IsCompany] [bit] NULL CONSTRAINT [DF_ShopType_IsCompany]  DEFAULT ((1)),
	[IsTT] [bit] NULL,
	[IsKM] [bit] NULL,
 CONSTRAINT [PK_ShopType] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopTypeCustomer]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopTypeCustomer](
	[BranchID] [varchar](15) NOT NULL,
	[ShopTypeID] [varchar](15) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CustID] [varchar](15) NOT NULL,
	[Active] [varchar](5) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_ShopTypeCustomer_Send]  DEFAULT ((0)),
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_ShopTypeCustomer] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[ShopTypeID] ASC,
	[StartDate] ASC,
	[EndDate] ASC,
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopTypeCustomerNKD10]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopTypeCustomerNKD10](
	[BranchID] [varchar](15) NOT NULL,
	[ShopTypeID] [varchar](15) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CustID] [varchar](15) NOT NULL,
	[Active] [varchar](5) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopTypeCustomerNOTDELETE]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopTypeCustomerNOTDELETE](
	[BranchID] [varchar](15) NOT NULL,
	[ShopTypeID] [varchar](15) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CustID] [varchar](15) NOT NULL,
	[Active] [varchar](5) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopTypeCustomerNOTDELETE10]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopTypeCustomerNOTDELETE10](
	[BranchID] [varchar](15) NOT NULL,
	[ShopTypeID] [varchar](15) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CustID] [varchar](15) NOT NULL,
	[Active] [varchar](5) NULL,
	[Send] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Site]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Site](
	[BranchID] [varchar](20) NOT NULL,
	[SiteID] [varchar](20) NOT NULL,
	[Descr] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_Site_Active]  DEFAULT ((1)),
 CONSTRAINT [PK_Site] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKUType]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKUType](
	[SKUTypeID] [varchar](3) NOT NULL,
	[SKUTypeName] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_SKUType_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_SKUType] PRIMARY KEY CLUSTERED 
(
	[SKUTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SPEC]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPEC](
	[Region] [nvarchar](255) NULL,
	[NPP] [nvarchar](255) NULL,
	[Mã NPP] [float] NULL,
	[Mã KH] [nvarchar](255) NULL,
	[RE] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specification]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Specification](
	[SpecifiID] [smallint] NOT NULL,
	[Descr] [nvarchar](500) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_Specification_Active]  DEFAULT ((1)),
	[Send] [bit] NOT NULL CONSTRAINT [DF_Specification_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_Specification] PRIMARY KEY CLUSTERED 
(
	[SpecifiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SpecificationGo]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecificationGo](
	[SpecifiID] [smallint] NOT NULL,
	[Descr] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SRecordIDCheck]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SRecordIDCheck](
	[RecordID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SRecordIDRe]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SRecordIDRe](
	[BranchID] [varchar](20) NOT NULL,
	[LostRecordID] [int] NOT NULL,
	[TypeMax] [int] NOT NULL,
 CONSTRAINT [PK_SRecordIDRe] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[LostRecordID] ASC,
	[TypeMax] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SRecordIDTemp]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SRecordIDTemp](
	[Branchid] [varchar](20) NOT NULL,
	[TypeMax] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreAddress]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreAddress](
	[AddressAddress] [nvarchar](300) NOT NULL,
	[ISOCountryCode] [varchar](2) NOT NULL,
	[AddressPostCode] [varchar](1) NOT NULL,
	[AddressGeocodeLate] [float] NULL,
	[AddressGeocodeLong] [float] NULL,
	[EmailAddress] [varchar](1) NOT NULL,
	[WWWwwwAddress] [varchar](1) NOT NULL,
	[PhoneCountryCode] [varchar](1) NOT NULL,
	[PhoneNumber] [varchar](11) NULL,
	[PhoneAreaCode] [varchar](1) NOT NULL,
	[StoreID2] [varchar](50) NOT NULL,
	[StoreGLN] [varchar](1) NOT NULL,
	[MasterDataForStoreObjects_Id] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StorePhysicalGeography]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StorePhysicalGeography](
	[CountryID] [varchar](2) NOT NULL,
	[CountryName] [varchar](7) NOT NULL,
	[RegionID] [varchar](1) NOT NULL,
	[RegionName] [varchar](1) NOT NULL,
	[StateID] [varchar](1) NOT NULL,
	[StateName] [varchar](1) NOT NULL,
	[CityCode] [varchar](15) NOT NULL,
	[CityName] [nvarchar](100) NOT NULL,
	[AreaCode] [varchar](1) NOT NULL,
	[AreaName] [varchar](1) NOT NULL,
	[DistrictCode] [varchar](15) NOT NULL,
	[DistrictName] [nvarchar](100) NOT NULL,
	[MasterDataForStoreObjects_Id] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreSalesGeography]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreSalesGeography](
	[SalesRegionID] [varchar](1) NOT NULL,
	[SalesRegionName] [varchar](7) NOT NULL,
	[SalesTeamID] [varchar](1) NOT NULL,
	[SalesTeamName] [varchar](7) NOT NULL,
	[SalesRepID] [varchar](7) NOT NULL,
	[SalesTerritoryName] [varchar](7) NOT NULL,
	[IsPrimaryTerritory] [int] NOT NULL,
	[MasterDataForStoreObjects_Id] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreToSalesHierarchy]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreToSalesHierarchy](
	[KeyAccountID] [varchar](7) NOT NULL,
	[KeyAccountName] [varchar](7) NOT NULL,
	[WholesalerName] [nvarchar](100) NOT NULL,
	[BranchName] [nvarchar](100) NOT NULL,
	[SalesRepName] [varchar](7) NOT NULL,
	[WholesalerID] [varchar](15) NULL,
	[BranchID] [varchar](15) NULL,
	[SalesRepID] [varchar](7) NOT NULL,
	[MasterDataForStoreObjects_Id] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubArea]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SubArea](
	[SubAreaID] [varchar](15) NOT NULL,
	[SubAreaName] [nvarchar](100) NOT NULL,
	[AreaID] [varchar](15) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_Area_Active]  DEFAULT ((0)),
	[Send] [bit] NOT NULL CONSTRAINT [DF_Area_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[SubAreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysSetup]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysSetup](
	[BranchID] [varchar](20) NOT NULL,
	[BranchName] [nvarchar](100) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[EmployeeName] [char](30) NOT NULL,
	[SetupID] [varchar](2) NOT NULL,
	[DecSymbol] [char](1) NOT NULL,
	[DigitSymbol] [char](1) NOT NULL,
	[DateFormatStr] [char](20) NOT NULL,
	[IsHeadOffice] [smallint] NOT NULL,
	[CpnyID] [varchar](20) NOT NULL,
	[CpnyName] [char](100) NOT NULL,
	[Addr] [nvarchar](60) NOT NULL,
	[TaxNbr] [char](20) NOT NULL,
	[DayDelay] [float] NOT NULL,
	[DayEarly] [float] NOT NULL,
	[Tel] [char](30) NOT NULL,
	[IDKEY] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemLog]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLog](
	[Date] [datetime] NOT NULL,
	[Thread] [nvarchar](255) NOT NULL,
	[Logger] [nvarchar](255) NOT NULL,
	[Message] [nvarchar](4000) NULL,
	[Level] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Key]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Key](
	[TableName] [nvarchar](128) NULL,
	[ColumnName] [nvarchar](128) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Key_Ord]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Key_Ord](
	[TableName] [nvarchar](128) NULL,
	[ColumnName] [nvarchar](128) NULL,
	[Ord] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_Result]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Result](
	[TableName] [nvarchar](128) NULL,
	[1] [nvarchar](128) NULL,
	[2] [nvarchar](128) NULL,
	[3] [nvarchar](128) NULL,
	[4] [nvarchar](128) NULL,
	[5] [nvarchar](128) NULL,
	[6] [nvarchar](128) NULL,
	[7] [nvarchar](128) NULL,
	[8] [nvarchar](128) NULL,
	[9] [nvarchar](128) NULL,
	[Result] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TabletDetails]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TabletDetails](
	[TabletID] [varchar](50) NULL,
	[TypeTran] [varchar](50) NULL,
	[EmployeeID] [varchar](20) NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[Loaction] [varchar](20) NULL,
	[DateInput] [datetime] NULL,
	[Notes] [nvarchar](200) NULL,
	[SIM] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tablets]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tablets](
	[TabletID] [varchar](50) NOT NULL,
	[TabletName] [nvarchar](50) NULL,
	[Notes] [nvarchar](200) NULL,
	[UserCreated] [varchar](20) NULL,
	[UserUpdated] [varchar](20) NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[DateActive] [datetime] NULL,
 CONSTRAINT [PK_Tablets] PRIMARY KEY CLUSTERED 
(
	[TabletID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tam]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tam](
	[BranchID] [varchar](15) NOT NULL,
	[TranDate] [datetime] NOT NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[Description] [nvarchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TamGia]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TamGia](
	[InvtID] [varchar](20) NOT NULL,
	[PriceN] [decimal](18, 0) NULL,
 CONSTRAINT [PK_TamGia] PRIMARY KEY CLUSTERED 
(
	[InvtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TargetMonitor]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TargetMonitor](
	[BranchID] [varchar](15) NOT NULL,
	[BranchName] [nvarchar](100) NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[TeamID] [varchar](15) NULL,
	[RegionName] [nvarchar](300) NULL,
	[SubRoute] [float] NULL,
	[SaleRoute] [float] NULL,
	[CompareMonth] [float] NULL,
	[ActualLast] [float] NULL,
	[SumSBU] [float] NULL,
	[SumBUN] [float] NULL,
	[SumCAKE] [float] NULL,
	[SumCRACKER] [float] NULL,
	[SumWAFER] [float] NULL,
	[SumCOOKIE] [float] NULL,
	[SumSNACK] [float] NULL,
	[SumCANDY] [float] NULL,
	[SumGLICO] [float] NULL,
	[SumMIGOI] [float] NULL,
	[TargetType] [varchar](50) NULL,
	[TargetValue] [float] NULL,
	[TargetObject] [nvarchar](300) NULL,
	[AverageDT] [float] NULL,
	[SuccessOrder] [float] NULL,
	[AverDTOrder] [float] NULL,
	[Note] [nvarchar](300) NULL,
	[DateEnd] [smalldatetime] NOT NULL,
	[FromDate] [smalldatetime] NOT NULL,
	[ToDate] [smalldatetime] NOT NULL,
	[CreateUser] [nvarchar](50) NULL,
	[UpdateUser] [nvarchar](50) NULL,
 CONSTRAINT [PK_TargetMonitor] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[EmployeeID] ASC,
	[DateEnd] ASC,
	[FromDate] ASC,
	[ToDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TargetResult]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TargetResult](
	[BranchID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[FromDate] [smalldatetime] NOT NULL,
	[ToDate] [smalldatetime] NOT NULL,
	[Key] [int] NOT NULL,
	[CreateUser] [varchar](50) NULL,
	[UpdateUser] [varchar](50) NULL,
	[CreateDate] [smalldatetime] NULL,
	[UpdateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_TargetResult] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC,
	[EmployeeID] ASC,
	[FromDate] ASC,
	[ToDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblSumCust]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblSumCust](
	[BranchID] [varchar](15) NOT NULL,
	[Trandate] [smalldatetime] NOT NULL,
	[SumCust] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Team]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Team](
	[TeamID] [varchar](20) NOT NULL,
	[TeamName] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_Team_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temcus]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Temcus](
	[STT] [int] NULL,
	[CustID] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[testtinhluong]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[testtinhluong](
	[BranchID] [varchar](15) NOT NULL,
	[RecordID] [int] NOT NULL,
	[Pos] [varchar](50) NULL,
	[TranDate] [datetime] NOT NULL,
	[BatNbr] [varchar](20) NULL,
	[RefNbr] [varchar](20) NULL,
	[BillNbr] [varchar](20) NOT NULL,
	[RefBillNbr] [varchar](50) NULL,
	[CustID] [varchar](15) NOT NULL,
	[EmployeeID] [varchar](15) NOT NULL,
	[EmployeeID1] [varchar](15) NULL,
	[LineID] [smallint] NOT NULL,
	[SiteID] [varchar](20) NULL,
	[InvtID] [varchar](20) NOT NULL,
	[InvtIDref] [varchar](20) NULL,
	[Descr] [nvarchar](200) NULL,
	[TranDescr] [varchar](20) NULL,
	[UnitDesc] [varchar](20) NULL,
	[CnvFact] [float] NULL,
	[UnitMultDiv] [varchar](50) NULL,
	[InvtMult] [smallint] NULL,
	[Qty] [float] NOT NULL,
	[QtyByStkUnit] [float] NULL,
	[UnitCost] [float] NULL,
	[ExtCost] [float] NULL,
	[UnitPrice] [float] NULL,
	[UnitPriceInclTax] [float] NULL,
	[UnitPriceDis] [float] NULL,
	[ExtPrice] [float] NULL,
	[ExtPriceDisInclTax] [float] NULL,
	[ExtPriceDis] [float] NULL,
	[Discount] [float] NULL,
	[Discount1] [float] NULL,
	[TaxID] [varchar](20) NULL,
	[TaxRate] [float] NULL,
	[TaxAmt] [float] NULL,
	[TaxAmtDis] [float] NULL,
	[BillTotAmt] [float] NULL,
	[BillTotAmtDis] [float] NULL,
	[DisAmtByBill] [float] NULL,
	[DisAmtByLine] [float] NULL,
	[ReasonCd] [varchar](50) NULL,
	[TranType] [varchar](50) NULL,
	[POSTranType] [varchar](50) NULL,
	[JrnlType] [varchar](50) NULL,
	[Rlsed] [smallint] NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[QtyOnhand] [float] NULL,
	[QtyAvail] [float] NULL,
	[Send] [bit] NULL,
	[ImportDate] [datetime] NULL,
	[DisDVT] [float] NULL,
	[SumDis] [float] NULL,
	[InvtDis] [decimal](18, 3) NULL,
	[BoolEmobiz] [varchar](40) NULL,
	[BoolUpdate] [bit] NULL,
	[BoolDelete] [bit] NULL,
	[OffRoute] [bit] NULL,
	[PromotionResultStr] [varchar](40) NULL,
	[PromotionCodeGroup] [varchar](40) NULL,
	[PromotionCodeBill] [varchar](40) NULL,
	[PromotionCodeManual] [varchar](40) NULL,
	[PlanDeliveryDate] [datetime] NULL,
	[SalesRouteCode] [varchar](40) NULL,
	[PromotionDetailLineID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TONKHO2013]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TONKHO2013](
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[Qty] [float] NULL,
	[SiteID] [varchar](20) NULL,
	[TranDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TONKHOINVT]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TONKHOINVT](
	[Invtid] [varchar](20) NULL,
	[STT] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TONKHOINVT082015]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TONKHOINVT082015](
	[invtid] [varchar](20) NULL,
	[STT] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TONKHOINVT092015]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TONKHOINVT092015](
	[Invtid] [varchar](20) NULL,
	[STT] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TONKHOINVTTH11]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TONKHOINVTTH11](
	[invtid] [varchar](20) NULL,
	[STT] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tonkhotrungthu]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tonkhotrungthu](
	[TranDate] [datetime] NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NULL,
	[QtyIN] [float] NULL,
	[QtyINDT] [float] NULL,
	[QtyOutDT] [float] NULL,
	[QtyNPPSubCom] [float] NULL,
	[EditQtyNPPSubCom] [float] NULL,
	[QtyCom] [float] NULL,
	[EditQtyCom] [float] NULL,
	[QtyOutlet] [float] NULL,
	[EditQtyOutlet] [float] NULL,
	[QtyOrderCom] [float] NULL,
	[EditQtyOrderCom] [float] NULL,
	[NoteDT] [nvarchar](300) NULL,
	[EditNoteDT] [nvarchar](300) NULL,
	[Note] [nvarchar](300) NULL,
	[EditNote] [nvarchar](300) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_Tonkhotrungthu_Send]  DEFAULT ((0)),
	[Qty] [float] NULL,
	[ImportDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tonkhotrungthu1708]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tonkhotrungthu1708](
	[TranDate] [datetime] NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NULL,
	[QtyIN] [float] NULL,
	[QtyINDT] [float] NULL,
	[QtyOutDT] [float] NULL,
	[QtyNPPSubCom] [float] NULL,
	[EditQtyNPPSubCom] [float] NULL,
	[QtyCom] [float] NULL,
	[EditQtyCom] [float] NULL,
	[QtyOutlet] [float] NULL,
	[EditQtyOutlet] [float] NULL,
	[QtyOrderCom] [float] NULL,
	[EditQtyOrderCom] [float] NULL,
	[NoteDT] [nvarchar](300) NULL,
	[EditNoteDT] [nvarchar](300) NULL,
	[Note] [nvarchar](300) NULL,
	[EditNote] [nvarchar](300) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NULL,
	[Qty] [float] NULL,
	[ImportDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tonkhotrungthu201407]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tonkhotrungthu201407](
	[TranDate] [datetime] NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NULL,
	[QtyIN] [float] NULL,
	[QtyINDT] [float] NULL,
	[QtyOutDT] [float] NULL,
	[QtyNPPSubCom] [float] NULL,
	[EditQtyNPPSubCom] [float] NULL,
	[QtyCom] [float] NULL,
	[EditQtyCom] [float] NULL,
	[QtyOutlet] [float] NULL,
	[EditQtyOutlet] [float] NULL,
	[QtyOrderCom] [float] NULL,
	[EditQtyOrderCom] [float] NULL,
	[NoteDT] [nvarchar](300) NULL,
	[EditNoteDT] [nvarchar](300) NULL,
	[Note] [nvarchar](300) NULL,
	[EditNote] [nvarchar](300) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NULL,
	[Qty] [float] NULL,
	[ImportDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TonkhotrungthuTT02122013]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TonkhotrungthuTT02122013](
	[TranDate] [datetime] NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NULL,
	[QtyIN] [float] NULL,
	[QtyINDT] [float] NULL,
	[QtyOutDT] [float] NULL,
	[QtyNPPSubCom] [float] NULL,
	[EditQtyNPPSubCom] [float] NULL,
	[QtyCom] [float] NULL,
	[EditQtyCom] [float] NULL,
	[QtyOutlet] [float] NULL,
	[EditQtyOutlet] [float] NULL,
	[QtyOrderCom] [float] NULL,
	[EditQtyOrderCom] [float] NULL,
	[NoteDT] [nvarchar](300) NULL,
	[EditNoteDT] [nvarchar](300) NULL,
	[Note] [nvarchar](300) NULL,
	[EditNote] [nvarchar](300) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NULL,
	[Qty] [float] NULL,
	[ImportDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TonkhotrungthuTT2013]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TonkhotrungthuTT2013](
	[TranDate] [datetime] NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NULL,
	[QtyIN] [float] NULL,
	[QtyINDT] [float] NULL,
	[QtyOutDT] [float] NULL,
	[QtyNPPSubCom] [float] NULL,
	[EditQtyNPPSubCom] [float] NULL,
	[QtyCom] [float] NULL,
	[EditQtyCom] [float] NULL,
	[QtyOutlet] [float] NULL,
	[EditQtyOutlet] [float] NULL,
	[QtyOrderCom] [float] NULL,
	[EditQtyOrderCom] [float] NULL,
	[NoteDT] [nvarchar](300) NULL,
	[EditNoteDT] [nvarchar](300) NULL,
	[Note] [nvarchar](300) NULL,
	[EditNote] [nvarchar](300) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NULL,
	[Qty] [float] NULL,
	[ImportDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TonkhotrungthuTT2015]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TonkhotrungthuTT2015](
	[TranDate] [datetime] NOT NULL,
	[BranchID] [varchar](20) NOT NULL,
	[InvtID] [varchar](20) NULL,
	[QtyIN] [float] NULL,
	[QtyINDT] [float] NULL,
	[QtyOutDT] [float] NULL,
	[QtyNPPSubCom] [float] NULL,
	[EditQtyNPPSubCom] [float] NULL,
	[QtyCom] [float] NULL,
	[EditQtyCom] [float] NULL,
	[QtyOutlet] [float] NULL,
	[EditQtyOutlet] [float] NULL,
	[QtyOrderCom] [float] NULL,
	[EditQtyOrderCom] [float] NULL,
	[NoteDT] [nvarchar](300) NULL,
	[EditNoteDT] [nvarchar](300) NULL,
	[Note] [nvarchar](300) NULL,
	[EditNote] [nvarchar](300) NULL,
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NULL,
	[Qty] [float] NULL,
	[ImportDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [varchar](20) NOT NULL,
	[UnitName] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NULL CONSTRAINT [DF_Unit_Active]  DEFAULT ((1)),
	[LUpd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_Unit_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnitClass]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnitClass](
	[UnitClassID] [smallint] NOT NULL,
	[Descr] [nvarchar](100) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_UnitClass_Active]  DEFAULT ((1)),
	[Send] [bit] NOT NULL CONSTRAINT [DF_UnitClass_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_UnitClass] PRIMARY KEY CLUSTERED 
(
	[UnitClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [varchar](20) NOT NULL,
	[Descr] [char](30) NOT NULL,
	[Password] [char](100) NOT NULL,
	[DfltGroupID] [varchar](20) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserGroup](
	[GroupID] [varchar](20) NOT NULL,
	[Descr] [char](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendClass]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendClass](
	[VendClassID] [varchar](15) NOT NULL,
	[Crtd_DateTime] [datetime] NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Descr] [nvarchar](100) NOT NULL,
	[LUpd_DateTime] [datetime] NOT NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[Status] [char](1) NOT NULL,
	[RepStatus] [int] NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_VendClass_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_VendClass] PRIMARY KEY CLUSTERED 
(
	[VendClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendor](
	[VendorID] [varchar](15) NOT NULL,
	[VendorName] [nvarchar](100) NOT NULL,
	[Addr1] [nvarchar](100) NOT NULL,
	[Addr2] [nvarchar](100) NOT NULL,
	[Fax] [char](30) NOT NULL,
	[Phone] [char](30) NOT NULL,
	[TaxID] [varchar](20) NOT NULL,
	[Acct] [varchar](20) NOT NULL,
	[TaxRegNbr] [char](15) NOT NULL,
	[Crtd_User] [varchar](20) NOT NULL,
	[Crtd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NOT NULL,
	[LUpd_DateTime] [datetime] NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_Vendor_Active]  DEFAULT ((1)),
	[Send] [bit] NOT NULL CONSTRAINT [DF_Vendor_Send]  DEFAULT ((0)),
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VersionDMS]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VersionDMS](
	[VersionDMSServer] [varchar](50) NOT NULL,
	[DateChanged] [datetime] NULL,
	[UserChanged] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VisitDetails]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VisitDetails](
	[VisitID] [nvarchar](88) NULL,
	[PlannedDateStart] [varchar](10) NULL,
	[PlannedTimeStart] [varchar](8) NOT NULL,
	[PlannedDateEnd] [varchar](10) NULL,
	[PlannedTimeEnd] [varchar](8) NOT NULL,
	[ActualDateStart] [varchar](10) NULL,
	[ActualTimeStart] [varchar](8) NOT NULL,
	[ActualDateEnd] [varchar](10) NULL,
	[ActualTimeEnd] [varchar](8) NOT NULL,
	[StartVisitLongitude] [int] NOT NULL,
	[StartVisitLatitude] [int] NOT NULL,
	[FinishVisitLongitude] [int] NOT NULL,
	[FinishVisitLatitude] [int] NOT NULL,
	[VisitType] [varchar](2) NOT NULL,
	[VisitStatus] [varchar](1) NOT NULL,
	[SalesTerritoryName] [varchar](7) NOT NULL,
	[SalesOrderTaken] [int] NOT NULL,
	[HotZAuditDone] [int] NOT NULL,
	[PrimaryMSLAuditDone] [int] NOT NULL,
	[PrimaryADLAuditDone] [int] NOT NULL,
	[DisplayCheckDone] [int] NOT NULL,
	[ShelfProfileCheckDone] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WALKIN]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WALKIN](
	[Region] [nvarchar](255) NULL,
	[NPP] [nvarchar](255) NULL,
	[Mã NPP] [float] NULL,
	[Mã KH] [nvarchar](255) NULL,
	[RE] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WeekKH]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WeekKH](
	[BranchID] [varchar](20) NOT NULL,
	[WeekID] [nvarchar](20) NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[FrDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[Qty] [float] NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_WeekKH_Send_1]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WeekKHCT]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WeekKHCT](
	[BranchID] [varchar](20) NOT NULL,
	[DayID] [nvarchar](20) NOT NULL,
	[WeekID] [nvarchar](20) NOT NULL,
	[InvtID] [varchar](20) NOT NULL,
	[DateDH] [datetime] NOT NULL,
	[QtyDH] [float] NOT NULL,
	[QtyCU] [float] NOT NULL,
	[Status] [char](1) NULL,
	[Crtd_User] [varchar](20) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](20) NULL,
	[Send] [bit] NULL CONSTRAINT [DF_WeekKHCT_Send_1]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WholeSaler]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WholeSaler](
	[WholeSalerID] [varchar](20) NOT NULL,
	[WholeSalerName] [nvarchar](100) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_WholeSaler_Send]  DEFAULT ((0)),
	[Active] [varchar](5) NULL CONSTRAINT [DF_WholeSaler_Active]  DEFAULT ((1)),
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](50) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](50) NULL,
 CONSTRAINT [PK_WholeSaler] PRIMARY KEY CLUSTERED 
(
	[WholeSalerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WholeSaler_Inventory]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WholeSaler_Inventory](
	[Period] [varchar](6) NULL,
	[WholeSalerID] [varchar](20) NULL,
	[InvtID] [nvarchar](20) NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[LastUpdatedBy] [nvarchar](40) NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WholeSalerType]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WholeSalerType](
	[WholeSalerTypeID] [varchar](20) NOT NULL,
	[WholeSalerTypeName] [nvarchar](100) NOT NULL,
	[Send] [bit] NOT NULL CONSTRAINT [DF_WholeSalerType_Send]  DEFAULT ((0)),
	[Active] [varchar](5) NULL CONSTRAINT [DF_WholeSalerType_Active]  DEFAULT ((1)),
	[Crtd_DateTime] [datetime] NULL,
	[Crtd_User] [varchar](50) NULL,
	[LUpd_DateTime] [datetime] NULL,
	[LUpd_User] [varchar](50) NULL,
 CONSTRAINT [PK_WholeSalerType] PRIMARY KEY CLUSTERED 
(
	[WholeSalerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WHS]    Script Date: 7/17/2018 12:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WHS](
	[Region] [nvarchar](255) NULL,
	[NPP] [nvarchar](255) NULL,
	[Mã NPP] [float] NULL,
	[Mã KH] [nvarchar](255) NULL,
	[RE] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AssetGroup] ADD  CONSTRAINT [DF_AssetGroup_Crtd_DateTime]  DEFAULT (getdate()) FOR [Crtd_DateTime]
GO
ALTER TABLE [dbo].[CustomerHistory] ADD  CONSTRAINT [DF_CustomerHistory_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[EMAsset] ADD  CONSTRAINT [DF_EMAsset_Crtd_DateTime]  DEFAULT (getdate()) FOR [Crtd_DateTime]
GO
ALTER TABLE [dbo].[EMAsset] ADD  CONSTRAINT [DF_EMAsset_LUpd_DateTime]  DEFAULT (getdate()) FOR [LUpd_DateTime]
GO
ALTER TABLE [dbo].[EMAssetTransaction] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[EMBudgetForSalesRouteAdjustment] ADD  CONSTRAINT [DF_EMBudgetForSalesRouteAdjustment_AdjustmentAmount]  DEFAULT ((0)) FOR [AdjustmentAmount]
GO
ALTER TABLE [dbo].[EMBudgetForSalesRouteAdjustment] ADD  CONSTRAINT [DF_EMBudgetForSalesRouteAdjustment_isApproved]  DEFAULT ((0)) FOR [isApproved]
GO
ALTER TABLE [dbo].[EMBudgetForSalesRouteAdjustment] ADD  CONSTRAINT [DF_EMBudgetForSalesRouteAdjustment_Send]  DEFAULT ((0)) FOR [Send]
GO
ALTER TABLE [dbo].[EMBudgetForSalesRouteAdjustment] ADD  CONSTRAINT [DF_EMBudgetForSalesRouteAdjustment_BudgetAmountAdjustment]  DEFAULT ((0)) FOR [BudgetAmountAdjustment]
GO
ALTER TABLE [dbo].[EMBudgetForSalesRouteAdjustment] ADD  CONSTRAINT [DF_EMBudgetForSalesRouteAdjustment_BudgetQuantityAdjustment]  DEFAULT ((0)) FOR [BudgetQuantityAdjustment]
GO
ALTER TABLE [dbo].[EMCompetitorActivitesCapturedImag] ADD  CONSTRAINT [DF__EMCompetitor__ID__033E01E3]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[EMCompetitorActivitesNote] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[EMCustomerFeedback] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[EMDisplayAssessmentDetail] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[EMNotification] ADD  CONSTRAINT [DF_EMNotification_Crtd_DateTime]  DEFAULT (getdate()) FOR [Crtd_DateTime]
GO
ALTER TABLE [dbo].[EMNotification] ADD  CONSTRAINT [DF_EMNotification_LUpd_DateTime]  DEFAULT (getdate()) FOR [LUpd_DateTime]
GO
ALTER TABLE [dbo].[eMobiz_ARPayment] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_AssetTransaction] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_Competitor] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_CompetitorActivitesCapturedImag] ADD  CONSTRAINT [DF__eMobiz_Compe__ID__6A725419]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_CompetitorActivitesNote] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_CompetitorActivity] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_CompetitorActivityPhoto] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_CustomerFeedback] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_CustomerSatisfaction] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_DisplayAssessmentDetail] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_ExternalOutletCheck] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_ExternalOutletCheckPhoto] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_OutletCheckAnsweredSurvey] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_OutletCheckCapturedObservation] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_OutletStock] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_ProductGroupDetail] ADD  DEFAULT (NULL) FOR [CompareType]
GO
ALTER TABLE [dbo].[eMobiz_ProductGroupDetail] ADD  DEFAULT (NULL) FOR [Min]
GO
ALTER TABLE [dbo].[eMobiz_ProductGroupDetail] ADD  DEFAULT (NULL) FOR [Max]
GO
ALTER TABLE [dbo].[eMobiz_ProgramConversion] ADD  DEFAULT ('') FOR [ProgramType]
GO
ALTER TABLE [dbo].[eMobiz_ProgramDetail] ADD  DEFAULT ('') FOR [ProgramType]
GO
ALTER TABLE [dbo].[eMobiz_ProgramHeader] ADD  DEFAULT ('') FOR [ProgramType]
GO
ALTER TABLE [dbo].[eMobiz_ProgramPayment] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_ProgramRegistrationList] ADD  DEFAULT ('') FOR [SyncStatus]
GO
ALTER TABLE [dbo].[eMobiz_ProgramRegistrationList] ADD  DEFAULT ('') FOR [ProgramType]
GO
ALTER TABLE [dbo].[eMobiz_ProgramRegistrationList] ADD  DEFAULT ('') FOR [SystemStatus]
GO
ALTER TABLE [dbo].[eMobiz_ProgramRegistrationList] ADD  DEFAULT ('') FOR [RegisterStatus]
GO
ALTER TABLE [dbo].[eMobiz_ProgramResult] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_PromotionDetail] ADD  CONSTRAINT [DF__eMobiz_Promo__ID__269B8162]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_PromotionDetail] ADD  CONSTRAINT [DF_eMobiz_PromotionDetail_MinGroupLine]  DEFAULT ((0)) FOR [MinGroupLine]
GO
ALTER TABLE [dbo].[eMobiz_PromotionHeader] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_PromotionLine] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_PromotionLine] ADD  CONSTRAINT [DF_eMobiz_PromotionLine_Progressive]  DEFAULT ((0)) FOR [Progressive]
GO
ALTER TABLE [dbo].[eMobiz_PromotionResult] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_ProspectActivity] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_ProspectNonASOActivity] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_SalesForce] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_SalesOrderDetail] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_SalesOrderHeader] ADD  CONSTRAINT [DF__eMobiz_Sales__ID__481D3C15]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_SalesOrderHeader] ADD  CONSTRAINT [DF_eMobiz_SalesOrderHeader_GSV]  DEFAULT ((0)) FOR [GSV]
GO
ALTER TABLE [dbo].[eMobiz_SalesOrderHeader] ADD  CONSTRAINT [DF_eMobiz_SalesOrderHeader_NIV]  DEFAULT ((0)) FOR [NIV]
GO
ALTER TABLE [dbo].[eMobiz_SalesRoute] ADD  CONSTRAINT [DF__eMobiz_Sales__ID__7AF13DF7]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_SizeandInStoreShare] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_SurveyResult] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[eMobiz_WCSCStepTracking] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[EMOutletCheckCapturedObservation] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[EmployeeVisit] ADD  CONSTRAINT [DF_EmployeeVisit_Send]  DEFAULT ((0)) FOR [Send]
GO
ALTER TABLE [dbo].[EMProgramRegistrationList] ADD  DEFAULT ('') FOR [SyncStatus]
GO
ALTER TABLE [dbo].[EMProgramRegistrationList] ADD  DEFAULT ('') FOR [ProgramType]
GO
ALTER TABLE [dbo].[EMProgramRegistrationList] ADD  DEFAULT ('') FOR [SystemStatus]
GO
ALTER TABLE [dbo].[EMProgramRegistrationList] ADD  DEFAULT ('') FOR [RegisterStatus]
GO
ALTER TABLE [dbo].[EMSCFCSTargetActual] ADD  CONSTRAINT [DF_EMSCFCSTargetActual_Crtd_DateTime]  DEFAULT (getdate()) FOR [Crtd_DateTime]
GO
ALTER TABLE [dbo].[EMSCFCSTargetActual] ADD  CONSTRAINT [DF_EMSCFCSTargetActual_LUpd_DateTime]  DEFAULT (getdate()) FOR [LUpd_DateTime]
GO
ALTER TABLE [dbo].[EMSCFCSTargetDetail] ADD  CONSTRAINT [DF_EMSCFCSTargetDetail_Crtd_DateTime]  DEFAULT (getdate()) FOR [Crtd_DateTime]
GO
ALTER TABLE [dbo].[EMSCFCSTargetDetail] ADD  CONSTRAINT [DF_EMSCFCSTargetDetail_LUpd_DateTime]  DEFAULT (getdate()) FOR [LUpd_DateTime]
GO
ALTER TABLE [dbo].[EMSCFCSTargetHeader] ADD  CONSTRAINT [DF__EMSCFCSTa__Perio__67F9077D]  DEFAULT ((0)) FOR [PeriodID]
GO
ALTER TABLE [dbo].[EMSCFCSTargetHeader] ADD  CONSTRAINT [DF__EMSCFCSTa__Targe__68ED2BB6]  DEFAULT ('') FOR [TargetUOMType]
GO
ALTER TABLE [dbo].[EMSCFCSTargetHeader] ADD  CONSTRAINT [DF_EMSCFCSTargetHeader_Crtd_DateTime]  DEFAULT (getdate()) FOR [Crtd_DateTime]
GO
ALTER TABLE [dbo].[EMSCFCSTargetHeader] ADD  CONSTRAINT [DF_EMSCFCSTargetHeader_LUpd_DateTime]  DEFAULT (getdate()) FOR [LUpd_DateTime]
GO
ALTER TABLE [dbo].[EMSizeandInStoreShare] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[EMSKUSuggest] ADD  DEFAULT ('') FOR [SecondaryCustomerCode]
GO
ALTER TABLE [dbo].[EMSKUSuggest] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Date]
GO
ALTER TABLE [dbo].[EMSKUSuggest] ADD  DEFAULT ((0)) FOR [SuggestQuantity]
GO
ALTER TABLE [dbo].[EMSKUSuggest] ADD  DEFAULT ((0)) FOR [AvgQuantityPerCall]
GO
ALTER TABLE [dbo].[EMSKUSuggest] ADD  DEFAULT ((0)) FOR [CalCallDuration]
GO
ALTER TABLE [dbo].[EMSKUSuggest] ADD  DEFAULT ((0)) FOR [SafeStockinTime]
GO
ALTER TABLE [dbo].[IndexSend] ADD  CONSTRAINT [DF_IndexSend_Customer]  DEFAULT ((0)) FOR [Customer]
GO
ALTER TABLE [dbo].[IndexSend] ADD  CONSTRAINT [DF_IndexSend_Batch]  DEFAULT ((0)) FOR [Batch]
GO
ALTER TABLE [dbo].[InvtClass] ADD  CONSTRAINT [DF_InvtClass_Send]  DEFAULT ((0)) FOR [Send]
GO
ALTER TABLE [dbo].[ItemSite] ADD  CONSTRAINT [DF_ItemSite_QtyAlloc]  DEFAULT ((0)) FOR [QtyAlloc]
GO
ALTER TABLE [dbo].[POSTranApproved] ADD  CONSTRAINT [DF_POSTranApproved111_Send]  DEFAULT ((0)) FOR [Send]
GO
ALTER TABLE [dbo].[POSTranApproved] ADD  DEFAULT ('') FOR [BoolEmobiz]
GO
ALTER TABLE [dbo].[POSTranApproved] ADD  DEFAULT ('') FOR [OrderStatus]
GO
ALTER TABLE [dbo].[POSTranApproved] ADD  DEFAULT ((0)) FOR [BoolUpdate]
GO
ALTER TABLE [dbo].[POSTranApproved] ADD  DEFAULT ((0)) FOR [BoolDelete]
GO
ALTER TABLE [dbo].[POSTranApproved] ADD  DEFAULT ((0)) FOR [OffRoute]
GO
ALTER TABLE [dbo].[POSTranApproved] ADD  DEFAULT ('') FOR [SalesRouteCode]
GO
ALTER TABLE [dbo].[POSTranApproved] ADD  DEFAULT ('') FOR [PromotionCodeBill]
GO
ALTER TABLE [dbo].[POSTranApproved] ADD  DEFAULT ('') FOR [PromotionCodeGroup]
GO
ALTER TABLE [dbo].[POSTranApproved] ADD  DEFAULT ('') FOR [PromotionCodeManual]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Batch', @level2type=N'COLUMN',@level2name=N'BranchID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tỉnh (TP)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Branch', @level2type=N'COLUMN',@level2name=N'ProvinceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vùng (miền)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Branch', @level2type=N'COLUMN',@level2name=N'Region'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa bàn phụ trách' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Branch', @level2type=N'COLUMN',@level2name=N'Locality'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Branch', @level2type=N'COLUMN',@level2name=N'Addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày khóa dữ liệu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Branch', @level2type=N'COLUMN',@level2name=N'LockDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã kênh hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChanelIVT', @level2type=N'COLUMN',@level2name=N'ChanelID_ivt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên kênh hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChanelIVT', @level2type=N'COLUMN',@level2name=N'ChanelName_ivt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vi tri Nong thon Thanh Thi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CustomerDelete', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Auto generated unique ID (LineID)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMApplyForCustomer', @level2type=N'COLUMN',@level2name=N'ApplyForCustomerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A: All

H: Hierarchy

S: Secondary Customer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMApplyForCustomer', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A: All

H: Hierarchy

S: Secondary Customer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMApplyForSecondaryCustomer', @level2type=N'COLUMN',@level2name=N'ApplyForCustomerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'STT send goi du lieu ve Server' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IndexSend', @level2type=N'COLUMN',@level2name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'So lan gui du lieu cho client' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IndexSendserver', @level2type=N'COLUMN',@level2name=N'Inventory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BranchID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BranchID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BranchID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BranchID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BranchID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BranchID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BatNbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BatNbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BatNbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ma vach (neu co)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'CnvFact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'CnvFact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'CnvFact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Crtd_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Crtd_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Crtd_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Crtd_User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Crtd_User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Crtd_User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ExtCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ExtCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ExtCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ExtCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ExtCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ExtCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ExtPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ExtPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ExtPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'InvtID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'InvtID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'InvtID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'InvtMult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'InvtMult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'InvtMult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1: Tang kho; -1: Giam kho' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'InvtMult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'JrnlType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'JrnlType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'JrnlType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chua xai (''IN'')' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'JrnlType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LUpd_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LUpd_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LUpd_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LUpd_User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LUpd_User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'LUpd_User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'QtyByStkUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'QtyByStkUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'QtyByStkUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ReasonCd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ReasonCd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ReasonCd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'RefNbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'RefNbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'RefNbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ReceiptDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ReceiptDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ReceiptDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngay nhan hang (dung cho PO)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ReceiptDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ReceiptDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ReceiptDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ReceiptDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Rlsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Rlsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Rlsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1: Rlsed, 0: Not Rlsed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'Rlsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'SiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'SiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'SiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'TaxID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'TaxID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'TaxID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ToSiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ToSiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ToSiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ToWhseLoc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ToWhseLoc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'ToWhseLoc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'TranDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'TranDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'TranDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'TranType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'TranType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'TranType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitMultDiv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitMultDiv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitMultDiv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'WhseLoc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'WhseLoc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=65535 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INTran', @level2type=N'COLUMN',@level2name=N'WhseLoc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemSite', @level2type=N'COLUMN',@level2name=N'BranchID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemSite', @level2type=N'COLUMN',@level2name=N'BranchID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemSite', @level2type=N'COLUMN',@level2name=N'BranchID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gia nhap gan nhat' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemSite', @level2type=N'COLUMN',@level2name=N'LastCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gia von xuat kho hien tai' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemSite', @level2type=N'COLUMN',@level2name=N'IssueCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gia chuan (Danh cho StandardCost)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemSite', @level2type=N'COLUMN',@level2name=N'StdCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nganh hang' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductClass', @level2type=N'COLUMN',@level2name=N'ProductClassID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nhom hang' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductGroup', @level2type=N'COLUMN',@level2name=N'phProductGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nganh hang' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductGroup', @level2type=N'COLUMN',@level2name=N'ProductGroupID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loai hang hoa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductType', @level2type=N'COLUMN',@level2name=N'ProductTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loai hang: KM, Btg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SKUType', @level2type=N'COLUMN',@level2name=N'SKUTypeID'
GO
