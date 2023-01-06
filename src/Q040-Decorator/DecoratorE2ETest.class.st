Class {
	#name : #DecoratorE2ETest,
	#superclass : #TestCase,
	#category : #'Q040-Decorator'
}

{ #category : #tests }
DecoratorE2ETest >> testE2E [

	| darkRoastBeverage chocolateToppedBeverage doubleChocolateToppedBeverage whipToppedBeverage |
	darkRoastBeverage := DarkRoast cost: 3.
	self assert: darkRoastBeverage cost equals: 3.

	chocolateToppedBeverage := Chocolate
		                           cost: 2
		                           beverage: darkRoastBeverage.
	self assert: chocolateToppedBeverage cost equals: 5.

	doubleChocolateToppedBeverage := Chocolate
		                                 cost: 2
		                                 beverage: chocolateToppedBeverage.
	self assert: doubleChocolateToppedBeverage cost equals: 7.

	whipToppedBeverage := Whip
		                      cost: 1
		                      beverage: doubleChocolateToppedBeverage.
	self assert: whipToppedBeverage cost equals: 8
]
