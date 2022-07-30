Class {
	#name : #NYPizzaStore,
	#superclass : #PizzaStore,
	#category : #'My-Example005-Factory'
}

{ #category : #tests }
NYPizzaStore >> createPizza: aSymbol [
	^#Cheese = aSymbol ifTrue: [ NYStyleCheesePizza construct ] ifFalse: [ nil ]
	
]
