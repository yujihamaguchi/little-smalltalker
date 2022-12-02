Class {
	#name : #WeatherData,
	#superclass : #Subject,
	#instVars : [
		'temperature',
		'humidity',
		'pressure'
	],
	#category : #'Q030-Observer'
}

{ #category : #accessing }
WeatherData >> humidity [

	^ humidity
]

{ #category : #initialization }
WeatherData >> initialize [
	super initialize.
	temperature := 0.
	humidity := 0.
	pressure := 0.
	^ self
]

{ #category : #accessing }
WeatherData >> pressure [

	^ pressure
]

{ #category : #initialization }
WeatherData >> setTemperature: aTemperature humidity: aHumidity pressure: aPressure [
	temperature := aTemperature.
	humidity := aHumidity.
	pressure := aPressure.
	self notify.
	^ self
	
]

{ #category : #accessing }
WeatherData >> temperature [
	^ temperature
]
