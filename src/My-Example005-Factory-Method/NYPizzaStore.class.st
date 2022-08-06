Class {
	#name : #NYPizzaStore,
	#superclass : #PizzaStore,
	#category : #'My-Example005-Factory-Method-My-Example005-Factory-Method'
}

{ #category : #tests }
NYPizzaStore >> createPizza: aSymbol [
	^#Cheese = aSymbol ifTrue: [ (NYStyleCheesePizza new) initialize ] ifFalse: [ nil ]
	
]
