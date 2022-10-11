Class {
	#name : #NYStyleCheesePizza,
	#superclass : #Pizza,
	#category : #'Q052-Factory-Method'
}

{ #category : #initialization }
NYStyleCheesePizza >> initialize [ 
	name := 'NewYork Style Cheese Pizza'.
	^ self
]

{ #category : #decoration }
NYStyleCheesePizza >> prepare [
	dough := ThinCraftDough new.
	sauce := MarinaraSauce new.
	toppings ifNil: [ toppings := Set new ].
	toppings add: NewYorkCheese new.
	^ self

]
