Class {
	#name : #NYStyleCheesePizza,
	#superclass : #Pizza,
	#category : #'Q052-Factory-Method'
}

{ #category : #adding }
NYStyleCheesePizza >> addToppings [
	toppings add: NewYorkCheese new
]

{ #category : #'as yet unclassified' }
NYStyleCheesePizza >> createDough [
	^ ThinCraftDough new
]
