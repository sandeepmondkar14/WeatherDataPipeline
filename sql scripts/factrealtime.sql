USE [weatherdata]
GO

/****** Object:  Table [fact].[FactWeather]    Script Date: 5/28/2025 8:26:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [fact].[FactWeather](
	[WeatherID] [int] IDENTITY(1,1) NOT NULL,
	[DateTimeStamp] [datetime] NULL,
	[LocationID] [int] NULL,
	[WeatherConditionID] [int] NULL,
	[TemperatureCelsius] [float] NULL,
	[FeelsLikeCelsius] [float] NULL,
	[TemperatureMinCelsius] [float] NULL,
	[TemperatureMaxCelsius] [float] NULL,
	[Pressure] [int] NULL,
	[Humidity] [int] NULL,
	[WindSpeed] [float] NULL,
	[WindDirection] [int] NULL,
	[Visibility] [int] NULL,
	[Sunrise] [datetime] NULL,
	[Sunset] [datetime] NULL,
	[Lat] [float] NULL,
	[Lon] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[WeatherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [fact].[FactWeather]  WITH CHECK ADD FOREIGN KEY([DateTimeStamp])
REFERENCES [dim].[DimDateTime] ([DateTimeStamp])
GO

ALTER TABLE [fact].[FactWeather]  WITH CHECK ADD FOREIGN KEY([LocationID])
REFERENCES [dim].[DimLocation] ([LocationID])
GO

ALTER TABLE [fact].[FactWeather]  WITH CHECK ADD FOREIGN KEY([WeatherConditionID])
REFERENCES [dim].[DimWeatherCondition] ([WeatherConditionID])
GO

