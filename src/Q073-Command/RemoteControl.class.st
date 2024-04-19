Class {
	#name : #RemoteControl,
	#superclass : #Object,
	#instVars : [
		'buttonLayout',
		'undoCommand'
	],
	#category : #'Q073-Command'
}

{ #category : #initialization }
RemoteControl >> initialize [

	buttonLayout := Dictionary new
]

{ #category : #'as yet unclassified' }
RemoteControl >> pushOffButton: aSlotInteger [

	| command slot |
	slot := self slot: aSlotInteger.
	command := slot at: #off.
	undoCommand := slot at: #on.
	command execute
]

{ #category : #'as yet unclassified' }
RemoteControl >> pushOnButton: aSlotInteger [

	| command slot |
	slot := self slot: aSlotInteger.
	command := slot at: #on.
	undoCommand := slot at: #off.
	command execute
]

{ #category : #'as yet unclassified' }
RemoteControl >> pushUndoButton [

	undoCommand := self undoCommand.
	undoCommand execute
]

{ #category : #'as yet unclassified' }
RemoteControl >> slot: aSlotInteger [

	^ buttonLayout at: aSlotInteger ifAbsent: [ 
		  Exception signal:
			  'Any command is not assigned at slot: ' , aSlotInteger asString ]
]

{ #category : #'as yet unclassified' }
RemoteControl >> slot: anInteger onCommand: anOnCommand offCommand: anOffCommand [

	buttonLayout at: anInteger put: (Dictionary newFrom: { 
				 (#on -> anOnCommand).
				 (#off -> anOffCommand) })
]

{ #category : #accessing }
RemoteControl >> undoCommand [

	^ undoCommand
]
