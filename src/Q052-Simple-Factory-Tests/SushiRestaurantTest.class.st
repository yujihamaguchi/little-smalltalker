Class {
	#name : #SushiRestaurantTest,
	#superclass : #TestCase,
	#category : #'Q052-Simple-Factory-Tests'
}

{ #category : #tests }
SushiRestaurantTest >> testOrderSushi [

	| target symbol factory sushi preparedSushi boxedSushi result |
	"Arrange"
	symbol := Mock new.
	sushi := Mock new.
	preparedSushi := Mock new.
	boxedSushi := Mock new.
	preparedSushi stub box willReturn: boxedSushi.
	sushi stub prepare willReturn: preparedSushi.
	
	factory := Mock new.
	(factory stub createSushi: symbol) willReturn: sushi.
	target := SushiRestaurant factory: factory.

	"Act"
	result := target orderSushi: symbol.

	"Assert"
	self assert: result equals: boxedSushi.
	factory should receive createSushi: symbol.
	sushi should receive prepare.
	preparedSushi should receive box
]
