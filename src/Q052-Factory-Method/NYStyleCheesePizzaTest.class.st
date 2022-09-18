Class {
	#name : #NYStyleCheesePizzaTest,
	#superclass : #TestCase,
	#category : #'Q052-Factory-Method'
}

{ #category : #tests }
NYStyleCheesePizzaTest >> testPrepare [
	| pizza name |
	name := 'NewYork Style Cheese Pizza'.
	pizza := NYStyleCheesePizza name: name.
	pizza prepare.
	self assert: pizza name equals: name.
	self assert: pizza dough class equals: ThinCraftDough.
	self assert: pizza sauce class equals: MarinaraSauce.
	self assert: pizza toppings first class equals: NewYorkCheese.
]
