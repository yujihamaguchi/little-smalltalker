Class {
	#name : #SushiStore,
	#superclass : #Object,
	#instVars : [
		'factory'
	],
	#category : #'Q051-Simple-Factory'
}

{ #category : #initialize }
SushiStore class >> factory: aFactory [
	^ self new setFactory: aFactory
]

{ #category : #'as yet unclassified' }
SushiStore >> orderSushi: aSymbol [
	| sushi |
	sushi := factory createSushi: aSymbol.
	sushi prepare.
	sushi box.
	^ sushi
]

{ #category : #private }
SushiStore >> setFactory: aFactory [
	factory := aFactory.
	^ self
]
