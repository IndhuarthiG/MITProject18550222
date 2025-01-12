USE [Test]
GO
/****** Object:  Table [dbo].[Achievements]    Script Date: 9/27/2024 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Achievements](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Year] [varchar](50) NOT NULL,
	[Type] [varchar](max) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[AdmissionNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Achievements] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coach]    Script Date: 9/27/2024 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach](
	[Coach_ID] [varchar](50) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Sport_ID] [int] NOT NULL,
	[SportName] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Coach] PRIMARY KEY CLUSTERED 
(
	[Coach_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coach_Performance]    Script Date: 9/27/2024 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach_Performance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Coach_ID] [varchar](50) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Sport_ID] [int] NOT NULL,
	[SportName] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Year] [varchar](50) NOT NULL,
	[T_ID] [int] NOT NULL,
	[TName] [varchar](max) NOT NULL,
	[Result] [varchar](50) NOT NULL,
	[Performance] [int] NOT NULL,
	[DateRecorded] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complaints]    Script Date: 9/27/2024 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaints](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[UserName] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 9/27/2024 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[InventoryName] [varchar](50) NOT NULL,
	[Colour] [varchar](50) NOT NULL,
	[No_in_stock] [int] NOT NULL,
	[Sport_ID] [int] NOT NULL,
	[SportName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 9/27/2024 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matches]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matches](
	[Match_ID] [int] IDENTITY(1,1) NOT NULL,
	[TName] [varchar](50) NOT NULL,
	[Team_ID] [int] NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[OpponentTeam] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Time] [varchar](50) NOT NULL,
	[Venue] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Matches] PRIMARY KEY CLUSTERED 
(
	[Match_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlyReceipt]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyReceipt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionNo] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Month] [varchar](50) NOT NULL,
	[Reason] [varchar](50) NOT NULL,
	[Fee] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Date] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[notifyid] [int] IDENTITY(1,1) NOT NULL,
	[date] [varchar](max) NOT NULL,
	[message] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Queries]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Queries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Subject] [varchar](50) NOT NULL,
	[Message] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Queries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Class] [varchar](50) NOT NULL,
	[SelectedSport] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegReceipt]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegReceipt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionNo] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[DateOfBirth] [varchar](max) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Fee] [varchar](50) NOT NULL,
	[DateOfPayment] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[Re_ID] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NOT NULL,
	[Sport_ID] [int] NOT NULL,
	[SportName] [varchar](50) NOT NULL,
	[Teacher_ID] [varchar](50) NOT NULL,
	[ReStatus] [varchar](max) NOT NULL,
	[Addedby] [varchar](50) NOT NULL,
	[ReqFirstName] [varchar](50) NOT NULL,
	[ExchangeWith] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rosters]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rosters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Teacher_ID] [varchar](50) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[Sport_ID] [int] NOT NULL,
	[SportName] [varchar](50) NOT NULL,
	[Date] [varchar](max) NOT NULL,
	[Time] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Requests] [varchar](50) NOT NULL,
	[Addedby] [varchar](50) NOT NULL,
	[ReqName] [varchar](50) NOT NULL,
	[ExchangeWith] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Rosters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[S_ID] [int] IDENTITY(1,1) NOT NULL,
	[TName] [varchar](50) NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[OpponentTeam] [varchar](50) NOT NULL,
	[Score] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sport]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sport](
	[Sport_ID] [int] IDENTITY(1,1) NOT NULL,
	[SportName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sport] PRIMARY KEY CLUSTERED 
(
	[Sport_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sport_reg]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sport_reg](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionNo] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[DateOfBirth] [varchar](max) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[Reason] [varchar](max) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Fee] [varchar](50) NOT NULL,
	[Receipt] [varchar](max) NOT NULL,
	[DateOfRegistration] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_ApplyPosition]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_ApplyPosition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[AdmissionNo] [varchar](50) NOT NULL,
	[SportName] [varchar](50) NOT NULL,
	[Team_ID] [int] NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[CurrentPosition] [varchar](50) NOT NULL,
	[ApplyingPosition] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Student_ApplyPosition] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Attendance]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Attendance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionNo] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Sport_ID] [int] NOT NULL,
	[SportName] [varchar](50) NOT NULL,
	[DateOfPractice] [varchar](50) NOT NULL,
	[Attendance] [int] NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Performance] [int] NOT NULL,
 CONSTRAINT [PK_Student_Attendance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Sport]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Sport](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionNo] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Sport_ID] [int] NOT NULL,
	[SportName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Receipt] [varchar](max) NOT NULL,
	[DateJoined] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Student_Sport] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Team]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Team](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionNo] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Team_ID] [int] NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[Category] [varchar](max) NOT NULL,
	[Position] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Student_Team] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[AdmissionNo] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[DateOfBirth] [varchar](max) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[AdmissionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentSport_Fee]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentSport_Fee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionNo] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Sport_ID] [int] NOT NULL,
	[SportName] [varchar](50) NOT NULL,
	[Month] [varchar](50) NOT NULL,
	[DateOfPayment] [varchar](max) NOT NULL,
	[Receipt] [varchar](max) NOT NULL,
 CONSTRAINT [PK_StudentSport_Fee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Sport]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Sport](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Teacher_ID] [varchar](50) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Sport_Name] [varchar](50) NOT NULL,
	[Sport_ID] [int] NOT NULL,
 CONSTRAINT [PK_Teacher_Sport] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Teacher_ID] [varchar](50) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Teacher_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Team_ID] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[AgeCategory] [varchar](50) NOT NULL,
	[Sport_ID] [int] NOT NULL,
	[SportName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[Team_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tournament]    Script Date: 9/27/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournament](
	[T_ID] [int] IDENTITY(1,1) NOT NULL,
	[TName] [varchar](50) NOT NULL,
	[Year] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Sport_ID] [int] NOT NULL,
	[SportName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tournament] PRIMARY KEY CLUSTERED 
(
	[T_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Achievements] ON 

INSERT [dbo].[Achievements] ([ID], [Year], [Type], [Description], [AdmissionNo]) VALUES (2, N'2021', N'Jhon Tarbet Athletic Meet', N'Javelin throw 1st place', N'18550')
INSERT [dbo].[Achievements] ([ID], [Year], [Type], [Description], [AdmissionNo]) VALUES (3, N'2022', N'Western Province Tennis Tournament', N'Best Player', N'18558')
INSERT [dbo].[Achievements] ([ID], [Year], [Type], [Description], [AdmissionNo]) VALUES (5, N'2022', N'B Division Basketball Tournament', N'Best defender', N'18550')
INSERT [dbo].[Achievements] ([ID], [Year], [Type], [Description], [AdmissionNo]) VALUES (6, N'2022', N'Zonal Table Tennis Tournament', N'Best Player', N'18557')
INSERT [dbo].[Achievements] ([ID], [Year], [Type], [Description], [AdmissionNo]) VALUES (7, N'2022', N'Zonal Tennis Meet', N'Best Player', N'18560')
INSERT [dbo].[Achievements] ([ID], [Year], [Type], [Description], [AdmissionNo]) VALUES (8, N'2022', N'Arjan Perera Memorial Tennis Tournament', N'Best Player', N'18557')
SET IDENTITY_INSERT [dbo].[Achievements] OFF
GO
INSERT [dbo].[Coach] ([Coach_ID], [Title], [FirstName], [Surname], [Sport_ID], [SportName], [Type], [ContactNo], [EmailID]) VALUES (N'196410402757', N'Mrs', N'Regina', N'George', 6, N'Table Tennis', N'Head', N'07145698732', N'regina@gmail.com')
INSERT [dbo].[Coach] ([Coach_ID], [Title], [FirstName], [Surname], [Sport_ID], [SportName], [Type], [ContactNo], [EmailID]) VALUES (N'741042757V', N'Mr', N'Vinay', N'Mohanraj', 7, N'Squash', N'Head', N'0777769822', N'vinay@gmail.com')
INSERT [dbo].[Coach] ([Coach_ID], [Title], [FirstName], [Surname], [Sport_ID], [SportName], [Type], [ContactNo], [EmailID]) VALUES (N'773894563V', N'Mr', N'Zaid', N'Khan', 3, N'Basketball', N'Head', N'07189456322', N'arthi.gnani@gmail.com')
INSERT [dbo].[Coach] ([Coach_ID], [Title], [FirstName], [Surname], [Sport_ID], [SportName], [Type], [ContactNo], [EmailID]) VALUES (N'7889456312V', N'Mr', N'Nalaka', N'Ratnayaka', 2, N'Athletics', N'Head', N'0773456788', N'nal@gmail.com')
INSERT [dbo].[Coach] ([Coach_ID], [Title], [FirstName], [Surname], [Sport_ID], [SportName], [Type], [ContactNo], [EmailID]) VALUES (N'795245257V', N'Mrs', N'Nimnaz', N'Ansar', 9, N'Netball', N'Head', N'0764178524', N'nimnaz@gmail.com')
INSERT [dbo].[Coach] ([Coach_ID], [Title], [FirstName], [Surname], [Sport_ID], [SportName], [Type], [ContactNo], [EmailID]) VALUES (N'795456369V', N'Mrs', N'Jennie', N'David', 1, N'Archery', N'Head', N'0775213789', N'jennie@gmail.com')
INSERT [dbo].[Coach] ([Coach_ID], [Title], [FirstName], [Surname], [Sport_ID], [SportName], [Type], [ContactNo], [EmailID]) VALUES (N'841042757V', N'Mr', N'Aravinda', N'Karyawasam', 11, N'Tennis', N'Head', N'07145698732', N'aravinda@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Coach_Performance] ON 

INSERT [dbo].[Coach_Performance] ([ID], [Coach_ID], [Title], [FirstName], [Surname], [Sport_ID], [SportName], [Type], [Year], [T_ID], [TName], [Result], [Performance], [DateRecorded]) VALUES (1, N'773894563V', N'Mr', N'Zaid', N'Khan', 3, N'Basketball', N'Head', N'2022', 1, N'Basketball C divisional meet 2022', N'Won', 10, N'12/29/2023 12:15:38 AM')
SET IDENTITY_INSERT [dbo].[Coach_Performance] OFF
GO
SET IDENTITY_INSERT [dbo].[Complaints] ON 

INSERT [dbo].[Complaints] ([ID], [Date], [Message], [UserName]) VALUES (4, N'5/19/2024 1:53:53 PM', N'This is test 3', N'Shahila')
INSERT [dbo].[Complaints] ([ID], [Date], [Message], [UserName]) VALUES (2, N'5/19/2024 1:35:41 PM', N'This is a test 2', N'Hasika')
INSERT [dbo].[Complaints] ([ID], [Date], [Message], [UserName]) VALUES (3, N'5/19/2024 1:43:17 PM', N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Poornima')
INSERT [dbo].[Complaints] ([ID], [Date], [Message], [UserName]) VALUES (7, N'5/19/2024 8:42:12 PM', N'This is an evening test', N'Indhuarthi')
SET IDENTITY_INSERT [dbo].[Complaints] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([InventoryID], [InventoryName], [Colour], [No_in_stock], [Sport_ID], [SportName]) VALUES (2, N'Basketball', N'Blue', 6, 3, N'Basketball')
INSERT [dbo].[Inventory] ([InventoryID], [InventoryName], [Colour], [No_in_stock], [Sport_ID], [SportName]) VALUES (3, N'Netball', N'Brown', 3, 9, N'Netball')
INSERT [dbo].[Inventory] ([InventoryID], [InventoryName], [Colour], [No_in_stock], [Sport_ID], [SportName]) VALUES (4, N'Javelin', N'Black', 1, 2, N'Athletics')
INSERT [dbo].[Inventory] ([InventoryID], [InventoryName], [Colour], [No_in_stock], [Sport_ID], [SportName]) VALUES (5, N'Discuss throw disk', N'Grey', 3, 2, N'Athletics')
INSERT [dbo].[Inventory] ([InventoryID], [InventoryName], [Colour], [No_in_stock], [Sport_ID], [SportName]) VALUES (6, N'Hurdles', N'White', 15, 2, N'Athletics')
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (1, N'838103081V', N'admin@2', N'Super Admin', N'indhuarthi.gnanamoney@gmail.com', N'Indhuarthi')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (2, N'788200562V', N'madz1', N'Teacher', N'madhu@gmail.com', N'Madhuwanthi')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (3, N'773894563V', N'zaid@01', N'Coach', N'zak412584@gmail.com', N'Zaid')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (4, N'18550', N'zainab@01', N'Student', N'zm@gmail.com', N'Zainab')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (5, N'826895654V', N'maria@02', N'Teacher', N'maria@gmail.com', N'Maria')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (6, N'908599782V', N'azri@3', N'Teacher', N'azrar@gmail.com', N'Azra')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (7, N'928741852V', N'pavi@4', N'Teacher', N'pavik@gmail.com', N'Pavithra')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (8, N'927485964V', N'pem@1', N'Teacher', N'pem@gmail.com', N'Pemanthi')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (10, N'838103081V', N'ind@01', N'Teacher', N'indhuarthi.gnanamoney@gmail.com', N'Indhuarthi')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (11, N'839654987V', N'sha@06', N'Teacher', N'shahi@gmail.com', N'Shahila')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (12, N'815741852V', N'Thak@02', N'Teacher', N'thakshyp@gmail.com', N'Thakshala')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (13, N'77889965V', N'faiza@05', N'Teacher', N'faiza@gmail.com', N'Faiza')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (14, N'908545658V', N'neha@02', N'Teacher', N'nehw@gmail.com', N'Nehara')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (23, N'18557', N'theju@07', N'Student', N'theju@gmail.com', N'Thejashwini')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (24, N'18559', N'lail@02', N'Student', N'laila@gmail.com', N'Laila')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (25, N'18553', N'nila@03', N'Student', N'nilak@gmail.com', N'Nilakshi')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (26, N'7889456312V', N'nalr@2', N'Coach', N'nal@gmail.com', N'Nalaka')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (27, N'795245257V', N'nim@5', N'Coach', N'nimnaz@gmail.com', N'Nimnaz')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (28, N'795456369V', N'jen@3', N'Coach', N'jennie@gmail.com', N'Jennie')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (29, N'767258639V', N'shami@1', N'Teacher', N'shamip@gmail.com', N'Shami')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (30, N'776201061V', N'darshi@01', N'Teacher', N'darshi@gmail.com', N'Darshini')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (31, N'929434547V', N'pranee@01', N'Teacher', N'pranee@gmail.com', N'Praneesha')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (32, N'918312658V', N'iro@01', N'Teacher', N'iro@gmail.com', N'Iroshani')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (33, N'905625325V', N'ruvi@1', N'Cashier', N'ruvi@gmail.com', N'Ruvini')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (34, N'817652958V', N'poorni@1', N'Teacher', N'poornima@gmail.com', N'Poornima')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (35, N'897956456V', N'hasi@1', N'Teacher', N'sports.metho@gmail.com', N'Hasika')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (36, N'767456985V', N'Niru@1', N'Teacher', N'niru@gmail.com', N'Niranjani')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (15, N'807425856V', N'Niw@08', N'Teacher', N'nwij@gmail.com', N'Niwarthani')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (16, N'957856456V', N'chrish@7', N'Teacher', N'chrishs@gmail.com', N'Chrishnila')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (17, N'865894567V', N'achi@9', N'Teacher', N'achih@gmail.com', N'Achini')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (18, N'779865456V', N'anu@06', N'Teacher', N'anug@gmail.com', N'Anuratha')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (19, N'896785654V', N'cham@07', N'Teacher', N'chamr@gmail.com', N'Chamarie')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (20, N'846741526V', N'abi@01', N'Teacher', N'abis@gmail.com', N'Abiramy')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (21, N'759852577V', N'jay@04', N'Teacher', N'jaya@gmail.com', N'Jayamali')
INSERT [dbo].[Login] ([ID], [UserName], [Password], [Type], [Email], [Name]) VALUES (22, N'767456321V', N'chandima@2', N'Teacher', N'chanip@gmail.com', N'Chandima')
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[MonthlyReceipt] ON 

INSERT [dbo].[MonthlyReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [Month], [Reason], [Fee], [Description], [Date]) VALUES (3, N'18550', N'Fathima Zainab', N'Mysan', N'March', N'For Three Sports', N'3000.00', N'Basketball, Athletics, Table Tennis', N'3/27/2024 11:29:14 PM')
SET IDENTITY_INSERT [dbo].[MonthlyReceipt] OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([notifyid], [date], [message]) VALUES (1, N'05/02/2024 11.38PM', N'This is a test message')
INSERT [dbo].[Notification] ([notifyid], [date], [message]) VALUES (2, N'2/6/2024 12:29:41 AM', N'All sports activities are cancelled until further notice.')
INSERT [dbo].[Notification] ([notifyid], [date], [message]) VALUES (3, N'3/30/2024 11:14:25 AM', N'All Sports activities will take place after the new year holidays')
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Queries] ON 

INSERT [dbo].[Queries] ([ID], [Name], [Email], [Subject], [Message]) VALUES (2, N'ashley', N'arthi.gnani@gmail.com', N'maximum number', N'May I join more than 5 sports??')
INSERT [dbo].[Queries] ([ID], [Name], [Email], [Subject], [Message]) VALUES (4, N'Indhuarthi', N'indhuarthi.gnanamoney@gmail.lk', N'Joining sports', N'May I join for more than two sports activities?')
SET IDENTITY_INSERT [dbo].[Queries] OFF
GO
SET IDENTITY_INSERT [dbo].[Registration] ON 

INSERT [dbo].[Registration] ([ID], [FirstName], [Surname], [Class], [SelectedSport], [ContactNo], [Email], [Date]) VALUES (1, N'Sarah', N'Hameed', N'11C', N'Athletics,Chess', N'0773415822', N'sarah.hameed@gmail.com', CAST(N'2022-10-09' AS Date))
INSERT [dbo].[Registration] ([ID], [FirstName], [Surname], [Class], [SelectedSport], [ContactNo], [Email], [Date]) VALUES (2, N'Aiza', N'Barry', N'7D', N'Athletics,Netball', N'0719856322', N'nimnaz@gmail.com', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[Registration] ([ID], [FirstName], [Surname], [Class], [SelectedSport], [ContactNo], [Email], [Date]) VALUES (3, N'Swanukha', N'Prahalathan', N'7D', N'Chess', N'07734512580', N'priya@gmail.com', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[Registration] ([ID], [FirstName], [Surname], [Class], [SelectedSport], [ContactNo], [Email], [Date]) VALUES (4, N'Densika', N'Kamaleshwaran', N'8A', N'Basket Ball', N'011256890', N'john@gmail.com', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[Registration] ([ID], [FirstName], [Surname], [Class], [SelectedSport], [ContactNo], [Email], [Date]) VALUES (5, N'Ranali', N'Wanaguruge', N'8B1', N'Table Tennis', N'0112725502', N'ranali@gmail.com', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[Registration] ([ID], [FirstName], [Surname], [Class], [SelectedSport], [ContactNo], [Email], [Date]) VALUES (6, N'Sethini', N'Gunathilaka', N'8D', N'Volleyball', N'0773900623', N'sethini@gmail.com', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[Registration] ([ID], [FirstName], [Surname], [Class], [SelectedSport], [ContactNo], [Email], [Date]) VALUES (7, N'Jordana', N'De Silva', N'8B1', N'Swimming', N'071400530', N'jordi@gmail.com', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[Registration] ([ID], [FirstName], [Surname], [Class], [SelectedSport], [ContactNo], [Email], [Date]) VALUES (8, N'Harishreya', N'Kamaleshwaran', N'8D', N'Badminton,Tennis', N'07738935612', N'harisha@gmail.com', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[Registration] ([ID], [FirstName], [Surname], [Class], [SelectedSport], [ContactNo], [Email], [Date]) VALUES (9, N'Chiara', N'Wijekoon', N'', N'Squash', N'07145863251', N'chiara@gmail.com', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[Registration] ([ID], [FirstName], [Surname], [Class], [SelectedSport], [ContactNo], [Email], [Date]) VALUES (10, N'Areeba', N'Aflah', N'10D', N'Archery', N'0715207198', N'areeba@gmail.com', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[Registration] ([ID], [FirstName], [Surname], [Class], [SelectedSport], [ContactNo], [Email], [Date]) VALUES (11, N'Indhuarthi', N'Gnanamoney', N'10D', N'Athletics', N'0773413522', N'arthi.gnani@gmaial.com', CAST(N'2023-09-08' AS Date))
SET IDENTITY_INSERT [dbo].[Registration] OFF
GO
SET IDENTITY_INSERT [dbo].[RegReceipt] ON 

INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (2, N'18550', N'Fathima Zainab', N'Mysan', N'2007-08-20', N'zm@gmail.com', N'0714959822', N'Basketball, Athletics, Table Tennis', N'Rs.3000.00', N'3/24/2024 8:48:10 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (6, N'18575', N'Amritha', N' Vijayananth ', N'2011-07-21', N'amritha@gmail.com', N'0721472694', N'Squash', N'Rs.1000.00', N'3/24/2024 9:21:10 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (7, N'18551', N'Shahana', N'Vijeykumar', N'2007-05-06', N'sv@gmail.com', N'0774567946', N'Chess', N'Rs.1000.00', N'3/24/2024 9:27:33 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (8, N'18552', N'Agksheya', N'Balenthiran', N'2007-07-21', N'agksh@gmail.com', N'0776789123', N'Badminton', N'Rs.1000.00', N'3/27/2024 7:02:12 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (9, N'18553', N'Nilakshi', N'Pathirana', N'2007-11-06', N'nilak@gmail.com', N'0719874565', N'Basketball', N'Rs.1000.00', N'3/27/2024 7:07:29 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (10, N'18554', N'Thimansa', N'Vandebona', N'2007-10-24', N'thim@gmail.com', N'0779638524', N'Basketball', N'Rs.1000.00', N'3/27/2024 7:14:32 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (11, N'18558', N'Samadhi', N'Gunawardena', N'2008-03-12', N'sama@gmail.com', N'0774125687', N'Basketball', N'Rs.1000.00', N'3/27/2024 7:16:54 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (15, N'18563', N'Neha ', N'Thirumavalavan', N'2010-05-12', N'neha@gmail.com', N'0774789654', N'Basketball, Netball, Volleyball', N'Rs.3000.00', N'3/27/2024 7:49:52 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (17, N'18568', N'Suwathi', N'Jeyawaran', N'2011-10-06', N'suwathi@gmail.com', N'0748569871', N'Basketball, Athletics', N'Rs.2000.00', N'3/27/2024 8:10:06 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (19, N'18570', N'Akshaya', N'Gobith ', N'2011-09-25', N'akshaya@gmail.com', N'0722583694', N'Basketball, Table Tennis', N'Rs.2000.00', N'3/27/2024 8:36:32 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (20, N'18560', N'Amandhi', N'Marasinghe', N'2008-06-25', N'aman@gmail.com', N'0772581475', N'Athletics, Netball', N'Rs.2000.00', N'3/30/2024 1:47:49 AM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (21, N'18564', N'Rachel', N' Stephen', N'2009-07-19', N'rache@gmail.com', N'0717896554', N'Athletics, Netball, Tennis', N'Rs.3000.00', N'3/30/2024 1:50:47 AM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (22, N'18571', N'Urvi', N'Jayasinghe', N'2011-08-26', N'urvi@gmail.com', N'0772581479', N'Athletics, Netball, Tennis', N'Rs.3000.00', N'3/30/2024 1:54:27 AM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (23, N'18572', N'Kavishashi', N'Sundararajan', N'2008-04-12', N'kavi@gmail.com', N'0776258427', N'Basketball', N'Rs.1000.00', N'3/30/2024 11:08:58 AM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (46, N'18573', N'Sithuli', N'Fernando', N'2008-02-09', N'arthi.gnani@gmail.com', N'0712456385', N'Basketball', N'Rs.1000.00', N'5/19/2024 9:50:50 AM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (12, N'18557', N'Thejashwani', N'Bheeshman', N'2008-04-28', N'theju@gmail.com', N'0772583694', N'Basketball, Table Tennis', N'Rs.2000.00', N'3/27/2024 7:24:16 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (16, N'18559', N'Laila', N'Sulaiman', N'2007-02-15', N'laila@gmail.com', N'0772418537', N'Archery, Table Tennis', N'Rs.2000.00', N'3/27/2024 7:51:41 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (18, N'18569', N'Katie', N'Speldewinde ', N'2011-08-24', N'katie@gmail.com', N'0779876542', N'Basketball, Netball', N'Rs.2000.00', N'3/27/2024 8:22:33 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (13, N'18557', N'Thejashwani', N'Bheeshman', N'2008-04-28', N'theju@gmail.com', N'0772583694', N'Basketball, Table Tennis', N'Rs.2000.00', N'3/27/2024 7:35:09 PM')
INSERT [dbo].[RegReceipt] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Description], [Fee], [DateOfPayment]) VALUES (14, N'18561', N'Nathania', N'Sofalas', N'2007-03-14', N'nathani@gmail.com', N'0778945612', N'Basketball, Netball', N'Rs.2000.00', N'3/27/2024 7:43:09 PM')
SET IDENTITY_INSERT [dbo].[RegReceipt] OFF
GO
SET IDENTITY_INSERT [dbo].[Requests] ON 

INSERT [dbo].[Requests] ([Re_ID], [ID], [Sport_ID], [SportName], [Teacher_ID], [ReStatus], [Addedby], [ReqFirstName], [ExchangeWith]) VALUES (6, 165, 1, N'Archery', N'767258639V', N'Accepted', N'807425856V', N'Niwarthani', N'02/14/2024')
SET IDENTITY_INSERT [dbo].[Requests] OFF
GO
SET IDENTITY_INSERT [dbo].[Rosters] ON 

INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (149, N'776201061V', N'Mrs', N'Dharshini', N'Diaz', N'arthi.gnani@gmail.com', 2, N'Athletics', N'05/20/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (154, N'815741852V', N'Mrs', N'Thakshila', N'Punchihewa', N'indhuarthi.gnanamoney@gmail.com', 2, N'Athletics', N'05/21/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (155, N'815741852V', N'Mrs', N'Thakshila', N'Punchihewa', N'thakshyp@gmail.com', 6, N'Table Tennis', N'04/30/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (156, N'838103081V', N'Miss', N'Indhuarthi', N'Gnanamoney', N'arthi.gnani@gmail.com', 2, N'Athletics', N'05/27/2024', N'2.00 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (159, N'838103081V', N'Miss', N'Indhuarthi', N'Gnanamoney', N'arthi.gnani@gmail.com', 3, N'Basketball', N'05/15/2024', N'2.00 - 4.00 PM', N'Cancelled', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (160, N'908599782V', N'Mrs', N'Azra', N'Razideen', N'azrar@gmail.com', 4, N'Badminton', N'08/30/2023', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (161, N'929434547V', N'Miss', N'Praneesha', N'Fernando', N'pranee@gmail.com', 5, N'Chess', N'04/02/2024', N'2.00 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (162, N'929434547V', N'Miss', N'Praneesha', N'Fernando', N'pranee@gmail.com', 7, N'Squash', N'04/04/2024', N'2.00 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (163, N'918312658V', N'Miss', N'Iroshani', N'Bandara', N'iro@gmail.com', 9, N'Netball', N'04/05/2024', N'2.00 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (164, N'918312658V', N'Miss', N'Iroshani', N'Bandara', N'iro@gmail.com', 8, N'Volleyball', N'04/04/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (165, N'767258639V', N'Mrs', N'Shami', N'Pratheepan', N'shamip@gmail.com', 1, N'Archery', N'02/12/2024', N'2.30 - 4.00 PM', N'Active', N'Accepted', N'807425856V', N'Niwarthani', N'02/14/2024')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (166, N'776201061V', N'Mrs', N'Dharshini', N'Diaz', N'darshi@gmail.com', 10, N'Swimming', N'04/02/2024', N'2.00 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (167, N'788200562V', N'Miss', N'Madhuwanthi', N'Liyanage', N'madhu@gmail.com', 2, N'Athletics', N'05/28/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (170, N'788200562V', N'Miss', N'Madhuwanthi', N'Liyanage', N'madhu@gmail.com', 11, N'Tennis', N'04/26/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (171, N'807425856V', N'Mrs', N'Niwarthani', N'Wijesinghe', N'nwij@gmail.com', 1, N'Archery', N'04/01/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (172, N'810509871V', N'Mrs', N'Sashini', N'Marambe', N'sashini@gmail.com', 7, N'Squash', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (173, N'810509871V', N'Mrs', N'Sashini', N'Marambe', N'sashini@gmail.com', 5, N'Chess', N'04/09/2024', N'2.00 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (174, N'928656398V', N'Miss', N'Melissa', N'Edema', N'mel@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (175, N'928656398V', N'Miss', N'Melissa', N'Edema', N'mel@gmail.com', 1, N'Archery', N'04/03/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (178, N'778899651V', N'Mrs', N'Faiza', N'Gallage', N'faiza@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (179, N'778899651V', N'Mrs', N'Faiza', N'Gallage', N'faiza@gmail.com', 10, N'Swimming', N'04/02/2024', N'2.00 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (180, N'957856456V', N'Miss', N'Chrishnilla', N'Sandrasegar', N'chrishs@gmail.com', 1, N'Archery', N'04/08/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (181, N'957856456V', N'Miss', N'Chrishnilla', N'Sandrasegar', N'chrishs@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (182, N'908545658V', N'Mrs', N'Nehara', N'Wimalaweera', N'nehw@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (183, N'908545658V', N'Mrs', N'Nehara', N'Wimalaweera', N'nehw@gmail.com', 10, N'Swimming', N'04/02/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (184, N'796965258V', N'Mrs', N'Buddhini', N'Mendis', N'bmendis@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (185, N'786889872V', N'Mrs', N'Sivaganga', N'Sivalingham', N'sganga@gmail.com', 11, N'Tennis', N'04/02/2024', N'2.00 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (186, N'786889872V', N'Mrs', N'Sivaganga', N'Sivalingham', N'sganga@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (187, N'878956123V', N'Mrs', N'Nishadi', N'Wijesinghe', N'Nish@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (188, N'878956123V', N'Mrs', N'Nishadi', N'Wijesinghe', N'Nish@gmail.com', 6, N'Table Tennis', N'04/02/2024', N'2.00 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (189, N'756852741V', N'Mrs', N'Anusha', N'Kulathunga', N'anuk@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (190, N'848556674V', N'Mrs', N'Rochelle', N'Chandrakumar', N'rchandra@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (191, N'848556674V', N'Mrs', N'Rochelle', N'Chandrakumar', N'rchandra@gmail.com', 1, N'Archery', N'04/10/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (192, N'908599782V', N'Mrs', N'Azra', N'Razideen', N'azrar@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (193, N'777894565V', N'Mrs', N'Kumari', N'Jayathilaka', N'kumj@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (194, N'777894565V', N'Mrs', N'Kumari', N'Jayathilaka', N'kumj@gmail.com', 4, N'Badminton', N'04/01/2024', N'2.00 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (195, N'837898457V', N'Mrs', N'Rebecca', N'Fleming', N'rfleming@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (196, N'837898457V', N'Mrs', N'Rebecca', N'Fleming', N'rfleming@gmail.com', 4, N'Badminton', N'04/03/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (197, N'829878564V', N'Mrs', N'Ruwanthi', N'Sanjeevram', N'ruwi@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (198, N'829878564V', N'Mrs', N'Ruwanthi', N'Sanjeevram', N'ruwi@gmail.com', 4, N'Badminton', N'04/08/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (199, N'865963741V', N'Mrs', N'Achini', N'Perera', N'achini@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (200, N'865894567V', N'Mrs', N'Achini', N'Hewage', N'achih@gmail.com', 6, N'Table Tennis', N'04/03/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (201, N'767456985V', N'Mrs', N'Niranjani', N'Elangovan', N'niru@gmail.com', 2, N'Athletics', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (202, N'767456985V', N'Mrs', N'Niranjani', N'Elangovan', N'niru@gmail.com', 3, N'Basketball', N'05/20/2024', N'2.00 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (203, N'748485698V', N'Mrs', N'Anuratha', N'Ganesh', N'anu@gmail.com', 10, N'Swimming', N'04/04/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (204, N'748485698V', N'Mrs', N'Anuratha', N'Ganesh', N'anu@gmail.com', 6, N'Table Tennis', N'04/04/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (205, N'817652958V', N'Mrs', N'Poornima', N'Jayasinghe', N'poornima@gmail.com', 10, N'Swimming', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (206, N'767898896V', N'Mrs', N'Lasantha', N'Lenagala', N'lasantha@gmail.com', 10, N'Swimming', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (207, N'768798238V', N'Mrs', N'Belinda', N'Serasinghe', N'belind@gmail.com', 10, N'Swimming', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (208, N'778797687V', N'Mrs', N'Subashini', N'Thayalan', N'suba@gmail.com', 10, N'Swimming', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (209, N'798568479V', N'Mrs', N'Hiruni', N'Ruwanpathirana', N'hiru@gmail.com', 10, N'Swimming', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (210, N'777418526V', N'Mrs', N'Muthulaxmy', N'Shankaramoorthy', N'muthu@gmail.com', 10, N'Swimming', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (211, N'896785654V', N'Mrs', N'Chamarie', N'Reibeira', N'chamr@gmail.com', 11, N'Tennis', N'04/03/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (212, N'789865458V', N'Mrs', N'Meera', N'De Alwis', N'meera@gmaail.com', 11, N'Tennis', N'04/05/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (213, N'786776569V', N'Mrs', N'Ajantha', N'Wickramasinghe', N'ajantha@gmaail.com', 11, N'Tennis', N'04/09/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (214, N'818252457V', N'Miss', N'Vamalojana', N'Pirabusigamani', N'vami@gmail.com', 11, N'Tennis', N'04/10/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (215, N'839654987V', N'Miss', N'Shahila', N'Sideeque', N'shahi@gmail.com', 11, N'Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (216, N'839654987V', N'Miss', N'Shahila', N'Sideeque', N'shahi@gmail.com', 3, N'Basketball', N'05/22/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (217, N'926645287V', N'Miss', N'Anukshie', N'Peiris', N'anuk@gmail.com', 11, N'Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (218, N'926582565V', N'Miss', N'Udeshika', N'Ravindran', N'udeshi@gmail.com', 11, N'Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (219, N'887898482V', N'Miss', N'Ayodhya', N'Fernando', N'ayodhya@gmail.com', 11, N'Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (220, N'926898482V', N'Miss', N'Sripali', N'Silva', N'sripali@gmail.com', 11, N'Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (221, N'867412563V', N'Mrs', N'Dinesha', N'Ragukumar', N'dinr@gmail.com', 11, N'Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (222, N'936898523V', N'Miss', N'Natasha', N'Fernando', N'nataf@gmail.com', 11, N'Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (223, N'898545678V', N'Mrs', N'Dilini', N'Benjamin', N'dilb@gmail.com', 11, N'Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (224, N'768695458V', N'Mrs', N'Dilani', N'Koralage', N'dilani@gmail.com', 6, N'Table Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (225, N'935595458V', N'Miss', N'Divya', N'Sathiepan', N'divya@gmail.com', 6, N'Table Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (226, N'786776569V', N'Mrs', N'Ajantha', N'Wickramasinghe', N'ajantha@gmaail.com', 6, N'Table Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (227, N'908525745V', N'Miss', N'Dilshani', N'Gamage', N'dilsha@gmail.com', 6, N'Table Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (228, N'767898896V', N'Mrs', N'Lasantha', N'Lenagala', N'lasantha@gmail.com', 6, N'Table Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (229, N'759852577V', N'Miss', N'Jayamali', N'Alwis', N'jaya@gmail.com', 6, N'Table Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (230, N'767456321V', N'Mrs', N'Chandima', N'Pathirage', N'chanip@gmail.com', 6, N'Table Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (231, N'798574612V', N'Mrs', N'Sanjeevi', N'Jayasena', N'sanjej@gmail.com', 6, N'Table Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (232, N'826895654V', N'Miss', N'Maria', N'Paulraj', N'maria@gmail.com', 6, N'Table Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (233, N'827257456V', N'Mrs', N'Inthumathy', N'Sathyamoorthy', N'inthus@gmail.com', 6, N'Table Tennis', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (235, N'836574561V', N'Mrs', N'Rizwana', N'Aazim', N'riza@gmail.com', 1, N'Archery', N'04/29/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (236, N'818252457V', N'Miss', N'Vamalojana', N'Pirabusigamani', N'vami@gmail.com', 1, N'Archery', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (237, N'757485965V', N'Mrs', N'Umashanthy', N'Sundaralingam', N'uma@gmail.com', 1, N'Archery', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (238, N'758474854V', N'Miss', N'Nalini', N'Jesudasan', N'nalini@gmail.com', 1, N'Archery', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (239, N'897956456V', N'Miss', N'Hasika', N'Sitinayake', N'sports.metho@gmail.com', 3, N'Basketball', N'05/27/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (240, N'817652958V', N'Mrs', N'Poornima', N'Jayasinghe', N'poornima@gmail.com', 3, N'Basketball', N'05/29/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (241, N'835698547V', N'Mrs', N'Sujani', N'Gamage', N'sujani@gmail.com', 3, N'Basketball', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (242, N'758474854V', N'Miss', N'Nalini', N'Jesudasan', N'nalini@gmail.com', 3, N'Basketball', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (243, N'908525745V', N'Miss', N'Dilshani', N'Gamage', N'dilsha@gmail.com', 3, N'Basketball', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (244, N'778797687V', N'Mrs', N'Subashini', N'Thayalan', N'suba@gmail.com', 3, N'Basketball', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (245, N'866489243V', N'Mrs', N'Lakdinu', N'Kudavidanage', N'lak@gmail.com', 3, N'Basketball', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (246, N'866489243V', N'Mrs', N'Lakdinu', N'Kudavidanage', N'lak@gmail.com', 5, N'Chess', N'04/30/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (247, N'846741526V', N'Mrs', N'Abiramy', N'Suganthan', N'abis@gmail.com', 4, N'Badminton', N'04/10/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (248, N'899321678V', N'Mrs', N'Sanduni', N'Cooray', N'sanc@gmail.com', 4, N'Badminton', N'04/29/2024', N'2.30 - 4.00 PM', N'Active', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (249, N'756852741V', N'Mrs', N'Anusha', N'Kulathunga', N'anuk@gmail.com', 4, N'Badminton', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (250, N'829456321V', N'Mrs', N'Kushani', N'Fernando', N'kushf@gmail.com', 4, N'Badminton', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (251, N'868147852V', N'Mrs', N'Sabeetha', N'Abeygunawardena', N'sebee@gmail.com', 4, N'Badminton', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (252, N'896789127V', N'Miss', N'Mariam', N'Noordeen', N'marin@gmail.com', 4, N'Badminton', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (253, N'927485964V', N'Mrs', N'Pemanthi', N'Fernando', N'pemf@gmail.com', 9, N'Netball', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (254, N'808568987V', N'Mrs', N'Piyumi', N'Nannayakkara', N'piu@gmail.com', 9, N'Netball', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (255, N'968569857V', N'Miss', N'Javannya', N'Anandarajan', N'javani@gmail', 9, N'Netball', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (256, N'928741852V', N'Miss', N'Pavithra', N'Kuweju', N'pavik@gmail.com', 7, N'Squash', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (257, N'965567256V', N'Miss', N'Santheera', N'Thalwatte', N'santhee@gmail.com', 7, N'Squash', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (258, N'768695458V', N'Mrs', N'Dilani', N'Koralage', N'dilani@gmail.com', 7, N'Squash', N'', N'', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (259, N'969586451V', N'Miss', N'Pramoshi', N'Nanayakkara', N'pramo@gmail.com', 7, N'Squash', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (260, N'729586451V', N'Mrs', N'Lathika', N'Neelwala', N'lathik@gmail.com', 5, N'Chess', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (261, N'726899651V', N'Mrs', N'Chamindri', N'Udage', N'chami@gmail.com', 5, N'Chess', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (262, N'725777542V', N'Mrs', N'Shiromi', N'Ratnayake', N'shiro@gmail.com', 5, N'Chess', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (263, N'968569857V', N'Miss', N'Javannya', N'Anandarajan', N'javani@gmail', 8, N'Volleyball', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (264, N'927485964V', N'Mrs', N'Pemanthi', N'Fernando', N'pemf@gmail.com', 8, N'Volleyball', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (265, N'808568987V', N'Mrs', N'Piyumi', N'Nannayakkara', N'piu@gmail.com', 8, N'Volleyball', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Rosters] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [EmailID], [Sport_ID], [SportName], [Date], [Time], [Status], [Requests], [Addedby], [ReqName], [ExchangeWith]) VALUES (266, N'757485965V', N'Mrs', N'Umashanthy', N'Sundaralingam', N'uma@gmail.com', 8, N'Volleyball', N'', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Rosters] OFF
GO
SET IDENTITY_INSERT [dbo].[Sport] ON 

INSERT [dbo].[Sport] ([Sport_ID], [SportName]) VALUES (1, N'Archery')
INSERT [dbo].[Sport] ([Sport_ID], [SportName]) VALUES (2, N'Athletics')
INSERT [dbo].[Sport] ([Sport_ID], [SportName]) VALUES (3, N'Basketball')
INSERT [dbo].[Sport] ([Sport_ID], [SportName]) VALUES (4, N'Badminton')
INSERT [dbo].[Sport] ([Sport_ID], [SportName]) VALUES (5, N'Chess')
INSERT [dbo].[Sport] ([Sport_ID], [SportName]) VALUES (6, N'Table Tennis')
INSERT [dbo].[Sport] ([Sport_ID], [SportName]) VALUES (7, N'Squash')
INSERT [dbo].[Sport] ([Sport_ID], [SportName]) VALUES (8, N'Volleyball')
INSERT [dbo].[Sport] ([Sport_ID], [SportName]) VALUES (9, N'Netball')
INSERT [dbo].[Sport] ([Sport_ID], [SportName]) VALUES (10, N'Swimming')
INSERT [dbo].[Sport] ([Sport_ID], [SportName]) VALUES (11, N'Tennis')
SET IDENTITY_INSERT [dbo].[Sport] OFF
GO
SET IDENTITY_INSERT [dbo].[Sport_reg] ON 

INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (3, N'18575', N'Amritha', N' Vijayananth ', N'2011-07-21', N'amritha@gmail.com', N'0721472694', N'For One Sport', N'Squash', N'1000.00', N'Registration Receipt Amritha.pdf', N'3/24/2024 9:22:17 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (2, N'18550', N'Fathima Zainab', N'Mysan', N'2007-08-20', N'zm@gmail.com', N'0714959822', N'For Three Sports', N'Basketball, Athletics, Table Tennis', N'3000.00', N'Registration Receipt Zainab.pdf', N'3/24/2024 8:53:22 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (4, N'18551', N'Shahana', N'Vijeykumar', N'2007-05-06', N'sv@gmail.com', N'0774567946', N'For One Sport', N'Chess', N'1000.00', N'Registration Receipt Shahana.pdf', N'3/24/2024 9:28:49 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (5, N'18552', N'Agksheya', N'Balenthiran', N'2007-07-21', N'agksh@gmail.com', N'0776789123', N'For One Sport', N'Badminton', N'1000.00', N'Agksheya gistration Receipt.pdf', N'3/27/2024 7:03:23 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (6, N'18553', N'Nilakshi', N'Pathirana', N'2007-11-06', N'nilak@gmail.com', N'0719874565', N'For One Sport', N'Basketball', N'1000.00', N'NilakshiRegistration Receipt.pdf', N'3/27/2024 7:08:11 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (7, N'18554', N'Thimansa', N'Vandebona', N'2007-10-24', N'thim@gmail.com', N'0779638524', N'For One Sport', N'Basketball', N'1000.00', N'ThimansaRegistration Receipt.pdf', N'3/27/2024 7:15:34 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (8, N'18558', N'Samadhi', N'Gunawardena', N'2008-03-12', N'sama@gmail.com', N'0774125687', N'For One Sport', N'Basketball', N'1000.00', N'SamadhiRegistration Receipt.pdf', N'3/27/2024 7:17:30 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (11, N'18561', N'Nathania', N'Sofalas', N'2007-03-14', N'nathani@gmail.com', N'0778945612', N'For Two Sports', N'Basketball, Netball', N'2000.00', N'NathaniaRegistration Receipt.pdf', N'3/27/2024 7:43:53 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (15, N'18569', N'Katie', N'Speldewinde ', N'2011-08-24', N'katie@gmail.com', N'0779876542', N'For Two Sports', N'Basketball, Netball', N'2000.00', N'KatieRegistration Receipt.pdf', N'3/27/2024 8:29:12 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (16, N'18570', N'Akshaya', N'Gobith ', N'2011-09-25', N'akshaya@gmail.com', N'0722583694', N'For Two Sports', N'Basketball, Table Tennis', N'2000.00', N'AkshayaGobithRegistration Receipt.pdf', N'3/27/2024 8:37:39 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (10, N'18557', N'Thejashwani', N'Bheeshman', N'2008-04-28', N'theju@gmail.com', N'0772583694', N'For Two Sports', N'Basketball, Table Tennis', N'2000.00', N'ThejashwiniRegistration Receipt.pdf', N'3/27/2024 7:36:14 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (13, N'18559', N'Laila', N'Sulaiman', N'2007-02-15', N'laila@gmail.com', N'0772418537', N'For Two Sports', N'Archery, Table Tennis', N'2000.00', N'LailaRegistration Receipt.pdf', N'3/27/2024 7:52:34 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (14, N'18568', N'Suwathi', N'Jeyawaran', N'2011-10-06', N'suwathi@gmail.com', N'0748569871', N'For Two Sports', N'Basketball, Athletics', N'2000.00', N'SuwathiRegistration Receipt.pdf', N'3/27/2024 8:12:00 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (12, N'18563', N'Neha ', N'Thirumavalavan', N'2010-05-12', N'neha@gmail.com', N'0774789654', N'For Three Sports', N'Basketball, Netball, Volleyball', N'3000.00', N'NehaRegistration Receipt.pdf', N'3/27/2024 7:50:40 PM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (17, N'18560', N'Amandhi', N'Marasinghe', N'2008-06-25', N'aman@gmail.com', N'0772581475', N'For Two Sports', N'Athletics, Netball', N'2000.00', N'Registration Receipt Amandhi.pdf', N'3/30/2024 1:49:47 AM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (18, N'18564', N'Rachel', N' Stephen', N'2009-07-19', N'rache@gmail.com', N'0717896554', N'For Three Sports', N'Athletics, Netball, Tennis', N'3000.00', N'Registration Receipt Rachel.pdf', N'3/30/2024 1:51:31 AM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (19, N'18571', N'Urvi', N'Jayasinghe', N'2011-08-26', N'urvi@gmail.com', N'0772581479', N'For Three Sports', N'Athletics, Netball, Tennis', N'3000.00', N'Registration Receipt Urvi.pdf', N'3/30/2024 1:55:17 AM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (20, N'18572', N'Kavishashi', N'Sundararajan', N'2008-04-12', N'kavi@gmail.com', N'0776258427', N'For One Sport', N'Basketball', N'1000.00', N'Registration ReceiptKavishahi.pdf', N'3/30/2024 11:09:48 AM')
INSERT [dbo].[Sport_reg] ([ID], [AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo], [Reason], [Description], [Fee], [Receipt], [DateOfRegistration]) VALUES (23, N'18573', N'Sithuli', N'Fernando', N'2008-02-09', N'arthi.gnani@gmail.com', N'0712456385', N'For One Sport', N'Basketball', N'Rs.1000.00', N'Registration Receipt Sithuli.pdf', N'5/19/2024 9:51:38 AM')
SET IDENTITY_INSERT [dbo].[Sport_reg] OFF
GO
SET IDENTITY_INSERT [dbo].[Student_ApplyPosition] ON 

INSERT [dbo].[Student_ApplyPosition] ([ID], [FirstName], [Surname], [AdmissionNo], [SportName], [Team_ID], [TeamName], [CurrentPosition], [ApplyingPosition], [Date]) VALUES (2, N'Kavishashi', N'Sundararajan', N'18572', N'Basketball', 4, N'BBU16', N'Centre', N'Shooting Guard', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Student_ApplyPosition] ([ID], [FirstName], [Surname], [AdmissionNo], [SportName], [Team_ID], [TeamName], [CurrentPosition], [ApplyingPosition], [Date]) VALUES (3, N'Katie', N'Speldewinde', N'18569', N'Netball', 28, N'NBU14', N'Wing attack', N'Goal attack', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Student_ApplyPosition] ([ID], [FirstName], [Surname], [AdmissionNo], [SportName], [Team_ID], [TeamName], [CurrentPosition], [ApplyingPosition], [Date]) VALUES (4, N'Shahana', N'Vijaykumar', N'18551', N'Chess', 12, N'CheU18', N'Vice Captain', N'Captain', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Student_ApplyPosition] ([ID], [FirstName], [Surname], [AdmissionNo], [SportName], [Team_ID], [TeamName], [CurrentPosition], [ApplyingPosition], [Date]) VALUES (5, N'Agksheya', N'Balachandran', N'18552', N'Archery', 19, N'ArchU18', N'None', N'Vice Captain', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Student_ApplyPosition] ([ID], [FirstName], [Surname], [AdmissionNo], [SportName], [Team_ID], [TeamName], [CurrentPosition], [ApplyingPosition], [Date]) VALUES (6, N'Nilakshi', N'Pathirana', N'18553', N'Squash', 18, N'SquU18', N'None', N'Vice Captain', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Student_ApplyPosition] ([ID], [FirstName], [Surname], [AdmissionNo], [SportName], [Team_ID], [TeamName], [CurrentPosition], [ApplyingPosition], [Date]) VALUES (7, N'Thimansa', N'Vandebona', N'18554', N'Tennis', 20, N'TennU18', N'None', N'Vice Captain', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Student_ApplyPosition] ([ID], [FirstName], [Surname], [AdmissionNo], [SportName], [Team_ID], [TeamName], [CurrentPosition], [ApplyingPosition], [Date]) VALUES (8, N'Amandhi', N'Marasinghe', N'18560', N'Volleyball', 27, N'VBU18', N'Serving Specialist', N'Defensive Specialist', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Student_ApplyPosition] ([ID], [FirstName], [Surname], [AdmissionNo], [SportName], [Team_ID], [TeamName], [CurrentPosition], [ApplyingPosition], [Date]) VALUES (9, N'Zainab', N'Mysan', N'18550', N'Athletics', 9, N'AthU18', N'None', N'Vice Captain', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Student_ApplyPosition] ([ID], [FirstName], [Surname], [AdmissionNo], [SportName], [Team_ID], [TeamName], [CurrentPosition], [ApplyingPosition], [Date]) VALUES (10, N'Thejashwani', N'Bheeshman', N'18557', N'Table Tennis', 22, N'TTU18', N'None', N'Vice Captain', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Student_ApplyPosition] ([ID], [FirstName], [Surname], [AdmissionNo], [SportName], [Team_ID], [TeamName], [CurrentPosition], [ApplyingPosition], [Date]) VALUES (11, N'Urvi', N'Jayasinghe', N'18571', N'Swimming', 17, N'SwiU14', N'None', N'Vice Captain', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Student_ApplyPosition] ([ID], [FirstName], [Surname], [AdmissionNo], [SportName], [Team_ID], [TeamName], [CurrentPosition], [ApplyingPosition], [Date]) VALUES (12, N'Saarah', N'Hamid', N'18556', N'Badminton', 25, N'BadU18', N'None', N'Vice Captain', CAST(N'2023-08-23' AS Date))
SET IDENTITY_INSERT [dbo].[Student_ApplyPosition] OFF
GO
SET IDENTITY_INSERT [dbo].[Student_Attendance] ON 

INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (1, N'18550', N'Fathima Zainab', N'Mysan', 3, N'Basketball', N'09/20/2023', 1, N'Point Guard', 10)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (2, N'18554', N'Thimansa', N'Vandebona', 3, N'Basketball', N'09/20/2023', 1, N'Shooting Guard', 9)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (3, N'18557', N'Thejashwani', N'Bheeshman', 3, N'Basketball', N'09/20/2023', 1, N'Centre', 8)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (4, N'18558', N'Samadhi', N'Gunawardena', 3, N'Basketball', N'09/20/2023', 1, N'Power Forward', 7)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (5, N'18561', N'Nathania', N'Sofalas', 3, N'Basketball', N'09/20/2023', 1, N'Small Forward', 6)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (6, N'18563', N'Neha ', N'Thirumavalavan', 3, N'Basketball', N'09/20/2023', 1, N'Point Guard', 5)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (7, N'18568', N'Suwathi', N'Jeyawaran', 3, N'Basketball', N'09/20/2023', 1, N'Shooting Guard', 5)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (8, N'18569', N'Katie', N'Speldewinde ', 3, N'Basketball', N'09/20/2023', 1, N'Centre', 4)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (9, N'18570', N'Akshaya', N'Gobith ', 3, N'Basketball', N'09/20/2023', 1, N'Power Forward', 9)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (10, N'18553', N'Nilakshi', N'Pathirana', 3, N'Basketball', N'09/20/2023', 1, N'Point Guard', 7)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (11, N'18550', N'Fathima Zainab', N'Mysan', 3, N'Basketball', N'09/18/2023', 1, N'Point Guard', 9)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (12, N'18550', N'Fathima Zainab', N'Mysan', 2, N'Athletics', N'09/19/2023', 1, N'Javelin', 7)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (13, N'18554', N'Thimansa', N'Vandebona', 3, N'Basketball', N'12/20/2023', 1, N'Point Guard', 8)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (14, N'18557', N'Thejashwani', N'Bheeshman', 3, N'Basketball', N'12/20/2023', 0, N'None', 0)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (15, N'18550', N'Fathima Zainab', N'Mysan', 2, N'Athletics', N'03/01/2024', 1, N'Hurdles', 10)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (16, N'18568', N'Suwathi', N'Jeyawaran', 2, N'Athletics', N'03/01/2024', 1, N'Long jump', 8)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (17, N'18560', N'Amandhi', N'Marasinghe', 2, N'Athletics', N'03/01/2024', 1, N'Relay', 9)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (18, N'18560', N'Amandhi', N'Marasinghe', 2, N'Athletics', N'03/01/2024', 1, N'Relay', 9)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (19, N'18564', N'Rachel', N' Stephen', 2, N'Athletics', N'03/01/2024', 1, N'Sprinting', 6)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (20, N'18571', N'Urvi', N'Jayasinghe', 2, N'Athletics', N'03/01/2024', 1, N'Javelin', 7)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (21, N'18561', N'Nathania', N'Sofalas', 9, N'Netball', N'03/01/2024', 1, N'Goal Keeper', 8)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (22, N'18563', N'Neha ', N'Thirumavalavan', 9, N'Netball', N'03/01/2024', 1, N'Goal Defence', 8)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (23, N'18560', N'Amandhi', N'Marasinghe', 9, N'Netball', N'03/01/2024', 1, N'Centre', 9)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (24, N'18564', N'Rachel', N' Stephen', 9, N'Netball', N'03/01/2024', 1, N'Wing Defence', 9)
INSERT [dbo].[Student_Attendance] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [DateOfPractice], [Attendance], [Category], [Performance]) VALUES (25, N'18571', N'Urvi', N'Jayasinghe', 9, N'Netball', N'03/01/2024', 1, N'Wing Defence', 10)
SET IDENTITY_INSERT [dbo].[Student_Attendance] OFF
GO
SET IDENTITY_INSERT [dbo].[Student_Sport] ON 

INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (37, N'18550', N'Fathima Zainab', N'Mysan', 3, N'Basketball', N'zm@gmail.com', N'Registration Receipt Zainab.pdf', N'3/29/2024 11:18:32 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (38, N'18550', N'Fathima Zainab', N'Mysan', 2, N'Athletics', N'zm@gmail.com', N'Registration Receipt Zainab.pdf', N'3/29/2024 11:18:57 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (39, N'18550', N'Fathima Zainab', N'Mysan', 6, N'Table Tennis', N'zm@gmail.com', N'Registration Receipt Zainab.pdf', N'3/29/2024 11:19:08 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (40, N'18575', N'Amritha', N' Vijayananth ', 7, N'Squash', N'amritha@gmail.com', N'Registration Receipt Amritha.pdf', N'3/29/2024 11:19:34 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (41, N'18551', N'Shahana', N'Vijeykumar', 5, N'Chess', N'sv@gmail.com', N'Registration Receipt Shahana.pdf', N'3/29/2024 11:27:01 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (42, N'18552', N'Agksheya', N'Balenthiran', 4, N'Badminton', N'agksh@gmail.com', N'Agksheya gistration Receipt.pdf', N'3/29/2024 11:27:28 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (43, N'18553', N'Nilakshi', N'Pathirana', 3, N'Basketball', N'nilak@gmail.com', N'NilakshiRegistration Receipt.pdf', N'3/29/2024 11:28:13 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (44, N'18554', N'Thimansa', N'Vandebona', 3, N'Basketball', N'thim@gmail.com', N'ThimansaRegistration Receipt.pdf', N'3/29/2024 11:30:14 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (45, N'18558', N'Samadhi', N'Gunawardena', 3, N'Basketball', N'sama@gmail.com', N'SamadhiRegistration Receipt.pdf', N'3/29/2024 11:35:52 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (46, N'18561', N'Nathania', N'Sofalas', 3, N'Basketball', N'nathani@gmail.com', N'NathaniaRegistration Receipt.pdf', N'3/29/2024 11:36:19 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (47, N'18561', N'Nathania', N'Sofalas', 9, N'Netball', N'nathani@gmail.com', N'NathaniaRegistration Receipt.pdf', N'3/29/2024 11:36:34 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (48, N'18569', N'Katie', N'Speldewinde ', 9, N'Netball', N'katie@gmail.com', N'KatieRegistration Receipt.pdf', N'3/29/2024 11:37:12 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (49, N'18569', N'Katie', N'Speldewinde ', 3, N'Basketball', N'katie@gmail.com', N'KatieRegistration Receipt.pdf', N'3/29/2024 11:37:27 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (50, N'18570', N'Akshaya', N'Gobith ', 3, N'Basketball', N'akshaya@gmail.com', N'AkshayaGobithRegistration Receipt.pdf', N'3/29/2024 11:44:54 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (51, N'18570', N'Akshaya', N'Gobith ', 6, N'Table Tennis', N'akshaya@gmail.com', N'AkshayaGobithRegistration Receipt.pdf', N'3/29/2024 11:45:27 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (52, N'18570', N'Akshaya', N'Gobith ', 6, N'Table Tennis', N'akshaya@gmail.com', N'AkshayaGobithRegistration Receipt.pdf', N'3/29/2024 11:45:27 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (53, N'18557', N'Thejashwani', N'Bheeshman', 3, N'Basketball', N'theju@gmail.com', N'ThejashwiniRegistration Receipt.pdf', N'3/29/2024 11:45:58 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (54, N'18557', N'Thejashwani', N'Bheeshman', 6, N'Table Tennis', N'theju@gmail.com', N'ThejashwiniRegistration Receipt.pdf', N'3/29/2024 11:46:39 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (55, N'18559', N'Laila', N'Sulaiman', 6, N'Table Tennis', N'laila@gmail.com', N'LailaRegistration Receipt.pdf', N'3/29/2024 11:47:59 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (56, N'18559', N'Laila', N'Sulaiman', 1, N'Archery', N'laila@gmail.com', N'LailaRegistration Receipt.pdf', N'3/29/2024 11:48:34 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (57, N'18568', N'Suwathi', N'Jeyawaran', 3, N'Basketball', N'suwathi@gmail.com', N'SuwathiRegistration Receipt.pdf', N'3/29/2024 11:48:55 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (58, N'18568', N'Suwathi', N'Jeyawaran', 2, N'Athletics', N'suwathi@gmail.com', N'SuwathiRegistration Receipt.pdf', N'3/29/2024 11:49:29 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (59, N'18563', N'Neha ', N'Thirumavalavan', 3, N'Basketball', N'neha@gmail.com', N'NehaRegistration Receipt.pdf', N'3/29/2024 11:49:56 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (60, N'18563', N'Neha ', N'Thirumavalavan', 9, N'Netball', N'neha@gmail.com', N'NehaRegistration Receipt.pdf', N'3/29/2024 11:50:23 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (61, N'18563', N'Neha ', N'Thirumavalavan', 8, N'Volleyball', N'neha@gmail.com', N'NehaRegistration Receipt.pdf', N'3/29/2024 11:50:38 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (62, N'18560', N'Amandhi', N'Marasinghe', 2, N'Athletics', N'aman@gmail.com', N'Registration Receipt Amandhi.pdf', N'3/30/2024 1:56:54 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (63, N'18560', N'Amandhi', N'Marasinghe', 9, N'Netball', N'aman@gmail.com', N'Registration Receipt Amandhi.pdf', N'3/30/2024 1:57:07 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (64, N'18564', N'Rachel', N' Stephen', 2, N'Athletics', N'rache@gmail.com', N'Registration Receipt Rachel.pdf', N'3/30/2024 1:57:24 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (65, N'18564', N'Rachel', N' Stephen', 9, N'Netball', N'rache@gmail.com', N'Registration Receipt Rachel.pdf', N'3/30/2024 1:57:34 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (66, N'18564', N'Rachel', N' Stephen', 11, N'Tennis', N'rache@gmail.com', N'Registration Receipt Rachel.pdf', N'3/30/2024 1:57:45 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (67, N'18564', N'Rachel', N' Stephen', 11, N'Tennis', N'rache@gmail.com', N'Registration Receipt Rachel.pdf', N'3/30/2024 1:57:45 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (68, N'18571', N'Urvi', N'Jayasinghe', 2, N'Athletics', N'urvi@gmail.com', N'Registration Receipt Urvi.pdf', N'3/30/2024 1:58:09 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (69, N'18571', N'Urvi', N'Jayasinghe', 9, N'Netball', N'urvi@gmail.com', N'Registration Receipt Urvi.pdf', N'3/30/2024 1:58:21 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (70, N'18571', N'Urvi', N'Jayasinghe', 11, N'Tennis', N'urvi@gmail.com', N'Registration Receipt Urvi.pdf', N'3/30/2024 1:58:33 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (71, N'18571', N'Urvi', N'Jayasinghe', 11, N'Tennis', N'urvi@gmail.com', N'Registration Receipt Urvi.pdf', N'3/30/2024 1:58:34 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (72, N'18572', N'Kavishashi', N'Sundararajan', 3, N'Basketball', N'kavi@gmail.com', N'Registration ReceiptKavishahi.pdf', N'3/30/2024 11:10:40 AM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (73, N'18572', N'Kavishashi', N'Sundararajan', 3, N'Basketball', N'kavi@gmail.com', N'Registration ReceiptKavishahi.pdf', N'3/30/2024 12:37:21 PM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (74, N'18572', N'Kavishashi', N'Sundararajan', 3, N'Basketball', N'kavi@gmail.com', N'Registration ReceiptKavishahi.pdf', N'3/30/2024 12:39:06 PM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (75, N'18572', N'Kavishashi', N'Sundararajan', 3, N'Basketball', N'kavi@gmail.com', N'Registration ReceiptKavishahi.pdf', N'3/30/2024 12:41:11 PM')
INSERT [dbo].[Student_Sport] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Email], [Receipt], [DateJoined]) VALUES (76, N'18573', N'Sithuli', N'Fernando', 3, N'Basketball', N'arthi.gnani@gmail.com', N'Registration Receipt Sithuli.pdf', N'3/30/2024 12:54:25 PM')
SET IDENTITY_INSERT [dbo].[Student_Sport] OFF
GO
SET IDENTITY_INSERT [dbo].[Student_Team] ON 

INSERT [dbo].[Student_Team] ([ID], [AdmissionNo], [FirstName], [Surname], [Team_ID], [TeamName], [Category], [Position]) VALUES (57, N'18571', N'Urvi', N'Jayasinghe', 7, N'AthU14', N'Javelin', N'Player')
INSERT [dbo].[Student_Team] ([ID], [AdmissionNo], [FirstName], [Surname], [Team_ID], [TeamName], [Category], [Position]) VALUES (58, N'18557', N'Thejashwani', N'Bheeshman', 5, N'BBU18', N'Centre', N'Captain')
INSERT [dbo].[Student_Team] ([ID], [AdmissionNo], [FirstName], [Surname], [Team_ID], [TeamName], [Category], [Position]) VALUES (59, N'18550', N'Fathima Zainab', N'Mysan', 5, N'BBU18', N'Point Guard', N'Player')
SET IDENTITY_INSERT [dbo].[Student_Team] OFF
GO
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18550', N'Fathima Zainab', N'Mysan', N'08/20/2007', N'zm@gmail.com', N'0714959822')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18551', N'Shahana', N'Vijeykumar', N'05/06/2007', N'sv@gmail.com', N'0774567946')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18552', N'Agksheya', N'Balenthiran', N'07/21/2007', N'agksh@gmail.com', N'0776789123')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18553', N'Nilakshi', N'Pathirana', N'11/06/2007', N'nilak@gmail.com', N'0719874565')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18554', N'Thimansa', N'Vandebona', N'10/24/2007', N'thim@gmail.com', N'0779638524')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18556', N'Saarah', N'Hamid', N'12/23/2008', N'saarah@gmail.com', N'0711472586')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18557', N'Thejashwani', N'Bheeshman', N'04/28/2008', N'theju@gmail.com', N'0772583694')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18558', N'Samadhi', N'Gunawardena', N'03/12/2008', N'sama@gmail.com', N'0774125687')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18559', N'Laila', N'Sulaiman', N'02/15/2007', N'laila@gmail.com', N'0772418537')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18560', N'Amandhi', N'Marasinghe', N'06/25/2008', N'aman@gmail.com', N'0772581475')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18561', N'Nathania', N'Sofalas', N'03/14/2007', N'nathani@gmail.com', N'0778945612')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18562', N'Sharaiah', N'de Silva', N'04/13/2008', N'shari@gmail.com', N'0764567894')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18563', N'Neha ', N'Thirumavalavan', N'05/12/2010', N'neha@gmail.com', N'0774789654')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18564', N'Rachel', N' Stephen', N'07/19/2009', N'rache@gmail.com', N'0717896554')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18565', N'Ruwandi', N'Perera', N'06/23/2008', N'ruwi@gmail.com', N'0763218567')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18566', N'Saraiah', N'Gunawardena', N'07/20/2015', N'neomi@gmail.com', N'0775649872')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18567', N'Tamashi', N'Wickramarachchi', N'08/23/2015', N'tanu@gmail.com', N'0769638527')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18568', N'Suwathi', N'Jeyawaran', N'10/06/2011', N'suwathi@gmail.com', N'0748569871')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18569', N'Katie', N'Speldewinde ', N'08/24/2011', N'katie@gmail.com', N'0779876542')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18570', N'Akshaya', N'Gobith ', N'09/25/2011', N'akshaya@gmail.com', N'0722583694')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18571', N'Urvi', N'Jayasinghe', N'08/26/2011', N'urvi@gmail.com', N'0772581479')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18572', N'Kavishashi', N'Sundararajan', N'04/12/2008', N'kavi@gmail.com', N'0776258427')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18573', N'Sithuli', N'Fernando', N'02/09/2008', N'arthi.gnani@gmail.com', N'0712456385')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18574', N'Shemaya', N'Elipitya', N'06/20/2011', N'shema@gmail.com', N'0772541238')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18575', N'Amritha', N' Vijayananth ', N'07/21/2011', N'amritha@gmail.com', N'0721472694')
INSERT [dbo].[Students] ([AdmissionNo], [FirstName], [Surname], [DateOfBirth], [EmailID], [ContactNo]) VALUES (N'18576', N'Methuki', N'Kariyawasam', N'06/07/2011', N'methuki@gmail.com', N'0764789851')
GO
SET IDENTITY_INSERT [dbo].[StudentSport_Fee] ON 

INSERT [dbo].[StudentSport_Fee] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Month], [DateOfPayment], [Receipt]) VALUES (2, N'18551', N'Shahana', N'Vijeykumar', 5, N'Chess', N'October', N'10/22/2023 2:15:45 AM', N'Grade 7C SBA Test 1.pdf')
INSERT [dbo].[StudentSport_Fee] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Month], [DateOfPayment], [Receipt]) VALUES (3, N'18552', N'Agksheya', N'Balenthiran', 4, N'Badminton', N'September', N'10/22/2023 1:42:17 PM', N'questions scratch.pdf')
INSERT [dbo].[StudentSport_Fee] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Month], [DateOfPayment], [Receipt]) VALUES (4, N'18550', N'Fathima Zainab', N'Mysan', 3, N'Basketball', N'March', N'3/27/2024 11:35:24 PM', N'ZainanbMarchMonthly Receipt.pdf')
INSERT [dbo].[StudentSport_Fee] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Month], [DateOfPayment], [Receipt]) VALUES (5, N'18550', N'Fathima Zainab', N'Mysan', 2, N'Athletics', N'March', N'3/27/2024 11:35:43 PM', N'ZainanbMarchMonthly Receipt.pdf')
INSERT [dbo].[StudentSport_Fee] ([ID], [AdmissionNo], [FirstName], [Surname], [Sport_ID], [SportName], [Month], [DateOfPayment], [Receipt]) VALUES (7, N'18550', N'Fathima Zainab', N'Mysan', 6, N'Table Tennis', N'March', N'3/27/2024 11:36:32 PM', N'ZainanbMarchMonthly Receipt.pdf')
SET IDENTITY_INSERT [dbo].[StudentSport_Fee] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher_Sport] ON 

INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (2, N'77889965V', N'Mrs', N'Faiza', N'Gallage', N'Swimming', 10)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (4, N'838103081V', N'Miss', N'Indhuarthi', N'Gnanamoney', N'Basketball', 3)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (5, N'838103081V', N'Miss', N'Indhuarthi', N'Gnanamoney', N'Tennis', 11)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (8, N'826895654V', N'Miss', N'Maria', N'Paulraj', N'Athletics', 2)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (9, N'908545658V', N'Mrs', N'Nehara', N'Wimalaweera', N'Tennis', 11)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (10, N'927485964V', N'Mrs', N'Pemanthi', N'Fernando', N'Basketball', 3)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (11, N'807425856V', N'Mrs', N'Niwarthani', N'Wijesinghe', N'Swimming', 10)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (12, N'815741852V', N'Mrs', N'Thakshila', N'Punchihewa', N'Table Tennis', 6)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (13, N'957856456V', N'Miss', N'Chrishnilla', N'Sandrasegar', N'Table Tennis', 6)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (16, N'928741852V', N'Miss', N'Pavithra', N'Kuweju', N'Archery', 1)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (17, N'839654987V', N'Miss', N'Shahila', N'Sideeque', N'Badminton', 4)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (18, N'815741852V', N'Mrs', N'Thakshila', N'Punchihewa', N'Badminton', 4)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (19, N'908545658V', N'Mrs', N'Nehara', N'Wimalaweera', N'Netball', 9)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (20, N'865894567V', N'Mrs', N'Achini', N'Hewage', N'Netball', 9)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (21, N'779865456V', N'Mrs', N'Anuratha', N'Ganesh', N'Chess', 5)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (22, N'896785654V', N'Mrs', N'Chamarie', N'Reibeira', N'Chess', 5)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (23, N'846741526V', N'Mrs', N'Abiramy', N'Suganthan', N'Squash', 7)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (24, N'759852577V', N'Miss', N'Jayamali', N'Alwis', N'Squash', 7)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (25, N'767456321V', N'Mrs', N'Chandima', N'Pathirage', N'Volleyball', 8)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (26, N'788200562V', N'Miss', N'Madhuwanthi', N'Liyanage', N'Athletics', 2)
INSERT [dbo].[Teacher_Sport] ([ID], [Teacher_ID], [Title], [FirstName], [Surname], [Sport_Name], [Sport_ID]) VALUES (28, N'957856456V', N'Miss', N'Chrishnilla', N'Sandrasegar', N'Volleyball', 8)
SET IDENTITY_INSERT [dbo].[Teacher_Sport] OFF
GO
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'725777542V', N'Mrs', N'Shiromi', N'Ratnayake', N'0715533778', N'shiro@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'726899651V', N'Mrs', N'Chamindri', N'Udage', N'0778598564', N'chami@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'729586451V', N'Mrs', N'Lathika', N'Neelwala', N'0717867454', N'lathik@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'748485698V', N'Mrs', N'Anuratha', N'Ganesh', N'0771238957', N'anu@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'756852741V', N'Mrs', N'Anusha', N'Kulathunga', N'0776845964', N'anuk@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'757485965V', N'Mrs', N'Umashanthy', N'Sundaralingam', N'0789562456', N'uma@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'758474854V', N'Miss', N'Nalini', N'Jesudasan', N'0776724069', N'nalini@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'759852577V', N'Miss', N'Jayamali', N'Alwis', N'0776895234', N'jaya@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'767258639V', N'Mrs', N'Shami', N'Pratheepan', N'07189456322', N'shamip@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'767456321V', N'Mrs', N'Chandima', N'Pathirage', N'0778527419', N'chanip@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'767456985V', N'Mrs', N'Niranjani', N'Elangovan', N'0772349874', N'niru@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'767898896V', N'Mrs', N'Lasantha', N'Lenagala', N'0772565867', N'lasantha@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'768695458V', N'Mrs', N'Dilani', N'Koralage', N'0724545592', N'dilani@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'768798238V', N'Mrs', N'Belinda', N'Serasinghe', N'0763575968', N'belind@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'776201061V', N'Mrs', N'Dharshini', N'Diaz', N'0773312322', N'darshi@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'777418526V', N'Mrs', N'Muthulaxmy', N'Shankaramoorthy', N'0718529637', N'muthu@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'777894565V', N'Mrs', N'Kumari', N'Jayathilaka', N'0714567892', N'kumj@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'778797687V', N'Mrs', N'Subashini', N'Thayalan', N'0776745845', N'suba@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'778899651V', N'Mrs', N'Faiza', N'Gallage', N'0714567891', N'faiza@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'786776569V', N'Mrs', N'Ajantha', N'Wickramasinghe', N'0775868563', N'ajantha@gmaail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'786889872V', N'Mrs', N'Sivaganga', N'Sivalingham', N'0714987564', N'sganga@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'788200562V', N'Miss', N'Madhuwanthi', N'Liyanage', N'0773423455', N'madhu@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'789865458V', N'Mrs', N'Meera', N'De Alwis', N'0776957452', N'meera@gmaail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'796965258V', N'Mrs', N'Buddhini', N'Mendis', N'0776588970', N'bmendis@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'798568479V', N'Mrs', N'Hiruni', N'Ruwanpathirana', N'0714949522', N'hiru@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'798574612V', N'Mrs', N'Sanjeevi', N'Jayasena', N'0776147258', N'sanjej@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'807425856V', N'Mrs', N'Niwarthani', N'Wijesinghe', N'0778946543', N'nwij@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'808568987V', N'Mrs', N'Piyumi', N'Nannayakkara', N'0716548968', N'piu@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'810509871V', N'Mrs', N'Sashini', N'Marambe', N'0720881990', N'sashini@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'815741852V', N'Mrs', N'Thakshila', N'Punchihewa', N'0717894561', N'thakshyp@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'817652958V', N'Mrs', N'Poornima', N'Jayasinghe', N'0724569875', N'poornima@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'818252457V', N'Miss', N'Vamalojana', N'Pirabusigamani', N'0718965785', N'vami@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'826895654V', N'Miss', N'Maria', N'Paulraj', N'071459586', N'maria@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'827257456V', N'Mrs', N'Inthumathy', N'Sathyamoorthy', N'0773147855', N'inthus@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'829456321V', N'Mrs', N'Kushani', N'Fernando', N'0778563241', N'kushf@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'829878564V', N'Mrs', N'Ruwanthi', N'Sanjeevram', N'0777895641', N'ruwi@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'835698547V', N'Mrs', N'Sujani', N'Gamage', N'0711005244', N'sujani@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'836574561V', N'Mrs', N'Rizwana', N'Aazim', N'0718523697', N'riza@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'837898457V', N'Mrs', N'Rebecca', N'Fleming', N'0719856324', N'rfleming@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'838103081V', N'Miss', N'Indhuarthi', N'Gnanamoney', N'0773413433', N'arthi.gnani@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'839654987V', N'Miss', N'Shahila', N'Sideeque', N'0775698741', N'shahi@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'846741526V', N'Mrs', N'Abiramy', N'Suganthan', N'0778945652', N'abis@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'848556674V', N'Mrs', N'Rochelle', N'Chandrakumar', N'0778978935', N'rchandra@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'865894567V', N'Mrs', N'Achini', N'Hewage', N'0717894561', N'achih@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'865963741V', N'Mrs', N'Achini', N'Perera', N'0774898523', N'achini@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'866489243V', N'Miss', N'Lakdinu', N'Kudavidanage', N'0768954562', N'lak@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'867412563V', N'Mrs', N'Dinesha', N'Ragukumar', N'0718945214', N'dinr@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'868147852V', N'Mrs', N'Sabeetha', N'Abeygunawardena', N'0772456351', N'sebee@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'878956123V', N'Mrs', N'Nishadi', N'Wijesinghe', N'0715693217', N'Nish@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'887898482V', N'Miss', N'Ayodhya', N'Fernando', N'0776558991', N'ayodhya@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'896785654V', N'Mrs', N'Chamarie', N'Reibeira', N'0716894562', N'chamr@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'896789127V', N'Miss', N'Mariam', N'Noordeen', N'0773123456', N'marin@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'897956456V', N'Miss', N'Hasika', N'Sitinayake', N'0774569872', N'sports.metho@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'898545678V', N'Mrs', N'Dilini', N'Benjamin', N'0717894563', N'dilb@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'899321678V', N'Mrs', N'Sanduni', N'Cooray', N'0717896542', N'sanc@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'908525745V', N'Miss', N'Dilshani', N'Gamage', N'0761234651', N'dilsha@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'908545658V', N'Mrs', N'Nehara', N'Wimalaweera', N'0769876547', N'nehw@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'908599782V', N'Mrs', N'Azra', N'Razideen', N'0773456321', N'azrar@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'918312658V', N'Miss', N'Iroshani', N'Bandara', N'0774893265', N'iro@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'926582565V', N'Miss', N'Udeshika', N'Ravindran', N'0774562531', N'udeshi@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'926645287V', N'Miss', N'Anukshie', N'Peiris', N'0773894851', N'anuk@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'926898482V', N'Miss', N'Sripali', N'Silva', N'0715447883', N'sripali@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'927485964V', N'Mrs', N'Pemanthi', N'Fernando', N'0778956523', N'pemf@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'928656398V', N'Miss', N'Melissa', N'Edema', N'0719879870', N'mel@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'928741852V', N'Miss', N'Pavithra', N'Kuweju', N'0714568527', N'pavik@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'929434547V', N'Miss', N'Praneesha', N'Fernando', N'0768956230', N'pranee@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'935595458V', N'Miss', N'Divya', N'Sathiepan', N'0733445599', N'divya@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'936898523V', N'Miss', N'Natasha', N'Fernando', N'0774567892', N'nataf@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'957856456V', N'Miss', N'Chrishnilla', N'Sandrasegar', N'0778945623', N'chrishs@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'965567256V', N'Miss', N'Santheera', N'Thalwatte', N'0776987456', N'santhee@gmail.com')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'968569857V', N'Miss', N'Javannya', N'Anandarajan', N'0765566007', N'javani@gmail')
INSERT [dbo].[Teachers] ([Teacher_ID], [Title], [FirstName], [Surname], [ContactNo], [EmailID]) VALUES (N'969586451V', N'Miss', N'Pramoshi', N'Nanayakkara', N'0779852565', N'pramo@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (2, N'ArchU10', N'Under 10', 1, N'Archery')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (4, N'BBU16', N'Under 16', 3, N'Basketball')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (5, N'BBU18', N'Under 18', 3, N'Basketball')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (6, N'AthU12', N'Under 12', 2, N'Athletics')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (7, N'AthU14', N'Under 14', 2, N'Athletics')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (8, N'AthU16', N'Under 16', 2, N'Athletics')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (9, N'AthU18', N'Under 18', 2, N'Athletics')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (10, N'AthU20', N'Under 20', 2, N'Athletics')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (12, N'CheU18', N'Under 18', 5, N'Chess')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (14, N'CheU16', N'Under 16', 5, N'Chess')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (15, N'ArchU12', N'Under 12', 1, N'Archery')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (16, N'SwiU12', N'Under 12', 10, N'Swimming')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (17, N'SwiU14', N'Under 14', 10, N'Swimming')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (18, N'SquU18', N'Under 18', 7, N'Squash')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (19, N'ArchU18', N'Under 18', 1, N'Archery')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (20, N'TennU18', N'Under 18', 11, N'Tennis')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (21, N'TennU20', N'Under 20', 11, N'Tennis')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (22, N'TTU18', N'Under 18', 6, N'Table Tennis')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (23, N'TTU20', N'Under 20', 6, N'Table Tennis')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (24, N'BadU12', N'Under 12', 4, N'Badminton')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (25, N'BadU18', N'Under 18', 4, N'Badminton')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (26, N'VBU14', N'Under 14', 8, N'Volleyball')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (27, N'VBU18', N'Under 18', 8, N'Volleyball')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (28, N'NBU14', N'Under 14', 9, N'Netball')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (29, N'NBU20', N'Under 20', 9, N'Netball')
INSERT [dbo].[Teams] ([Team_ID], [TeamName], [AgeCategory], [Sport_ID], [SportName]) VALUES (30, N'BadU14', N'Under 14', 4, N'Badminton')
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
SET IDENTITY_INSERT [dbo].[Tournament] ON 

INSERT [dbo].[Tournament] ([T_ID], [TName], [Year], [Description], [Sport_ID], [SportName]) VALUES (1, N'Basketball C divisional meet 2022', N'2022', N'C and B Division', 3, N'Basketball')
INSERT [dbo].[Tournament] ([T_ID], [TName], [Year], [Description], [Sport_ID], [SportName]) VALUES (2, N'Arjan Perera Memorial Tennis Tournament 2022', N'2022', N'Under 12-20', 11, N'Tennis')
SET IDENTITY_INSERT [dbo].[Tournament] OFF
GO
ALTER TABLE [dbo].[Achievements]  WITH CHECK ADD  CONSTRAINT [FK_Achievements_Students] FOREIGN KEY([AdmissionNo])
REFERENCES [dbo].[Students] ([AdmissionNo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Achievements] CHECK CONSTRAINT [FK_Achievements_Students]
GO
ALTER TABLE [dbo].[Coach]  WITH CHECK ADD  CONSTRAINT [FK_Coach_Sport] FOREIGN KEY([Sport_ID])
REFERENCES [dbo].[Sport] ([Sport_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Coach] CHECK CONSTRAINT [FK_Coach_Sport]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Sport] FOREIGN KEY([Sport_ID])
REFERENCES [dbo].[Sport] ([Sport_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Sport]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_Matches_Teams] FOREIGN KEY([Team_ID])
REFERENCES [dbo].[Teams] ([Team_ID])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_Matches_Teams]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Change_Request_Rosters] FOREIGN KEY([ID])
REFERENCES [dbo].[Rosters] ([ID])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Change_Request_Rosters]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Change_Request_Sport] FOREIGN KEY([Sport_ID])
REFERENCES [dbo].[Sport] ([Sport_ID])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Change_Request_Sport]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Change_Request_Teachers] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teachers] ([Teacher_ID])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Change_Request_Teachers]
GO
ALTER TABLE [dbo].[Rosters]  WITH CHECK ADD  CONSTRAINT [FK_Rosters_Sport] FOREIGN KEY([Sport_ID])
REFERENCES [dbo].[Sport] ([Sport_ID])
GO
ALTER TABLE [dbo].[Rosters] CHECK CONSTRAINT [FK_Rosters_Sport]
GO
ALTER TABLE [dbo].[Rosters]  WITH CHECK ADD  CONSTRAINT [FK_Rosters_Teachers] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teachers] ([Teacher_ID])
GO
ALTER TABLE [dbo].[Rosters] CHECK CONSTRAINT [FK_Rosters_Teachers]
GO
ALTER TABLE [dbo].[Student_Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Student_Attendance_Sport] FOREIGN KEY([Sport_ID])
REFERENCES [dbo].[Sport] ([Sport_ID])
GO
ALTER TABLE [dbo].[Student_Attendance] CHECK CONSTRAINT [FK_Student_Attendance_Sport]
GO
ALTER TABLE [dbo].[Student_Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Student_Attendance_Students] FOREIGN KEY([AdmissionNo])
REFERENCES [dbo].[Students] ([AdmissionNo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student_Attendance] CHECK CONSTRAINT [FK_Student_Attendance_Students]
GO
ALTER TABLE [dbo].[Student_Sport]  WITH CHECK ADD  CONSTRAINT [FK_Student_Sport_Sport] FOREIGN KEY([Sport_ID])
REFERENCES [dbo].[Sport] ([Sport_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student_Sport] CHECK CONSTRAINT [FK_Student_Sport_Sport]
GO
ALTER TABLE [dbo].[Student_Sport]  WITH CHECK ADD  CONSTRAINT [FK_Student_Sport_Students] FOREIGN KEY([AdmissionNo])
REFERENCES [dbo].[Students] ([AdmissionNo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student_Sport] CHECK CONSTRAINT [FK_Student_Sport_Students]
GO
ALTER TABLE [dbo].[StudentSport_Fee]  WITH CHECK ADD  CONSTRAINT [FK_StudentSport_Fee_Sport] FOREIGN KEY([Sport_ID])
REFERENCES [dbo].[Sport] ([Sport_ID])
GO
ALTER TABLE [dbo].[StudentSport_Fee] CHECK CONSTRAINT [FK_StudentSport_Fee_Sport]
GO
ALTER TABLE [dbo].[StudentSport_Fee]  WITH CHECK ADD  CONSTRAINT [FK_StudentSport_Fee_Students] FOREIGN KEY([AdmissionNo])
REFERENCES [dbo].[Students] ([AdmissionNo])
GO
ALTER TABLE [dbo].[StudentSport_Fee] CHECK CONSTRAINT [FK_StudentSport_Fee_Students]
GO
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_Sport] FOREIGN KEY([Sport_ID])
REFERENCES [dbo].[Sport] ([Sport_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_Sport]
GO
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD  CONSTRAINT [FK_Tournament_Sport] FOREIGN KEY([Sport_ID])
REFERENCES [dbo].[Sport] ([Sport_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tournament] CHECK CONSTRAINT [FK_Tournament_Sport]
GO
