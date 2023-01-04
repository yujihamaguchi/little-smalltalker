Class {
	#name : #StatisticDisplay,
	#superclass : #Observer,
	#instVars : [
		'temperature'
	],
	#category : #'Q030-Observer'
}

{ #category : #'as yet unclassified' }
StatisticDisplay class >> weatherData: aWeatherData [
	^ self new setWeatherData: aWeatherData
]

{ #category : #api }
StatisticDisplay >> display [

	^ 'Statistic / temperature: ' , temperature asString , ' is Good!'
]

{ #category : #initialization }
StatisticDisplay >> setWeatherData: aWeatherData [
	aWeatherData addObserver: self.
	^ self
]

{ #category : #updating }
StatisticDisplay >> update: aWeatherData [
	temperature := aWeatherData temperature
]
