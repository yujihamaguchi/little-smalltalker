Class {
	#name : #SimpleRemoteControl,
	#superclass : #Object,
	#instVars : [
		'slot'
	],
	#category : #'My-Example007-1-Command'
}

{ #category : #'as yet unclassified' }
SimpleRemoteControl >> buttonWasPressed [
	slot execute
]

{ #category : #initialization }
SimpleRemoteControl >> command: aCommand [
	slot := aCommand
]
