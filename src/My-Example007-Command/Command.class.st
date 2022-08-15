Class {
	#name : #Command,
	#superclass : #Object,
	#instVars : [
		'receiver'
	],
	#category : #'My-Example007-Command'
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
