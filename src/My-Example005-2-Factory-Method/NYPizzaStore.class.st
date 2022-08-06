Class {
	#name : #NYPizzaStore,
	#superclass : #PizzaStore,
	#category : #'My-Example005-2-Factory-Method'
}

{ #category : #tests }
NYPizzaStore >> createPizza: aSymbol [
	^#Cheese = aSymbol ifTrue: [ (NYStyleCheesePizza new) initialize ] ifFalse: [ nil ]
	
]
