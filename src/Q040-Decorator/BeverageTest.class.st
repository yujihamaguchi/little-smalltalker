Class {
	#name : #BeverageTest,
	#superclass : #TestCase,
	#category : #'Q040-Decorator'
}

{ #category : #tests }
BeverageTest >> testCost [
	| target chocolateToppedBeverage doubleChocolateToppedBeverage whipToppedBeverage |
	target := DarkRoast cost: 3.
	self assert: target cost equals: 3.

	chocolateToppedBeverage := Chocolate
		                           cost: 2
		                           beverage: target.
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
