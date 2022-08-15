Class {
	#name : #RemoteControl,
	#superclass : #Object,
	#instVars : [
		'slots'
	],
	#category : #'My-Example007-Command'
}

{ #category : #'as yet unclassified' }
RemoteControl >> offButtonWasPushed: aNumber [
	^ self
]

{ #category : #'as yet unclassified' }
RemoteControl >> onButtonWasPushed: aNumber [
	| slot |
	slot := slots at: aNumber.
	slot execute.
	
]
