Class {
	#name : 'TreeFactory',
	#superclass : 'Object',
	#instVars : [
		'name',
		'color',
		'texture'
	],
	#category : 'Q190-Flyweight',
	#package : 'Q190-Flyweight'
}

{ #category : 'as yet unclassified' }
TreeFactory class >> treeTypeWithName: nameSymbol color: colorSymbol texture: textureSymbol [

	^ self new
		  setName: nameSymbol
		  color: colorSymbol
		  texture: textureSymbol
]

{ #category : 'initialization' }
TreeFactory >> setName: nameSymbol color: colorSymbol texture: textureSymbol [

	name := nameSymbol.
	color := colorSymbol.
	texture := textureSymbol.
	^ self
]
