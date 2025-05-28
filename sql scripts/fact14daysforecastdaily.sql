USE [weatherdata]
GO

/****** Object:  Table [fact].[Fact14DayForecast]    Script Date: 5/28/2025 8:27:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [fact].[Fact14DayForecast](
	[ForecastID] [int] IDENTITY(1,1) NOT NULL,
	[DateTimeStamp] [date] NOT NULL,
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
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ForecastID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [fact].[Fact14DayForecast]  WITH CHECK ADD  CONSTRAINT [FK_Fact14DayForecast_LocationID] FOREIGN KEY([LocationID])
REFERENCES [dim].[DimLocation] ([LocationID])
GO

ALTER TABLE [fact].[Fact14DayForecast] CHECK CONSTRAINT [FK_Fact14DayForecast_LocationID]
GO

ALTER TABLE [fact].[Fact14DayForecast]  WITH CHECK ADD  CONSTRAINT [FK_Fact14DayForecast_WeatherConditionID] FOREIGN KEY([WeatherConditionID])
REFERENCES [dim].[DimWeatherCondition] ([WeatherConditionID])
GO

ALTER TABLE [fact].[Fact14DayForecast] CHECK CONSTRAINT [FK_Fact14DayForecast_WeatherConditionID]
GO

