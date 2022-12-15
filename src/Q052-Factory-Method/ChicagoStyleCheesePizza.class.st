Class {
	#name : #ChicagoStyleCheesePizza,
	#superclass : #Pizza,
	#category : #'Q052-Factory-Method'
}

{ #category : #'as yet unclassified' }
ChicagoStyleCheesePizza >> addToppings [
	toppings add: ChicagoCheese new.
	^ toppings 
]

{ #category : #'as yet unclassified' }
ChicagoStyleCheesePizza >> createDough [
	^ ThickCraftDough new
]

{ #category : #'as yet unclassified' }
ChicagoStyleCheesePizza >> createSauce [
	^ TomatoSauce new
]

{ #category : #initialization }
ChicagoStyleCheesePizza >> initialize [
	super initialize.
	name := 'Chicago Style Cheese Pizza'.
	^ self
]
