Class {
	#name : #RemoteControlTest,
	#superclass : #TestCase,
	#category : #'Q073-Command-Tests'
}

{ #category : #tests }
RemoteControlTest >> testPushButtonOfCommandUnassignedSlot [

	| raisedException slotIndex remoteControl |
	"Arrange"
	slotIndex := 0.
	remoteControl := RemoteControl new.

	"Act"
	[ remoteControl pushOnButton: slotIndex ]
		on: Exception
		do: [ :e | raisedException := e messageText ].

	"Assert"
	self
		assert: raisedException
		equals: 'Any command is not assigned at slot: ' , slotIndex asString
]

{ #category : #tests }
RemoteControlTest >> testPushOffButton [

	| slotIndex offCommand remoteControl onCommand |
	"Arrange"
	slotIndex := Mock new.
	onCommand := Mock new.
	offCommand := Mock new.
	offCommand stub execute willReturnYourself.
	remoteControl := RemoteControl new
		                 slot: slotIndex
		                 onCommand: onCommand
		                 offCommand: offCommand.

	"Act"
	remoteControl pushOffButton: slotIndex.

	"Assert"
	self assert: remoteControl undoCommand equals: onCommand.
	offCommand should receive execute
]

{ #category : #tests }
RemoteControlTest >> testPushOnButton [

	| remoteControl slotIndex onCommand offCommand |
	"Arrange"
	slotIndex := Mock new.
	onCommand := Mock new.
	offCommand := Mock new.
	onCommand stub execute willReturnYourself.
	remoteControl := RemoteControl new
		                 slot: slotIndex
		                 onCommand: onCommand
		                 offCommand: offCommand.

	"Act"
	remoteControl pushOnButton: slotIndex.

	"Assert"
	self assert: remoteControl undoCommand equals: offCommand.
	onCommand should receive execute
]

{ #category : #tests }
RemoteControlTest >> testPushUndoButton [

	| remoteControl undoCommand |
	undoCommand := Mock new.
	remoteControl := RemoteControl new.
	remoteControl stub undoCommand willReturn: undoCommand.
	
	"Act"
	remoteControl pushUndoButton.

	"Assert"
	remoteControl should receive undoCommand.
	undoCommand should receive execute
]
