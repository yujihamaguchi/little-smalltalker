Class {
	#name : #PastaStore,
	#superclass : #Object,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
PastaStore >> createPasta: aSymbol [
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
PastaStore >> orderPasta: aSymbol [
	| pasta |
	pasta := self createPasta: aSymbol.
	pasta prepare.
	^ pasta
]
