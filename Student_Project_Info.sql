USE [Student_Project_Info]
GO
/****** Object:  Table [dbo].[tblCousre]    Script Date: 08/13/2021 21:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCousre](
	[CourseId] [int] IDENTITY(100,1) NOT NULL,
	[Coursename] [varchar](50) NULL,
 CONSTRAINT [PK_tblCousre] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 08/13/2021 21:56:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tblAdmin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStudent]    Script Date: 08/13/2021 21:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStudent](
	[StudentId] [int] IDENTITY(700,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Usn] [varchar](50) NULL,
	[CourseId] [int] NOT NULL,
	[Semister] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
 CONSTRAINT [PK_tblStudent] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStaff]    Script Date: 08/13/2021 21:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStaff](
	[StaffId] [int] IDENTITY(200,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[CourseId] [int] NOT NULL,
	[Qualification] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[DOJ] [varchar](50) NULL,
	[LoginId] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tblStaff] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProjectInformation]    Script Date: 08/13/2021 21:56:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProjectInformation](
	[ProjectId] [int] IDENTITY(300,1) NOT NULL,
	[Projectname] [varchar](50) NULL,
	[CourseId] [int] NOT NULL,
	[Project_Incharge_Id] [int] NOT NULL,
	[Semister] [int] NULL,
	[EmailId] [varchar](50) NULL,
	[Member1] [varchar](50) NULL,
	[Member2] [varchar](50) NULL,
	[Member3] [varchar](50) NULL,
	[Member4] [varchar](50) NULL,
	[NoMembers] [varchar](50) NULL,
	[Leader_LoginId] [varchar](50) NULL,
	[Login_Password] [varchar](50) NULL,
 CONSTRAINT [PK_tblProjectInformation] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAssigment]    Script Date: 08/13/2021 21:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAssigment](
	[AssingId] [int] IDENTITY(400,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[StaffId] [int] NOT NULL,
	[ProjectLeader_EmailId] [varchar](50) NULL,
	[ProjectTask] [varchar](50) NULL,
	[Submission] [varchar](50) NULL,
	[Doc] [varchar](50) NULL,
 CONSTRAINT [PK_tblAssigment] PRIMARY KEY CLUSTERED 
(
	[AssingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblfeedback]    Script Date: 08/13/2021 21:56:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblfeedback](
	[FeedbackId] [int] IDENTITY(600,1) NOT NULL,
	[StaffId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[Query] [varchar](max) NULL,
	[Query_Date] [varchar](50) NULL,
	[Replay] [varchar](max) NULL,
	[Replaydate] [varchar](50) NULL,
 CONSTRAINT [PK_tblfeedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTaskUpdate]    Script Date: 08/13/2021 21:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTaskUpdate](
	[UpdateTaskId] [int] IDENTITY(500,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[AssigId] [int] NOT NULL,
	[Description] [varchar](50) NULL,
	[Doc] [varchar](50) NULL,
	[Dateofsubmission] [varchar](50) NULL,
 CONSTRAINT [PK_tblTaskUpdate] PRIMARY KEY CLUSTERED 
(
	[UpdateTaskId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_tblAssigment_tblProjectInformation]    Script Date: 08/13/2021 21:56:43 ******/
