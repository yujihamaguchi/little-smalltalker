Class {
	#name : #SimpleSushiFactory,
	#superclass : #Object,
	#category : #'My-Example005-1-Simple-Factory'
}

{ #category : #'as yet unclassified' }
SimpleSushiFactory >> createSushi: aSymbol [
	^ #Ikura = aSymbol
		  ifTrue: [ Ikura new ]
		  ifFalse: [ Sushi new ]
]
