Class {
	#name : #NYPastaStore,
	#superclass : #PastaStore,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
NYPastaStore >> createPasta: aSymbol [
	^ #Cheese = aSymbol ifTrue: [ NYStyleCheesePasta new ] ifFalse: [ nil ]
]
