Class {
	#name : #NYStyleCheesePizza,
	#superclass : #Pizza,
	#category : #'My-Example005-Factory'
}

{ #category : #'as yet unclassified' }
NYStyleCheesePizza class >> construct [
	^self new
		setName: 'NewYork Style Cheese Pizza'
		dough: 'thin craft'
		sauce: 'marinara'
		toppings: (Array with: 'NewYork Cheese')

]
