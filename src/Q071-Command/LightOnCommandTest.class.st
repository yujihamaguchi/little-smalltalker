Class {
	#name : #LightOnCommandTest,
	#superclass : #TestCase,
	#category : #'Q071-Command'
}

{ #category : #tests }
LightOnCommandTest >> testExecute [

	| lightOnCommand light |
	light := Mock new.

	lightOnCommand := LightOnCommand receiver: light.

	lightOnCommand execute.

	light should receive on
]
