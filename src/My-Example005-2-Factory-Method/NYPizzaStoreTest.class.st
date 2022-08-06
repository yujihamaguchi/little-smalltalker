Class {
	#name : #NYPizzaStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-2-Factory-Method'
}

{ #category : #tests }
NYPizzaStoreTest >> testOrderPizza [
	| pizza store |
	pizza := (NYStyleCheesePizza new) initialize .
	store := NYPizzaStore new.
	self assert: (store orderPizza: #Cheese) name equals: 'NewYork Style Cheese Pizza'.

]
