Class {
	#name : #LightOnCommandTest,
	#superclass : #TestCase,
	#category : #'Q071-Command'
}

{ #category : #tests }
LightOnCommandTest >> testExecute [
	| lightOnCommand light |
	light := Light new.
	light stub.
	lightOnCommand := LightOnCommand receiver: light.
	lightOnCommand execute.
	light should receive on.
]
