USE [weatherdata]
GO

/****** Object:  Table [stg].[Staging14dayforcast]    Script Date: 5/28/2025 8:26:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [stg].[Staging14dayforcast](
	[StagingID] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](50) NULL,
	[Country] [nvarchar](100) NULL,
	[DateTimeStamp] [date] NULL,
	[TemperatureCelsius] [float] NULL,
	[FeelsLikeCelsius] [float] NULL,
	[TemperatureMinCelsius] [float] NULL,
	[TemperatureMaxCelsius] [float] NULL,
	[Weather] [nvarchar](255) NULL,
	[Pressure] [int] NULL,
	[Humidity] [int] NULL,
	[WindSpeed] [float] NULL,
	[WindDeg] [int] NULL,
	[Lat] [float] NULL,
	[Lon] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[StagingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

