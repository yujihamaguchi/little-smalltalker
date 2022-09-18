Class {
	#name : #BeverageTest,
	#superclass : #TestCase,
	#category : #'Q040-Decorator'
}

{ #category : #tests }
BeverageTest >> testBeverage [
	| darkRoast mocha whip |
	darkRoast := DarkRoast cost: 3.
	mocha := Mocha cost: 2 beverage: darkRoast.
	mocha := Mocha cost: 2 beverage: mocha.
	self assert: mocha cost equals: 7.
	whip := Whip cost: 1 beverage: mocha.
	self assert: whip cost equals: 8
]
