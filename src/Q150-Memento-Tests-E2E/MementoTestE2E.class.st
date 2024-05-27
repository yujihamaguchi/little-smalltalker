Class {
	#name : 'MementoTestE2E',
	#superclass : 'TestCase',
	#category : 'Q150-Memento-Tests-E2E',
	#package : 'Q150-Memento-Tests-E2E'
}

{ #category : 'tests' }
MementoTestE2E >> testRestoreFromMemento [

	| originator caretaker memento |
	"Arrange"
	caretaker := Caretaker new.

	originator := Originator new.
	originator state: #state1.
	originator state: #state2.
	caretaker addMemento: originator memento.
	originator state: #state3.
	caretaker addMemento: originator memento.
	originator state: #state4.

	"Act"
	memento := caretaker mementoAt: 2.
	originator restoreFrom: memento.

	"Assert"
	self assert: originator state equals: #state3
]
