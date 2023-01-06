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
	^ (factory createSushi: aSymbol) prepare box
]

{ #category : #initialization }
SushiStore >> setFactory: aFactory [
	factory := aFactory.
	^ self
]
