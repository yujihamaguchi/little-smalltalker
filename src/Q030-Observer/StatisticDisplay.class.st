Class {
	#name : #StatisticDisplay,
	#superclass : #Observer,
	#instVars : [
		'temperature'
	],
	#category : #'Q030-Observer'
}

{ #category : #accessing }
StatisticDisplay class >> weatherData: aWeatherData [
	^ self new setWeatherData: aWeatherData
]

{ #category : #api }
StatisticDisplay >> display [
	^ 'Statistic / temperature ', temperature asString ,' is Good!'
]

{ #category : #initialization }
StatisticDisplay >> setWeatherData: aWeatherData [
	temperature := aWeatherData temperature.
	aWeatherData registerObserver: self.
]

{ #category : #'as yet unclassified' }
StatisticDisplay >> updateTemperature: temperatureNumber humidity: humidityNumber pressure: pressureNumber [
	temperature := temperatureNumber.
]
