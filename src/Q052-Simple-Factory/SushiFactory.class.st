Class {
	#name : #SushiFactory,
	#superclass : #Object,
	#category : #'Q052-Simple-Factory'
}

{ #category : #'as yet unclassified' }
SushiFactory >> createSushi: aSymbol [

	^ aSymbol caseOf: { 
			  (#Ikura -> Ikura new).
			  (#Norimaki -> Norimaki new) }
]
