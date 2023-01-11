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

	^ (self createPizza: aSymbol) prepare bake cut box
]
