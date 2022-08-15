Class {
	#name : #SimpleRemoteControlTest,
	#superclass : #TestCase,
	#category : #'My-Example007-Command'
}

{ #category : #tests }
SimpleRemoteControlTest >> testButtonWasPressed [
	| remote light command |
	remote := SimpleRemoteControl new.
	light := Light new.
	light stub.
	command := LightOnCommand light: light.
	command stub.
	remote command: command.
	remote buttonWasPressed.
	command should receive execute.
	light should receive on.
	
	
]
