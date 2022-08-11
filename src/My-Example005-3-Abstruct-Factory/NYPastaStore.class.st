Class {
	#name : #NYPastaStore,
	#superclass : #PastaStore,
	#category : #'My-Example005-3-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
NYPastaStore >> createPasta: aSymbol [
	| factory |
	factory := NYIngredientFactory new.
	^#Cheese = aSymbol ifTrue: [ NYStyleCheesePasta factory: factory name: 'NewYork Style Cheese Pasta' ] ifFalse: [ Pizza new ]
]
