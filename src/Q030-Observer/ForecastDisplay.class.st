Class {
	#name : #ForecastDisplay,
	#superclass : #Observer,
	#instVars : [
		'temperature',
		'humidity'
	],
	#category : #'Q030-Observer'
}

{ #category : #'as yet unclassified' }
ForecastDisplay class >> weatherData: aWeatherData [
	^ self new setSubject: aWeatherData
]

{ #category : #api }
ForecastDisplay >> display [

	^ 'Forecast / temperature: ' , temperature asString , ', humidity: '
	  , humidity asString
]

{ #category : #updating }
ForecastDisplay >> update: aWeatherData [
	temperature := aWeatherData temperature.
	humidity := aWeatherData humidity
]
