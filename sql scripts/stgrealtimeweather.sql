USE [weatherdata]
GO

/****** Object:  Table [stg].[StagingWeather]    Script Date: 5/28/2025 8:24:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [stg].[StagingWeather](
	[City] [nvarchar](50) NULL,
	[Country] [nvarchar](100) NULL,
	[TemperatureCelsius] [float] NULL,
	[FeelsLikeCelsius] [float] NULL,
	[TemperatureMinCelsius] [float] NULL,
	[TemperatureMaxCelsius] [float] NULL,
	[Weather] [nvarchar](255) NULL,
	[Lat] [float] NULL,
	[Lon] [float] NULL,
	[Pressure] [int] NULL,
	[Humidity] [int] NULL,
	[WindSpeed] [float] NULL,
	[WindDeg] [int] NULL,
	[Visibility] [int] NULL,
	[Sunrise] [datetime] NULL,
	[Sunset] [datetime] NULL,
	[DateTimeStamp] [datetime] NULL
) ON [PRIMARY]
GO

