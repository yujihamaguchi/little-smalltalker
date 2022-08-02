Class {
	#name : #PizzaStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-Factory'
}

{ #category : #tests }
PizzaStoreTest >> testPizzaStore [
	| pizza store |
	pizza := NYStyleCheesePizza construct.
	pizza stub name willReturn: 'foo'.
	store := NYPizzaStore new.
	(store stub orderPizza: #Foo) willReturn: pizza.
	self assert: (store orderPizza: #Foo) name equals: 'foo'.
	(pizza should receive name) once .

]
