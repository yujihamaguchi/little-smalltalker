Class {
	#name : #WeatherDataTest,
	#superclass : #TestCase,
	#category : #'Q030-Observer'
}

{ #category : #tests }
WeatherDataTest >> testWeatherData [

	| weatherData forecastDisplay statisticDisplay |
	weatherData := WeatherData new initialize.

	forecastDisplay := ForecastDisplay weatherData: weatherData.
	statisticDisplay := StatisticDisplay weatherData: weatherData.

	weatherData temperature: 1 humidity: 2 pressure: 3.
	self
		assert: forecastDisplay display
		equals: 'Forecast / temperature: 1, humidity: 2, pressure: 3'.
	self
		assert: statisticDisplay display
		equals: 'Statistic / temperature 1 is Good!'.

	weatherData temperature: 4 humidity: 5 pressure: 6.
	self
		assert: forecastDisplay display
		equals: 'Forecast / temperature: 4, humidity: 5, pressure: 6'.
	self
		assert: statisticDisplay display
		equals: 'Statistic / temperature 4 is Good!'
]
