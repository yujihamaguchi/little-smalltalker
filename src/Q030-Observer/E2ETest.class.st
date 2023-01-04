Class {
	#name : #E2ETest,
	#superclass : #TestCase,
	#category : #'Q030-Observer'
}

{ #category : #tests }
E2ETest >> testForcastDisplay [
	| weatherData target |
	weatherData := WeatherData new initialize.

	target := ForecastDisplay weatherData: weatherData.

	weatherData setTemperature: 1 humidity: 2.
	self		
		assert: target display
		equals: 'Forecast / temperature: 1, humidity: 2'.

	weatherData setTemperature: 4 humidity: 5.
	self
		assert: target display
		equals: 'Forecast / temperature: 4, humidity: 5'
]

{ #category : #tests }
E2ETest >> testStatisticDisplay [
	| weatherData target |
	weatherData := WeatherData new initialize.

	target := StatisticDisplay weatherData: weatherData.

	weatherData setTemperature: 1 humidity: 2.
	self
		assert: target display
		equals: 'Statistic / temperature: 1 is Good!'.

	weatherData setTemperature: 4 humidity: 5.
	self
		assert: target display
		equals: 'Statistic / temperature: 4 is Good!'
]
