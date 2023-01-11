Class {
	#name : #NYPizzaStoreTest,
	#superclass : #TestCase,
	#category : #'Q052-Factory-Method'
}

{ #category : #tests }
NYPizzaStoreTest >> testCreatePizza [

	| nyPizzaStore |
	nyPizzaStore := NYPizzaStore new.
	self
		assert: (nyPizzaStore createPizza: #Cheese) class
		equals: NYStyleCheesePizza.
	self assert: (nyPizzaStore createPizza: #Karasumi) equals: nil
]
