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

{ #category : #accessing }
ForecastDisplay class >> weatherData: aWeatherData [
	^ self new setWeatherData: aWeatherData
]

{ #category : #api }
ForecastDisplay >> display [
	^ 'Forecast / temperature: ' , temperature asString
	  , ', humidity: ' , humidity asString  , ', pressure: '
	  , pressure asString
]

{ #category : #initialization }
ForecastDisplay >> setWeatherData: aWeatherData [
	temperature := aWeatherData temperature .
	humidity := aWeatherData humidity .
	pressure := aWeatherData pressure .
	aWeatherData registerObserver: self.
]

{ #category : #'as yet unclassified' }
ForecastDisplay >> updateTemperature: temperatureNumber humidity: humidityNumber pressure: pressureNumber [
	temperature := temperatureNumber.
	humidity := humidityNumber.
	pressure := pressureNumber.

]
