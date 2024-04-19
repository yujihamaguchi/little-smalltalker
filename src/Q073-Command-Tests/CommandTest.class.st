Class {
	#name : #CommandTest,
	#superclass : #TestCase,
	#category : #'Q073-Command-Tests'
}

{ #category : #tests }
CommandTest >> testExecuteWhenReceiverThrowsException [

	| command raisedException exception messageText |
	"Arrange"
	exception := Exception new.
	messageText := 'receiver raised an exception'.
	exception stub messageText willReturn: messageText.

	command := Command receiver: Mock new.
	command stub action willRaise: exception.

	"Act"
	[ command execute ]
		on: Exception
		do: [ :e | raisedException := e ].

	"Assert"
	self
		assert: raisedException messageText
		equals: 'Command failed because ' , messageText
]
