Class {
	#name : #NYStyleCheesePizza,
	#superclass : #Pizza,
	#category : #'My-Example005-2-Factory-Method'
}

{ #category : #decoration }
NYStyleCheesePizza >> prepare [
	dough := ThinCraftDough new.
	sauce := MarinaraSauce new.
	toppings := Array with: NewYorkCheese new.
	^ self 
]
