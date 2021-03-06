SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_francheese]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_francheese](
	[fid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NULL,
	[cdate] [datetime] NULL,
 CONSTRAINT [PK_tbl_francheese] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_branches]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_branches](
	[bid] [int] IDENTITY(1,1) NOT NULL,
	[fid] [int] NULL,
	[bname] [varchar](50) NULL,
	[address] [varchar](500) NULL,
	[country] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[cdate] [datetime] NULL,
 CONSTRAINT [PK_tbl_branches] PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_login]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_login](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[fid] [int] NULL,
	[uname] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[appointedas] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[contactno] [varchar](20) NULL,
	[fname] [varchar](50) NULL,
	[bname] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[cdate] [datetime] NULL,
 CONSTRAINT [PK_tbl_login] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_courses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_courses](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[bid] [int] NULL,
	[cname] [varchar](50) NULL,
	[duration] [varchar](50) NULL,
	[fee] [decimal](18, 2) NULL,
	[cdate] [datetime] NULL,
 CONSTRAINT [PK_tbl_courses] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_scourses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_scourses](
	[scid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[fname] [varchar](50) NULL,
	[bname] [varchar](50) NULL,
	[cname] [varchar](50) NULL,
	[cdate] [datetime] NULL,
 CONSTRAINT [PK_tbl_scourses] PRIMARY KEY CLUSTERED 
(
	[scid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_payments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_payments](
	[paymentid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[cname] [varchar](50) NULL,
	[amount] [decimal](18, 2) NULL,
	[cdate] [datetime] NULL,
 CONSTRAINT [PK_tbl_payments] PRIMARY KEY CLUSTERED 
(
	[paymentid] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_branches_tbl_francheese]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_branches]'))
ALTER TABLE [dbo].[tbl_branches]  WITH CHECK ADD  CONSTRAINT [FK_tbl_branches_tbl_francheese] FOREIGN KEY([fid])
REFERENCES [dbo].[tbl_francheese] ([fid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_branches] CHECK CONSTRAINT [FK_tbl_branches_tbl_francheese]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_login_tbl_francheese]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_login]'))
ALTER TABLE [dbo].[tbl_login]  WITH CHECK ADD  CONSTRAINT [FK_tbl_login_tbl_francheese] FOREIGN KEY([fid])
REFERENCES [dbo].[tbl_francheese] ([fid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_login] CHECK CONSTRAINT [FK_tbl_login_tbl_francheese]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_courses_tbl_branches]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_courses]'))
ALTER TABLE [dbo].[tbl_courses]  WITH CHECK ADD  CONSTRAINT [FK_tbl_courses_tbl_branches] FOREIGN KEY([bid])
REFERENCES [dbo].[tbl_branches] ([bid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_courses] CHECK CONSTRAINT [FK_tbl_courses_tbl_branches]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_scourses_tbl_login]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_scourses]'))
ALTER TABLE [dbo].[tbl_scourses]  WITH CHECK ADD  CONSTRAINT [FK_tbl_scourses_tbl_login] FOREIGN KEY([uid])
REFERENCES [dbo].[tbl_login] ([uid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_scourses] CHECK CONSTRAINT [FK_tbl_scourses_tbl_login]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_payments_tbl_login]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_payments]'))
ALTER TABLE [dbo].[tbl_payments]  WITH CHECK ADD  CONSTRAINT [FK_tbl_payments_tbl_login] FOREIGN KEY([uid])
REFERENCES [dbo].[tbl_login] ([uid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_payments] CHECK CONSTRAINT [FK_tbl_payments_tbl_login]
