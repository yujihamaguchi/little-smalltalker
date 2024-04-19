Class {
	#name : #WholesalePrice,
	#superclass : #MarginPrice,
	#traits : 'TPrice',
	#classTraits : 'TPrice classTrait',
	#instVars : [
		'advantage'
	],
	#category : #'Q040-Decorator'
}

{ #category : #'as yet unclassified' }
WholesalePrice class >> price: aPrice advantage: anInteger [

	^ self new setPrice: aPrice advantage: anInteger
]

{ #category : #initialization }
WholesalePrice >> setPrice: aPrice advantage: anInteger [

	originalPrice := aPrice.
	advantage := anInteger .
	^ self
]

{ #category : #accessing }
WholesalePrice >> value [

	^ originalPrice value + advantage
]
