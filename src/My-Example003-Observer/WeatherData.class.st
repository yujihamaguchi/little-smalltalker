Class {
	#name : #WeatherData,
	#superclass : #Object,
	#instVars : [
		'observers',
		'temperature',
		'humidity',
		'pressure'
	],
	#category : #'My-Example003-Observer'
}

{ #category : #'as yet unclassified' }
WeatherData class >> observers: aCollection [
	^self new setObservers: aCollection
	
]

{ #category : #'observers - experimental' }
WeatherData >> registerObserver: anObserver [
	observers := observers copyWith: anObserver
]

{ #category : #initialization }
WeatherData >> setObservers: aCollection [
	observers := aCollection.
	^self
]

{ #category : #initialization }
WeatherData >> setTemperature: aTemperatureFloat humidity: aHumidityFloat pressure: aPressureFloat [
	temperature := aTemperatureFloat.
	humidity := aHumidityFloat.
	pressure := aPressureFloat.
	observers do: [ :observer | 
		observer
			updateTemperature: temperature
			humidity: humidity
			pressure: pressure ]
]
