Class {
	#name : #PizzaStore,
	#superclass : #Object,
	#category : #'My-Example005-2-Factory-Method'
}

{ #category : #tests }
PizzaStore >> createPizza: aSymbol [
	^self subclassResponsibility 
]

{ #category : #tests }
PizzaStore >> orderPizza: aSymbol [
	| pizza |
	pizza := self createPizza: aSymbol.
	pizza prepare.
	pizza bake.
	pizza cut.	
	pizza box.
	^pizza
]
