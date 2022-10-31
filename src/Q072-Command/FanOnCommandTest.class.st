Class {
	#name : #FanOnCommandTest,
	#superclass : #TestCase,
	#category : #'Q072-Command'
}

{ #category : #tests }
FanOnCommandTest >> testExecute [
	| onCommand fan |
	fan := Fan new.
	fan stub on willReturnYourself.
	onCommand := FanOnCommand fan: fan.
	onCommand execute.
	fan should receive on once
]
