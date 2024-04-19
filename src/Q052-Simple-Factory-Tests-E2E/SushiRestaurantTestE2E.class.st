Class {
	#name : #SushiRestaurantTestE2E,
	#superclass : #TestCase,
	#category : #'Q052-Simple-Factory-Tests-E2E'
}

{ #category : #tests }
SushiRestaurantTestE2E >> testOrderSushi [

	| sushiFactory target ordered |
	"Arrange"
	sushiFactory := SushiFactory new.
	target := SushiRestaurant factory: sushiFactory.

	"Act"
	ordered := target orderSushi: #Ikura.

	"Assert"
	self assert: ordered class equals: Ikura.
	self assert: ordered isPrepared equals: true.
	self assert: ordered isBoxed equals: true.

	"Act"
	ordered := target orderSushi: #Norimaki.

	"Assert"
	self assert: ordered class equals: Norimaki.
	self assert: ordered isPrepared equals: true.
	self assert: ordered isBoxed equals: true.

]
