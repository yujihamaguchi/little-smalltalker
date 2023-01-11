Class {
	#name : #ChicagoStyleCheesePizza,
	#superclass : #Pizza,
	#category : #'Q052-Factory-Method'
}

{ #category : #adding }
ChicagoStyleCheesePizza >> addToppings [
	toppings add: ChicagoCheese new
]

{ #category : #'as yet unclassified' }
ChicagoStyleCheesePizza >> createDough [
	^ ThickCraftDough new
]
