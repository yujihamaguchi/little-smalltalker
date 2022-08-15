Class {
	#name : #LightOnCommand,
	#superclass : #Command,
	#category : #'My-Example007-Command'
}

{ #category : #'instance creation' }
LightOnCommand class >> light: aLight [
	| lightOnCommand |
	lightOnCommand := self new.
	^ lightOnCommand setLight: aLight
]

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
