Class {
	#name : #WeatherDataTest,
	#superclass : #TestCase,
	#category : #'My-Example003-Observer'
}

{ #category : #tests }
WeatherDataTest >> testWeatherData [
	| weatherData forecastDisplay statisticDisplay |
	weatherData := WeatherData observers: #().
	forecastDisplay := ForecastDisplay weatherData: weatherData.
	weatherData setTemperature: 1 humidity: 2 pressure: 3.
	self assert: forecastDisplay display equals: 'Forecast / temperature: 1, humidity: 2, pressure: 3'.
	statisticDisplay := StatisticDisplay weatherData: weatherData.
	weatherData setTemperature: 4 humidity: 5 pressure: 6.
	self assert: statisticDisplay display equals: 'Statistic / temperature 4 is Good!'
	
]
