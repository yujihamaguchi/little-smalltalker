Class {
	#name : #ToyosuSushiFactory,
	#superclass : #SushiFactory,
	#category : #'My-Example005-1-Simple-Factory'
}

{ #category : #'as yet unclassified' }
ToyosuSushiFactory >> createSushi: aSymbol [
	^ #Ikura = aSymbol
		  ifTrue: [ Ikura new ]
		  ifFalse: [ Sushi new ]
]
