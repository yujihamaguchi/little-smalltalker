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
MyShape class >> source: aShape [

	^ self subclassResponsibility 


]

{ #category : 'private' }
MyShape >> color [

	^ color
]

{ #category : 'private' }
MyShape >> color: aSymbol [

	color := aSymbol
]

{ #category : 'as yet unclassified' }
MyShape >> myClone [

	^ self subclassResponsibility 
]
