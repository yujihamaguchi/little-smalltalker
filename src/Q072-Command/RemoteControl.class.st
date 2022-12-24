Class {
	#name : #RemoteControl,
	#superclass : #Object,
	#instVars : [
		'slot',
		'undoCommand',
		'onCommands',
		'offCommands'
	],
	#category : #'Q072-Command'
}

{ #category : #'instance creation' }
RemoteControl class >> new [
	^ super basicNew initialize
]

{ #category : #initialization }
RemoteControl >> initialize [
	onCommands := Dictionary new.
	offCommands := Dictionary new.
	^ self
]

{ #category : #'as yet unclassified' }
RemoteControl >> offButtonWasPushed: aNumber [
	(offCommands at: 0) execute.
	undoCommand := onCommands at: aNumber.
]

{ #category : #'as yet unclassified' }
RemoteControl >> onButtonWasPushed: aNumber [
	(onCommands at: aNumber) execute.
	undoCommand := offCommands at: aNumber.
]

{ #category : #initialization }
RemoteControl >> slot: aNumber onCommand: anOnCommand offCommand: anOffCommand [
	onCommands at: aNumber put: anOnCommand.
	offCommands at: aNumber put: anOffCommand.
	^ self
]

{ #category : #'as yet unclassified' }
RemoteControl >> undoButtonPushed [
	undoCommand execute.
]
