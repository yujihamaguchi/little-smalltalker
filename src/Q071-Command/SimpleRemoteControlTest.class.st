Class {
	#name : #SimpleRemoteControlTest,
	#superclass : #TestCase,
	#category : #'Q071-Command'
}

{ #category : #tests }
SimpleRemoteControlTest >> testButtonWasPressed [
	| remote command |
	command := LightOnCommand receiver: Any.
	command stub execute willReturn: Any.
	remote := SimpleRemoteControl new.
	remote setCommand: command.
	remote buttonWasPressed.
	command should receive execute.
		
]
