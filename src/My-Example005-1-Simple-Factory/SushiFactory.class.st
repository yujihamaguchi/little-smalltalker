Class {
	#name : #SushiFactory,
	#superclass : #Object,
	#category : #'My-Example005-1-Simple-Factory'
}

{ #category : #'as yet unclassified' }
SushiFactory >> createSushi: aSymbol [
	^ self subclassResponsibility 
]
