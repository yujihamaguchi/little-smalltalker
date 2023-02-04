Class {
	#name : #SimpleRemoteControlTest,
	#superclass : #TestCase,
	#category : #'Q071-Command'
}

{ #category : #tests }
SimpleRemoteControlTest >> testButtonWasPressed [
	| target command |
	command := Mock new.

	target := SimpleRemoteControl new.
	target setCommand: command.

	target buttonWasPressed.

	command should receive execute
]
