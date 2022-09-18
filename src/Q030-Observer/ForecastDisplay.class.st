Class {
	#name : #ForecastDisplay,
	#superclass : #Object,
	#instVars : [
		'temperature',
		'humidity',
		'pressure'
	],
	#category : #'Q030-Observer'
}

{ #category : #'as yet unclassified' }
ForecastDisplay class >> weatherData: aWeatherData [
	| forecastDisplay |
	forecastDisplay := self new.
	aWeatherData registerObserver: forecastDisplay .
	^forecastDisplay 
]

{ #category : #api }
ForecastDisplay >> display [
	^ 'Forecast / temperature: ' , temperature asString , ', humidity: '
	  , humidity asString , ', pressure: ' , pressure asString
]

{ #category : #initialization }
ForecastDisplay >> updateTemperature: aTemperatureFloat humidity: aHumidityFloat pressure: aPressureFloat [
	temperature := aTemperatureFloat.
	humidity := aHumidityFloat.
	pressure := aPressureFloat.

]
