Class {
	#name : #ChicagoStyleCheesePizzaTest,
	#superclass : #TestCase,
	#category : #'Q052-Factory-Method'
}

{ #category : #tests }
ChicagoStyleCheesePizzaTest >> testPrepare [

	| pizza |
	pizza := ChicagoStyleCheesePizza new initialize.

	pizza prepare.

	self assert: pizza dough class equals: ThickCraftDough.
	self assert:
		((pizza toppings collect: [ :each | each class ]) includes:
			 ChicagoCheese)
]
