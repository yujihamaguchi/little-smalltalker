Class {
	#name : #LightOnCommand,
	#superclass : #Command,
	#category : #'Q071-Command'
}

{ #category : #'instance creation' }
LightOnCommand class >> receiver: aReceiver [
	| lightOnCommand |
	lightOnCommand := self new.
	^ lightOnCommand setReceiver: aReceiver
]

{ #category : #execution }
LightOnCommand >> execute [
	receiver on
]
