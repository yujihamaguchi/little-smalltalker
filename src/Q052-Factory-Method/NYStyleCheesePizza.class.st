Class {
	#name : #NYStyleCheesePizza,
	#superclass : #Pizza,
	#category : #'Q052-Factory-Method'
}

{ #category : #'as yet unclassified' }
NYStyleCheesePizza >> addToppings [
	toppings add: NewYorkCheese new.
	^ toppings 
]

{ #category : #'as yet unclassified' }
NYStyleCheesePizza >> createDough [
	^ ThinCraftDough new
]

{ #category : #'as yet unclassified' }
NYStyleCheesePizza >> createSauce [
	^ MarinaraSauce new
]

{ #category : #initialization }
NYStyleCheesePizza >> initialize [
	super initialize.
	name := 'NewYork Style Cheese Pizza'.
	^ self
]
