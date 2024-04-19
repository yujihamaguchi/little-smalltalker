Class {
	#name : #StatisticAnalyze,
	#superclass : #MyObserver,
	#instVars : [
		'temperature'
	],
	#category : #'Q030-Observer'
}

{ #category : #private }
StatisticAnalyze >> analyze [

	^ 'Statistic / temperature: {1} is {2}!' format: { 
			  self temperature asString.
			  (self temperature <= 13
				   ifTrue: 'cold'
				   ifFalse: 'warm') }
]

{ #category : #accessing }
StatisticAnalyze >> temperature [

	^ temperature
]

{ #category : #updating }
StatisticAnalyze >> update: aWeatherData [

	temperature := aWeatherData temperature
]
