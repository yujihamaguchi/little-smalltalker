Class {
	#name : #Whip,
	#superclass : #Object,
	#instVars : [
		'cost',
		'beverage'
	],
	#category : #'Q040-Decorator'
}

{ #category : #'as yet unclassified' }
Whip class >> cost: aNumber beverage: anObject [
	^ self new setCost: aNumber beverage: anObject
]

{ #category : #accessing }
Whip >> cost [
	^ cost + beverage cost
]

{ #category : #private }
Whip >> setCost: aNumber beverage: anObject [
	cost := aNumber .
	beverage := anObject .
	^ self
]
