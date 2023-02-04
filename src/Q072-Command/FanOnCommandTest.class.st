Class {
	#name : #FanOnCommandTest,
	#superclass : #TestCase,
	#category : #'Q072-Command'
}

{ #category : #tests }
FanOnCommandTest >> testExecute [
	| target fan |
	fan := Mock new.
	target := FanOnCommand fan: fan.

	target execute.

	fan should receive on once
]
