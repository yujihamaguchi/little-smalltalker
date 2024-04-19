Class {
	#name : #PrimePrice,
	#superclass : #Object,
	#traits : 'TPrice',
	#classTraits : 'TPrice classTrait',
	#instVars : [
		'value'
	],
	#category : #'Q040-Decorator'
}

{ #category : #accessing }
PrimePrice class >> value: aValue [

	^ self new setValue: aValue
]

{ #category : #initialization }
PrimePrice >> setValue: aValue [

	value := aValue.
	^ self
]

{ #category : #accessing }
PrimePrice >> value [

	^ value
]
