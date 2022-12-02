Class {
	#name : #Observer,
	#superclass : #Object,
	#instVars : [
		'subject'
	],
	#category : #'Q030-Observer'
}

{ #category : #'as yet unclassified' }
Observer class >> weatherData: aWeatherData [
	^ self new setSubject: aWeatherData
]

{ #category : #api }
Observer >> display [
	^ self subclassResponsibility
]

{ #category : #initialization }
Observer >> setSubject: aSubject [
	subject := aSubject.
	aSubject addObserver: self.
	^ self
]

{ #category : #updating }
Observer >> update: aSubject [
	^ self subclassResponsibility 
]
