Class {
	#name : #StatisticDisplay,
	#superclass : #Observer,
	#instVars : [
		'temperature'
	],
	#category : #'Q030-Observer'
}

{ #category : #api }
StatisticDisplay >> display [
	^ 'Statistic / temperature: ' , temperature asString
	, ' is Good!'
]

{ #category : #updating }
StatisticDisplay >> update: aWeatherData [
	temperature := aWeatherData temperature.
]
