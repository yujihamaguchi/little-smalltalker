Class {
	#name : #Command,
	#superclass : #Object,
	#instVars : [
		'receiver'
	],
	#category : #'Q071-Command'
}

{ #category : #accessing }
Command class >> receiver: aReceiver [
	| command |
	command := self new.
	command setReceiver: aReceiver.
	^ self
]

{ #category : #execution }
Command >> execute [
	^ self subclassResponsibility 
]

{ #category : #initialization }
Command >> setReceiver: aReceiver [
	receiver := aReceiver.
	^ self
]
