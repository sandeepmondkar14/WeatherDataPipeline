USE [weatherdata]
GO

/****** Object:  Table [dim].[DimDateTime]    Script Date: 5/28/2025 8:28:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dim].[DimDateTime](
	[DateTimeStamp] [datetime] NOT NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[Day] [int] NULL,
	[Hour] [int] NULL,
	[Minute] [int] NULL,
	[Second] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DateTimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

