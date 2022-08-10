Class {
	#name : #NYPizzaStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-2-Factory-Method'
}

{ #category : #tests }
NYPizzaStoreTest >> testCreatePizza [
	| nyPizzaStore nyStyleCheesePizza |
	nyStyleCheesePizza := (NYStyleCheesePizza new) initialize .
	nyPizzaStore := NYPizzaStore new.
	self assert: (nyPizzaStore createPizza: #Cheese) equals: nyStyleCheesePizza.
]

{ #category : #tests }
NYPizzaStoreTest >> testOrderPizza [
	| nyStyleCheesePizza nyPizzaStore |
	nyStyleCheesePizza := (NYStyleCheesePizza new) initialize .
	nyPizzaStore := NYPizzaStore new.
	self assert: (nyPizzaStore orderPizza: #Cheese) equals: nyStyleCheesePizza .

]
