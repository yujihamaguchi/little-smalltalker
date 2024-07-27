Class {
	#name : 'Tree',
	#superclass : 'Object',
	#instVars : [
		'x',
		'y',
		'type'
	],
	#category : 'Q190-Flyweight',
	#package : 'Q190-Flyweight'
}

{ #category : 'accessing' }
Tree class >> atX: xNumber atY: yNumber type: aTreeType [

	^ self new setX: xNumber y: yNumber type: aTreeType
]

{ #category : 'initialization' }
Tree >> setX: xNumber y: yNumber type: aTreeType [

	x := xNumber.
	y := yNumber.
	type := aTreeType.
	^ self
]

{ #category : 'as yet unclassified' }
Tree >> type [

	^ type
]
