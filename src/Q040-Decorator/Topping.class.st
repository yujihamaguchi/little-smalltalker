Class {
	#name : #Topping,
	#superclass : #Beverage,
	#instVars : [
		'beverage'
	],
	#category : #'Q040-Decorator'
}

{ #category : #'as yet unclassified' }
Topping class >> cost: aNumber beverage: aBeverage [
	^ self new setCost: aNumber beverage: aBeverage
]

{ #category : #accessing }
Topping >> cost [
	^ cost + beverage cost
]

{ #category : #initialization }
Topping >> setCost: aNumber beverage: aBeverage [
	cost := aNumber.
	beverage := aBeverage.
	^ self
]
