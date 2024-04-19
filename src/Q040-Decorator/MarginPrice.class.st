Class {
	#name : #MarginPrice,
	#superclass : #Object,
	#traits : 'TPrice',
	#classTraits : 'TPrice classTrait',
	#instVars : [
		'originalPrice'
	],
	#category : #'Q040-Decorator'
}

{ #category : #'as yet unclassified' }
MarginPrice class >> price: aPrice [

	^ self new setPrice: aPrice
]

{ #category : #initialization }
MarginPrice >> setPrice: aPrice [

	originalPrice := aPrice.
	^ self
]
