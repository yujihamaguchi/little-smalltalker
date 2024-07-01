Class {
	#name : 'MyCircle2',
	#superclass : 'MyShape',
	#instVars : [
		'radius'
	],
	#category : 'Q180-Prototype',
	#package : 'Q180-Prototype'
}

{ #category : 'accessing' }
MyCircle2 class >> radius: aNumber [

	^ self new setRadius: aNumber
]

{ #category : 'accessing' }
MyCircle2 class >> source: aCircle [

	| circle |
	circle := self radius: aCircle radius.
	circle color: aCircle color.
	^ circle
]

{ #category : 'comparing' }
MyCircle2 >> = aCircle [

	^ self radius = aCircle radius and: self color = aCircle color
]

{ #category : 'as yet unclassified' }
MyCircle2 >> myClone [

	^ self class source: self 
]

{ #category : 'accessing' }
MyCircle2 >> radius [

	^ radius
]

{ #category : 'initialization' }
MyCircle2 >> setRadius: anObject [

	radius := anObject.
	^ self
]
