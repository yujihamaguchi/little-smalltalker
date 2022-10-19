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
	^ self new setReceiver: aReceiver
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
