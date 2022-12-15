Class {
	#name : #ChicagoStyleCheesePizzaTest,
	#superclass : #TestCase,
	#category : #'Q052-Factory-Method'
}

{ #category : #tests }
ChicagoStyleCheesePizzaTest >> testPrepare [
	| pizza |
	pizza := ChicagoStyleCheesePizza new initialize.
	self assert: pizza name equals: 'Chicago Style Cheese Pizza'.

	pizza prepare.

	self assert: pizza dough class equals: ThickCraftDough.
	self assert: pizza sauce class equals: TomatoSauce.
	self assert:
		((pizza toppings collect: [ :each | each class ]) includes:
			 ChicagoCheese)
]
