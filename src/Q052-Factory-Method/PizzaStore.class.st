Class {
	#name : #PizzaStore,
	#superclass : #Object,
	#category : #'Q052-Factory-Method'
}

{ #category : #'as yet unclassified' }
PizzaStore >> createPizza: aSymbol [
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
PizzaStore >> orderPizza: aSymbol [
	| pizza |
	pizza := self createPizza: aSymbol.
	^ pizza prepare bake cut box
	
]
