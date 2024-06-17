Class {
	#name : 'MyShape',
	#superclass : 'Object',
	#instVars : [
		'color'
	],
	#classInstVars : [
		'color'
	],
	#category : 'Q180-Prototype',
	#package : 'Q180-Prototype'
}

{ #category : 'accessing' }
MyShape class >> source: aSource [
]

{ #category : 'private' }
MyShape >> color [

	^ color
]

{ #category : 'as yet unclassified' }
MyShape >> myClone [

	^ self subclassResponsibility 
]
