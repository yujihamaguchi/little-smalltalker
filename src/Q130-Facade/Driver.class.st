Class {
	#name : #Driver,
	#superclass : #Object,
	#instVars : [
		'car'
	],
	#category : #'Q130-Facade'
}

{ #category : #'as yet unclassified' }
Driver class >> car: aCar [

	^ self new setCar: aCar
]

{ #category : #running }
Driver >> driveFor: aMinutesInteger [

	car runFor: aMinutesInteger 
]

{ #category : #'as yet unclassified' }
Driver >> pushPedalUntil: aKilometersInteger [

	car speed: aKilometersInteger
]

{ #category : #running }
Driver >> runFor: aMinutesInteger [

	car runFor: aMinutesInteger 
]

{ #category : #initialization }
Driver >> setCar: aCar [

	car := aCar.
	^ self
]
