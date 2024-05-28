Class {
	#name : 'Caretaker',
	#superclass : 'Object',
	#instVars : [
		'mementos'
	],
	#category : 'Q150-Memento',
	#package : 'Q150-Memento'
}

{ #category : 'adding' }
Caretaker >> addMemento: aMemento [

	mementos add: aMemento
]

{ #category : 'initialization' }
Caretaker >> initialize [

	super initialize.
	mementos := OrderedCollection new.
	^ self
]

{ #category : 'accessing' }
Caretaker >> mementoAt: index [

	^ mementos at: index
]
