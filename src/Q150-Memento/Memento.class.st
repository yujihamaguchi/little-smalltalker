Class {
	#name : 'Memento',
	#superclass : 'Object',
	#instVars : [
		'state'
	],
	#category : 'Q150-Memento',
	#package : 'Q150-Memento'
}

{ #category : 'accessing' }
Memento >> state [

	^ state
]

{ #category : 'accessing' }
Memento >> state: aSymbol [

	state := aSymbol
]
