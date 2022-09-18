Class {
	#name : #SimpleSushiFactory,
	#superclass : #Object,
	#category : #'Q051-Simple-Factory'
}

{ #category : #'as yet unclassified' }
SimpleSushiFactory >> createSushi: aSymbol [
	^ #Ikura = aSymbol
		  ifTrue: [ Ikura new ]
		  ifFalse: [ Sushi new ]
]
