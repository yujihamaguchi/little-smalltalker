Class {
	#name : #NYStyleCheesePizzaTest,
	#superclass : #TestCase,
	#category : #'Q052-Factory-Method'
}

{ #category : #tests }
NYStyleCheesePizzaTest >> testPrepare [
	| pizza |
	pizza := NYStyleCheesePizza new initialize.
	self assert: pizza name equals: 'NewYork Style Cheese Pizza'.
		
	pizza prepare.
	
	self assert: pizza dough class equals: ThinCraftDough.
	self assert: pizza sauce class equals: MarinaraSauce.
	self assert:
		((pizza toppings collect: [ :each | each class ]) includes:
			 NewYorkCheese)
]
