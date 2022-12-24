Class {
	#name : #RemoteControlTest,
	#superclass : #TestCase,
	#category : #'Q072-Command'
}

{ #category : #tests }
RemoteControlTest >> testButtonWasPushed [
	| target onCommand offCommand |
	target := RemoteControl new.
	onCommand := Mock new.
	offCommand := Mock new.
	target slot: 0 onCommand: onCommand offCommand: offCommand.

	target onButtonWasPushed: 0.
	onCommand should receive execute once.

	target offButtonWasPushed: 0.
	offCommand should receive execute once.

	target undoButtonPushed.
	onCommand should receive execute twice.


]
