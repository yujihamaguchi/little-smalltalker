Class {
	#name : 'Originator',
	#superclass : 'Object',
	#instVars : [
		'state'
	],
	#category : 'Q150-Memento',
	#package : 'Q150-Memento'
}

{ #category : 'as yet unclassified' }
Originator >> memento [
	
	| memento |
	memento := Memento new.
	memento state: self state.
	^ memento
]

{ #category : 'as yet unclassified' }
Originator >> restoreFrom: aMemento [

	self state: aMemento state
]

{ #category : 'accessing' }
Originator >> state [

	^ state
]

{ #category : 'accessing - structure variables' }
Originator >> state: aSymbol [

	state := aSymbol
]
