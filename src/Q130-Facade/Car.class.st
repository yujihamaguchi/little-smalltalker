Class {
	#name : #Car,
	#superclass : #Object,
	#instVars : [
		'speed',
		'distance'
	],
	#category : #'Q130-Facade'
}

{ #category : #accessing }
Car >> distance [

	^ distance
]

{ #category : #accessing }
Car >> initialize [ 

	distance := 0.
	speed := 0
]

{ #category : #running }
Car >> runFor: aMinutesInteger [

	distance := self distance + (self speed * aMinutesInteger)
]

{ #category : #accessing }
Car >> speed [

	^ speed
]

{ #category : #accessing }
Car >> speed: aKilometersInteger [

	speed := aKilometersInteger 
]
