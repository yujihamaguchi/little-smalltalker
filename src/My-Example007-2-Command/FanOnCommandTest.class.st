Class {
	#name : #FanOnCommandTest,
	#superclass : #TestCase,
	#category : #'My-Example007-2-Command'
}

{ #category : #tests }
FanOnCommandTest >> testExecute [
	| onCommand fan |
	fan := Fan new.
	fan stub on.
	onCommand := FanOnCommand fan: fan.
	onCommand execute.
	fan should receive on once.
]
