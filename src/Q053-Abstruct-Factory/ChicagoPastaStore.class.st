Class {
	#name : #ChicagoPastaStore,
	#superclass : #PastaStore,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
ChicagoPastaStore >> createPasta: aSymbol [
	^ #Cheese = aSymbol
		  ifTrue: [ ChicagoCheesePasta new ]
		  ifFalse: [ nil ]
]
