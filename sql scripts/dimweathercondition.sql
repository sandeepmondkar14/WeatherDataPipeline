USE [weatherdata]
GO

/****** Object:  Table [dim].[DimWeatherCondition]    Script Date: 5/28/2025 8:28:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dim].[DimWeatherCondition](
	[WeatherConditionID] [int] IDENTITY(1,1) NOT NULL,
	[Weather] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[WeatherConditionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

