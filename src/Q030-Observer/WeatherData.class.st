Class {
	#name : #WeatherData,
	#superclass : #MySubject,
	#instVars : [
		'temperature',
		'humidity'
	],
	#category : #'Q030-Observer'
}

{ #category : #accessing }
WeatherData >> humidity [

	^ humidity
]

{ #category : #accessing }
WeatherData >> setTemperature: aTemperatureNumber humidity: aHumidityNumber [

	temperature := aTemperatureNumber.
	humidity := aHumidityNumber.
	self notifyObservers
]

{ #category : #accessing }
WeatherData >> temperature [

	^ temperature
]
