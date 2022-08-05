Class {
	#name : #NYPizzaStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-Factory'
}

{ #category : #tests }
NYPizzaStoreTest >> testOrderPizza [
	| pizza store |
	pizza := NYStyleCheesePizza construct.
	store := NYPizzaStore new.
	self assert: (store orderPizza: #Cheese) equals: pizza.

]
