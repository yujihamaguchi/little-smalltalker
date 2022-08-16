Class {
	#name : #RemoteControl,
	#superclass : #Object,
	#instVars : [
		'onCommands',
		'offCommands'
	],
	#category : #'My-Example007-2-Command'
}

{ #category : #'instance creation' }
RemoteControl class >> new [
	^ self basicNew initialize
]

{ #category : #initialization }
RemoteControl >> initialize [
	onCommands := Dictionary new.
	offCommands := Dictionary new.
]

{ #category : #'as yet unclassified' }
RemoteControl >> offButtonWasPushed: aNumber [
	(offCommands at: aNumber) execute
]

{ #category : #'as yet unclassified' }
RemoteControl >> onButtonWasPushed: aNumber [
	(onCommands at: aNumber) execute
]

{ #category : #'as yet unclassified' }
RemoteControl >> slot: aNumber onCommand: anOnCommand offCommand: anOffCommand [
	onCommands at: aNumber put: anOnCommand.
	offCommands at: aNumber put: anOffCommand
]
