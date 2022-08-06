Class {
	#name : #NYStyleCheesePizza,
	#superclass : #Pizza,
	#category : #'My-Example005-Factory-Method-My-Example005-Factory-Method'
}

{ #category : #initialization }
NYStyleCheesePizza >> initialize [
	super initialize .
	name := 'NewYork Style Cheese Pizza'.
	dough := 'thin craft'.
	sauce := 'marinara'.
	toppings := Array with: 'NewYork Cheese'.
	^self
]
