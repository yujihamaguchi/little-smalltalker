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
	^ (self createPasta: aSymbol) prepare
]
