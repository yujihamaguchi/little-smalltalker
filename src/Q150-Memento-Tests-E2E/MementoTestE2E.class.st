Class {
	#name : 'MementoTestE2E',
	#superclass : 'TestCase',
	#category : 'Q150-Memento-Tests-E2E',
	#package : 'Q150-Memento-Tests-E2E'
}

{ #category : 'tests' }
MementoTestE2E >> testRestoreFromMemento [

	| originator caretaker result |
	"Arrange"
	originator := Originator new.
	caretaker := Caretaker new.
	originator set: #state1.
	originator set: #state2.
	caretaker addMemento: originator seveToMemento.
	originator set: #state3.
	caretaker addMemento: originator seveToMemento.
	originator set: #state4.

	"Act"
	result := originator restoreFromMemento: (caretaker memento: 1).

	"Assert"
	self assert: result equals: #state3
]
