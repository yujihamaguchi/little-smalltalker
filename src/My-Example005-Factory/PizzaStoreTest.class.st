Class {
	#name : #PizzaStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-Factory'
}

{ #category : #tests }
PizzaStoreTest >> testPizzaStore [
	| nyStore ChicagoStore chicagoStore |
	nyStore := NYPizzaStore new.
	self assert: (nyStore orderPizza: #Cheese) name equals: 'NewYork Style Cheese Pizza'.

]
