Class {
	#name : #SushiStore,
	#superclass : #Object,
	#instVars : [
		'factory'
	],
	#classInstVars : [
		'factory'
	],
	#category : #'My-Example005-1-Simple-Factory'
}

{ #category : #accessing }
SushiStore class >> factory: aFactory [
	^self new setFactory: aFactory
	
]

{ #category : #'as yet unclassified' }
SushiStore >> orderSushi: aSymbol [
	| sushi |
	sushi := factory createSushi: aSymbol.
	sushi prepare.
	sushi box.
	^ sushi
]

{ #category : #initialization }
SushiStore >> setFactory: aFactory [
	factory := aFactory.
	^self
	
]
