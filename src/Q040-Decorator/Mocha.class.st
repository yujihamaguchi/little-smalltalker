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
Mocha class >> cost: aNumber beverage: aBeverage [
	^ self new setCost: aNumber beverage: aBeverage 
]

{ #category : #accessing }
Mocha >> cost [
	^ beverage cost + cost
]

{ #category : #initialization }
Mocha >> setCost: aNumber beverage: aBeverage [
	cost := aNumber.
	beverage := aBeverage.
	^ self
]
