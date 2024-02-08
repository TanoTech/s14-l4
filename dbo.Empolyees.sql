SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[CF] [char](16) NULL,
	[Age] [int] NULL,
	[MonthlyIncome] [decimal](10, 2) NOT NULL,
	[FiscalDetraction] [char](1) NOT NULL,
	[EmployementDate] [datetime] NOT NULL,
	[JobID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [JobID] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Jobs] ([JobID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [JobID]
GO
