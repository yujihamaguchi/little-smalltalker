Class {
	#name : #ForecastDisplay,
	#superclass : #Observer,
	#instVars : [
		'temperature',
		'humidity',
		'pressure'
	],
	#category : #'Q030-Observer'
}

{ #category : #api }
ForecastDisplay >> display [
	^ 'Forecast / temperature: ' ,  temperature asString
	, ', humidity: ' , humidity asString , ', pressure: '
	, pressure asString
]

{ #category : #updating }
ForecastDisplay >> update: aWatherData [
	temperature := aWatherData temperature.
	humidity := aWatherData humidity. 
	pressure  := aWatherData pressure.
]
