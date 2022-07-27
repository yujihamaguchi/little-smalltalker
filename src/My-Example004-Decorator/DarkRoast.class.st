Class {
	#name : #DarkRoast,
	#superclass : #Object,
	#instVars : [
		'cost'
	],
	#category : #'My-Example004-Decorator'
}

{ #category : #'as yet unclassified' }
DarkRoast class >> cost: aNumber [
	^ self new setCost: aNumber
]

{ #category : #accessing }
DarkRoast >> cost [
	^ cost
]

{ #category : #initialization }
DarkRoast >> setCost: aNumber [
	cost := aNumber.
	^ self
]
