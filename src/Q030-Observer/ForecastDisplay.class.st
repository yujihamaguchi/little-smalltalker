Class {
	#name : #ForecastDisplay,
	#superclass : #MyObserver,
	#instVars : [
		'temperature',
		'humidity'
	],
	#category : #'Q030-Observer'
}

{ #category : #api }
ForecastDisplay >> display [

	^ 'Forecast / temperature: ' , temperature asString , ', humidity: '
	  , humidity asString
]

{ #category : #'as yet unclassified' }
ForecastDisplay >> update: aWeatherData [

	temperature := aWeatherData temperature.
	humidity := aWeatherData humidity
]
