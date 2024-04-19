Class {
	#name : #DoublePriceTest,
	#superclass : #TestCase,
	#category : #'Q040-Decorator-Tests'
}

{ #category : #tests }
DoublePriceTest >> testValue [

	| primePrice doublePrice result |
	"Arrange"
	primePrice := PrimePrice value: 3.
	doublePrice := DoublePrice price: primePrice.

	"Act"
	result := doublePrice value.

	"Assert"
	self assert: result equals: 6
]
