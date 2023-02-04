Class {
	#name : #RemoteControlTest,
	#superclass : #TestCase,
	#category : #'Q072-Command'
}

{ #category : #tests }
RemoteControlTest >> testButtonWasPushed [
	| target onCommand1 onCommand2 offCommand2 |
	target := RemoteControl new.

	onCommand1 := Mock new.
	target slot: 0 onCommand: onCommand1 offCommand: Any.

	onCommand2 := Mock new.
	offCommand2 := Mock new.
	target slot: 1 onCommand: onCommand2 offCommand: offCommand2.

	target onButtonWasPushed: 0.
	onCommand1 should receive execute once.

	target onButtonWasPushed: 1.
	onCommand2 should receive execute once.

	target offButtonWasPushed: 1.
	offCommand2 should receive execute once.

	target undoButtonPushed.
	onCommand2 should receive execute twice
]
