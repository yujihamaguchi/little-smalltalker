Class {
	#name : #NYStyleCheesePizza,
	#superclass : #Pizza,
	#category : #'Q052-Factory-Method'
}

{ #category : #decoration }
NYStyleCheesePizza >> prepare [
	dough := ThinCraftDough new.
	sauce := MarinaraSauce new.
	toppings := Array with: NewYorkCheese new.
	^ self 
]
