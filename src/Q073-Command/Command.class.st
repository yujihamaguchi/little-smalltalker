Class {
	#name : #Command,
	#superclass : #Object,
	#instVars : [
		'receiver'
	],
	#category : #'Q073-Command'
}

{ #category : #accessing }
Command class >> receiver: aReceiver [

	^ self new setReceiver: aReceiver
]

{ #category : #accessing }
Command >> action [

	^ self subclassResponsibility
]

{ #category : #execution }
Command >> execute [

	[ self action ]
		on: Exception
		do: [ :e | 
		Exception signal: 'Command failed because ' , e messageText ]
]

{ #category : #initialization }
Command >> setReceiver: aReceiver [

	receiver := aReceiver.
	^ self
]
