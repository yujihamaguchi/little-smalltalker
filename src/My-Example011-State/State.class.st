Class {
	#name : #State,
	#superclass : #Object,
	#instVars : [
		'machine'
	],
	#category : #'My-Example011-State'
}

{ #category : #'as yet unclassified' }
State class >> machine: aMachine [
	^ self new setMachine: aMachine
]

{ #category : #'as yet unclassified' }
State >> ejectCoin [
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
State >> insertCoin [ 
	^ self subclassResponsibility 
]

{ #category : #initialization }
State >> setMachine: aMachine [
	machine := aMachine.
	^ self
]

{ #category : #'as yet unclassified' }
State >> turnCrank [
	^ self subclassResponsibility 
]
