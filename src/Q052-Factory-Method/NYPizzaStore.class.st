Class {
	#name : #NYPizzaStore,
	#superclass : #PizzaStore,
	#category : #'Q052-Factory-Method'
}

{ #category : #'as yet unclassified' }
NYPizzaStore >> createPizza: aSymbol [
	^ #Cheese = aSymbol
		  ifTrue: [ NYStyleCheesePizza new ]
		  ifFalse: [ nil ]
]
