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
Whip class >> cost: aNumber beverage: aBeverage [
	^ self new setCost: aNumber beverage: aBeverage 
]

{ #category : #accessing }
Whip >> cost [
	^ beverage cost + cost
]

{ #category : #initialization }
Whip >> setCost: aNumber beverage: aBeverage [
	cost := aNumber.
	beverage := aBeverage.
	^ self
]
