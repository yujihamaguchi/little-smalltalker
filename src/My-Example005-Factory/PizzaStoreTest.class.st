Class {
	#name : #PizzaStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-Factory'
}

{ #category : #tests }
PizzaStoreTest >> testOrderPizza [
	| pizza store |
	pizza := Pizza new.
	pizza stub.
	store := PizzaStore new.
	(store stub createPizza: #Foo) willReturn: pizza.
	self assert: (store orderPizza: #Foo) equals: pizza.
	(store should receive createPizza: #Foo) once.
	pizza should receive prepare once.
	pizza should receive bake once.
	pizza should receive cut once.
	pizza should receive box once.
]
