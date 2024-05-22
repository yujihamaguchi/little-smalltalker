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
	caretaker := Caretaker new.
	
	originator := Originator new.
	originator set: #state1.
	originator set: #state2.
	caretaker addMemento: originator memento.
	originator set: #state3.
	caretaker addMemento: originator memento.
	originator set: #state4.

	"Act"
	result := originator restoreFrom: (caretaker mementoAt: 1).

	"Assert"
	self assert: result equals: #state3
]
