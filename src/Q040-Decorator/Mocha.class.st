Class {
	#name : #Mocha,
	#superclass : #Object,
	#instVars : [
		'cost',
		'beverage'
	],
	#category : #'Q040-Decorator'
}

{ #category : #'as yet unclassified' }
Mocha class >> cost: aNumber beverage: anObject [
	^ self new setCost: aNumber beverage: anObject
]

{ #category : #accessing }
Mocha >> cost [
	^ cost + beverage cost
]

{ #category : #private }
Mocha >> setCost: aNumber beverage: anObject [
	cost := aNumber .
	beverage := anObject .
	^ self
]
