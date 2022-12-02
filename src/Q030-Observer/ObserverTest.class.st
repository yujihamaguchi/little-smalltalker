Class {
	#name : #ObserverTest,
	#superclass : #TestCase,
	#category : #'Q030-Observer'
}

{ #category : #tests }
ObserverTest >> testForcastDisplay [
	| weatherData forecastDisplay |
	weatherData := WeatherData new initialize.

	forecastDisplay := ForecastDisplay weatherData: weatherData.

	weatherData setTemperature: 1 humidity: 2 pressure: 3.
	self
		assert: forecastDisplay display
		equals: 'Forecast / temperature: 1, humidity: 2, pressure: 3'.

	weatherData setTemperature: 4 humidity: 5 pressure: 6.
	self
		assert: forecastDisplay display
		equals: 'Forecast / temperature: 4, humidity: 5, pressure: 6'
]

{ #category : #tests }
ObserverTest >> testStatisticDisplay [
	| weatherData statisticDisplay |
	weatherData := WeatherData new initialize.

	statisticDisplay := StatisticDisplay weatherData: weatherData.

	weatherData setTemperature: 1 humidity: 2 pressure: 3.	
	self
		assert: statisticDisplay display
		equals: 'Statistic / temperature: 1 is Good!'.

	weatherData setTemperature: 4 humidity: 5 pressure: 6.
	self
		assert: statisticDisplay display
		equals: 'Statistic / temperature: 4 is Good!'
]
