Class {
	#name : #ToppingTest,
	#superclass : #TestCase,
	#category : #'Q040-Decorator'
}

{ #category : #tests }
ToppingTest >> testCost [
	| beverage topping1 topping2 |
	beverage := Beverage cost: 2.
	topping1 := Topping cost: 1 beverage: beverage.
	self assert: topping1 cost equals: 3.
	topping2 := Topping cost: 1 beverage: topping1.
	self assert: topping2 cost equals: 4.
]
