Class {
	#name : #Beverage,
	#superclass : #Object,
	#instVars : [
		'cost'
	],
	#category : #'Q040-Decorator'
}

{ #category : #'as yet unclassified' }
Beverage class >> cost: aNumber [
	^ self new setCost: aNumber
]

{ #category : #accessing }
Beverage >> cost [
	^ cost
]

{ #category : #initialization }
Beverage >> setCost: aNumber [
	cost := aNumber.
	^ self
]
