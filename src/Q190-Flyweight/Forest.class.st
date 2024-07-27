Class {
	#name : 'Forest',
	#superclass : 'Object',
	#instVars : [
		'trees'
	],
	#category : 'Q190-Flyweight',
	#package : 'Q190-Flyweight'
}

{ #category : 'drawing' }
Forest >> draw [
]

{ #category : 'initialization' }
Forest >> initialize [

	trees := OrderedCollection new.
	^ self
]

{ #category : 'as yet unclassified' }
Forest >> plantTreeAtX: xNumber atY: yNumber name: nameSymbol color: colorSymbol texture: textureSymbol [

	| treeType tree |
	treeType := TreeFactory
		            treeTypeWithName: nameSymbol
		            color: colorSymbol
		            texture: textureSymbol.
	tree := Tree atX: xNumber atY: yNumber type: treeType.
	self trees add: tree
]

{ #category : 'as yet unclassified' }
Forest >> trees [
	^ trees
]
