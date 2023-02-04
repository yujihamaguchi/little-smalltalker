Class {
	#name : #LightOnCommandTest,
	#superclass : #TestCase,
	#category : #'Q071-Command'
}

{ #category : #tests }
LightOnCommandTest >> testExecute [

	| target light |
	light := Mock new.

	target := LightOnCommand receiver: light.

	target execute.

	light should receive on
]
