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
MyCircle2 class >> source: aCircle [

	superclass source: aCircle.
	^ self new setRadius: aCircle radius.
	

	
]

{ #category : 'as yet unclassified' }
MyCircle2 >> myClone [

	^ MyCircle2 source: self 
]

{ #category : 'accessing' }
MyCircle2 >> radius [

	^ radius
]

{ #category : 'as yet unclassified' }
MyCircle2 >> radius: radiusNumber color: aSymbol [

	color := aSymbol.
	radius := radiusNumber
]

{ #category : 'accessing' }
MyCircle2 >> setRadius: anObject [

	radius := anObject.
	^ self
]
