Class {
	#name : #NYPizzaStore,
	#superclass : #PizzaStore,
	#category : #'Q052-Factory-Method'
}

{ #category : #tests }
NYPizzaStore >> createPizza: aSymbol [
	^#Cheese = aSymbol ifTrue: [ (NYStyleCheesePizza new) initialize ] ifFalse: [ nil ]
	
]
