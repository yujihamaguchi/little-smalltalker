Class {
	#name : #SushiRestaurant,
	#superclass : #Object,
	#instVars : [
		'factory'
	],
	#category : #'Q052-Simple-Factory'
}

{ #category : #initialize }
SushiRestaurant class >> factory: aSushiFactory [

	^ self new setFactory: aSushiFactory
]

{ #category : #'as yet unclassified' }
SushiRestaurant >> orderSushi: aSymbol [

	| sushi |
	sushi := factory createSushi: aSymbol.
	^ sushi prepare box

]

{ #category : #initialization }
SushiRestaurant >> setFactory: aSushiFactory [

	factory := aSushiFactory.
	^ self
]
