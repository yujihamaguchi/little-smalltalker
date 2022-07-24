Class {
	#name : #StatisticDisplay,
	#superclass : #Object,
	#instVars : [
		'temperature',
		'humidity',
		'pressure'
	],
	#category : #'My-Example003-Observer'
}

{ #category : #'as yet unclassified' }
StatisticDisplay class >> weatherData: aWeatherData [
	| statisticDisplay |
	statisticDisplay := self new.
	aWeatherData registerObserver: statisticDisplay.
	^ statisticDisplay
]

{ #category : #api }
StatisticDisplay >> display [
	^ 'Statistic / temperature ', temperature asString , ' is Good!'
]

{ #category : #initialization }
StatisticDisplay >> updateTemperature: aTemperatureFloat humidity: aHumidityFloat pressure: aPressureFloat [
	temperature := aTemperatureFloat .
	humidity := aHumidityFloat .
	pressure := aPressureFloat .
]
