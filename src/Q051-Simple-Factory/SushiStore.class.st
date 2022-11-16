Class {
	#name : #SushiStore,
	#superclass : #Object,
	#instVars : [
		'factory'
	],
	#category : #'Q051-Simple-Factory'
}

{ #category : #'as yet unclassified' }
SushiStore class >> factory: aFactory [
	^ self new setFactory: aFactory
]

{ #category : #'as yet unclassified' }
SushiStore >> orderSushi: aSymbol [
	| sushi |
	sushi := factory createSushi: aSymbol.
	^ sushi prepare box
]

{ #category : #initialization }
SushiStore >> setFactory: aFactory [
	factory := aFactory.
	^ self
]
