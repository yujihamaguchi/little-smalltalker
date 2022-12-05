Class {
	#name : #DarkRoast,
	#superclass : #Beverage,
	#category : #'Q040-Decorator'
}

{ #category : #'as yet unclassified' }
DarkRoast class >> cost: aNumber [
	^ self new setCost: aNumber
]
