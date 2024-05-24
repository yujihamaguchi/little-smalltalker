Class {
	#name : 'Memento',
	#superclass : 'Object',
	#instVars : [
		'state'
	],
	#category : 'Q150-Memento',
	#package : 'Q150-Memento'
}

{ #category : 'accessing - structure variables' }
Memento >> state [

	^ state
]

{ #category : 'accessing' }
Memento >> state: aState [

	state := aState
]
