Class {
	#name : #DarkRoast,
	#superclass : #Object,
	#instVars : [
		'cost'
	],
	#category : #'Q040-Decorator'
}

{ #category : #'as yet unclassified' }
DarkRoast class >> cost: aNumber [
	^ self new setCost: aNumber
]

{ #category : #accessing }
DarkRoast >> cost [
	^ cost
]

{ #category : #private }
DarkRoast >> setCost: aNumber [
	cost := aNumber.
	^ self
]
