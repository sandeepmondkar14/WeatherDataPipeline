USE [weatherdata]
GO

/****** Object:  Table [fact].[historicalhourly]    Script Date: 5/28/2025 8:26:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [fact].[historicalhourly](
	[WeatherID] [int] IDENTITY(100,1) NOT NULL,
	[DateTimeStamp] [datetime] NOT NULL,
	[LocationID] [int] NOT NULL,
	[WeatherConditionID] [int] NOT NULL,
	[TemperatureCelsius] [float] NULL,
	[FeelsLikeCelsius] [float] NULL,
	[TemperatureMinCelsius] [float] NULL,
	[TemperatureMaxCelsius] [float] NULL,
	[Pressure] [int] NULL,
	[Humidity] [int] NULL,
	[WindSpeed] [float] NULL,
	[WindDirection] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WeatherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [fact].[historicalhourly]  WITH CHECK ADD  CONSTRAINT [FK_FactWeather_DateTimeStamp] FOREIGN KEY([DateTimeStamp])
REFERENCES [dim].[DimDateTime] ([DateTimeStamp])
GO

ALTER TABLE [fact].[historicalhourly] CHECK CONSTRAINT [FK_FactWeather_DateTimeStamp]
GO

ALTER TABLE [fact].[historicalhourly]  WITH CHECK ADD  CONSTRAINT [FK_FactWeather_LocationID] FOREIGN KEY([LocationID])
REFERENCES [dim].[DimLocation] ([LocationID])
GO

ALTER TABLE [fact].[historicalhourly] CHECK CONSTRAINT [FK_FactWeather_LocationID]
GO

ALTER TABLE [fact].[historicalhourly]  WITH CHECK ADD  CONSTRAINT [FK_FactWeather_WeatherConditionID] FOREIGN KEY([WeatherConditionID])
REFERENCES [dim].[DimWeatherCondition] ([WeatherConditionID])
GO

ALTER TABLE [fact].[historicalhourly] CHECK CONSTRAINT [FK_FactWeather_WeatherConditionID]
GO

