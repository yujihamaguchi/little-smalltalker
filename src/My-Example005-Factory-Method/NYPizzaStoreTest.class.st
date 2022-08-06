Class {
	#name : #NYPizzaStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-Factory-Method-My-Example005-Factory-Method'
}

{ #category : #tests }
NYPizzaStoreTest >> testOrderPizza [
	| pizza store |
	pizza := (NYStyleCheesePizza new) initialize .
	store := NYPizzaStore new.
	self assert: (store orderPizza: #Cheese) equals: pizza.

]
