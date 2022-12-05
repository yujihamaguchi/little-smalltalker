Class {
	#name : #Beverage,
	#superclass : #Object,
	#instVars : [
		'cost'
	],
	#category : #'Q040-Decorator'
}

{ #category : #accessing }
Beverage >> cost [
	^ cost
]

{ #category : #initialization }
Beverage >> setCost: aNumber [
	cost := aNumber.
	^ self
]
