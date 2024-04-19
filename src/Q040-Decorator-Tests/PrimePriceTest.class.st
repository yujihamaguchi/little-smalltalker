Class {
	#name : #PrimePriceTest,
	#superclass : #TestCase,
	#category : #'Q040-Decorator-Tests'
}

{ #category : #tests }
PrimePriceTest >> testValue [

	| value primePrice result |
	"Arrange"
	value := 3.
	primePrice := PrimePrice value: value.

	"Act"
	result := primePrice value.

	"Assert"
	self assert: result equals: value
]
