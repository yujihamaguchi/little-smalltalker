Class {
	#name : #NYPizzaStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-2-Factory-Method'
}

{ #category : #tests }
NYPizzaStoreTest >> testCreatePizza [
	| nyPizzaStore |
	nyPizzaStore := NYPizzaStore new.
	self assert: (nyPizzaStore createPizza: #Cheese) class equals: NYStyleCheesePizza.
]