ALTER TABLE [dbo].[tblAssigment]  WITH CHECK ADD  CONSTRAINT [FK_tblAssigment_tblProjectInformation] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[tblProjectInformation] ([ProjectId])
GO
ALTER TABLE [dbo].[tblAssigment] CHECK CONSTRAINT [FK_tblAssigment_tblProjectInformation]
GO
/****** Object:  ForeignKey [FK_tblAssigment_tblStaff]    Script Date: 08/13/2021 21:56:43 ******/
ALTER TABLE [dbo].[tblAssigment]  WITH CHECK ADD  CONSTRAINT [FK_tblAssigment_tblStaff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[tblStaff] ([StaffId])
GO
ALTER TABLE [dbo].[tblAssigment] CHECK CONSTRAINT [FK_tblAssigment_tblStaff]
GO
/****** Object:  ForeignKey [FK_tblfeedback_tblProjectInformation]    Script Date: 08/13/2021 21:56:44 ******/
ALTER TABLE [dbo].[tblfeedback]  WITH CHECK ADD  CONSTRAINT [FK_tblfeedback_tblProjectInformation] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[tblProjectInformation] ([ProjectId])
GO
ALTER TABLE [dbo].[tblfeedback] CHECK CONSTRAINT [FK_tblfeedback_tblProjectInformation]
GO
/****** Object:  ForeignKey [FK_tblfeedback_tblStaff]    Script Date: 08/13/2021 21:56:44 ******/
ALTER TABLE [dbo].[tblfeedback]  WITH CHECK ADD  CONSTRAINT [FK_tblfeedback_tblStaff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[tblStaff] ([StaffId])
GO
ALTER TABLE [dbo].[tblfeedback] CHECK CONSTRAINT [FK_tblfeedback_tblStaff]
GO
/****** Object:  ForeignKey [FK_tblProjectInformation_tblCousre]    Script Date: 08/13/2021 21:56:46 ******/
ALTER TABLE [dbo].[tblProjectInformation]  WITH CHECK ADD  CONSTRAINT [FK_tblProjectInformation_tblCousre] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCousre] ([CourseId])
GO
ALTER TABLE [dbo].[tblProjectInformation] CHECK CONSTRAINT [FK_tblProjectInformation_tblCousre]
GO
/****** Object:  ForeignKey [FK_tblProjectInformation_tblStaff]    Script Date: 08/13/2021 21:56:46 ******/
ALTER TABLE [dbo].[tblProjectInformation]  WITH CHECK ADD  CONSTRAINT [FK_tblProjectInformation_tblStaff] FOREIGN KEY([Project_Incharge_Id])
REFERENCES [dbo].[tblStaff] ([StaffId])
GO
ALTER TABLE [dbo].[tblProjectInformation] CHECK CONSTRAINT [FK_tblProjectInformation_tblStaff]
GO
/****** Object:  ForeignKey [FK_tblStaff_tblCousre]    Script Date: 08/13/2021 21:56:48 ******/
ALTER TABLE [dbo].[tblStaff]  WITH CHECK ADD  CONSTRAINT [FK_tblStaff_tblCousre] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCousre] ([CourseId])
GO
ALTER TABLE [dbo].[tblStaff] CHECK CONSTRAINT [FK_tblStaff_tblCousre]
GO
/****** Object:  ForeignKey [FK_tblStudent_tblCousre]    Script Date: 08/13/2021 21:56:49 ******/
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblCousre] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCousre] ([CourseId])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblCousre]
GO
/****** Object:  ForeignKey [FK_tblTaskUpdate_tblAssigment]    Script Date: 08/13/2021 21:56:50 ******/
ALTER TABLE [dbo].[tblTaskUpdate]  WITH CHECK ADD  CONSTRAINT [FK_tblTaskUpdate_tblAssigment] FOREIGN KEY([AssigId])
REFERENCES [dbo].[tblAssigment] ([AssingId])
GO
ALTER TABLE [dbo].[tblTaskUpdate] CHECK CONSTRAINT [FK_tblTaskUpdate_tblAssigment]
GO
/****** Object:  ForeignKey [FK_tblTaskUpdate_tblProjectInformation]    Script Date: 08/13/2021 21:56:50 ******/
ALTER TABLE [dbo].[tblTaskUpdate]  WITH CHECK ADD  CONSTRAINT [FK_tblTaskUpdate_tblProjectInformation] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[tblProjectInformation] ([ProjectId])
GO
ALTER TABLE [dbo].[tblTaskUpdate] CHECK CONSTRAINT [FK_tblTaskUpdate_tblProjectInformation]
GO
