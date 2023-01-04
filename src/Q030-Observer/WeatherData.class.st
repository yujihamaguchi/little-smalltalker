Class {
	#name : #WeatherData,
	#superclass : #Subject,
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

{ #category : #initialization }
WeatherData >> setTemperature: aNumber1 humidity: aNumber2 [
	temperature := aNumber1.
	humidity := aNumber2.
	self notify
]

{ #category : #accessing }
WeatherData >> temperature [

	^ temperature
]
