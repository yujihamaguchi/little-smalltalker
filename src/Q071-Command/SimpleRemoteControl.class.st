Class {
	#name : #SimpleRemoteControl,
	#superclass : #Object,
	#instVars : [
		'command'
	],
	#category : #'Q071-Command'
}

{ #category : #'as yet unclassified' }
SimpleRemoteControl >> buttonWasPressed [
	command execute.
]

{ #category : #initialization }
SimpleRemoteControl >> setCommand: aCommand [
	command := aCommand

]
