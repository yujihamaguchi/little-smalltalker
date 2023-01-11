Class {
	#name : #PizzaStoreTest,
	#superclass : #TestCase,
	#category : #'Q052-Factory-Method'
}

{ #category : #tests }
PizzaStoreTest >> testOrderPizza [

	| pizza target bakedPizza cutPizza boxedPizza preparedPizza |
	pizza := Mock new.
	preparedPizza := Mock new.
	bakedPizza := Mock new.
	cutPizza := Mock new.
	boxedPizza := Mock new.

	target := PizzaStore new.
	(target stub createPizza: #Foo) willReturn: pizza.
	pizza stub prepare willReturn: preparedPizza.
	preparedPizza stub bake willReturn: bakedPizza.
	bakedPizza stub cut willReturn: cutPizza.
	cutPizza stub box willReturn: boxedPizza.

	self assert: (target orderPizza: #Foo) equals: boxedPizza.

	(target should receive createPizza: #Foo) once.
	pizza should receive prepare once.
	preparedPizza should receive bake once.
	bakedPizza should receive cut once.
	cutPizza should receive box once
]
