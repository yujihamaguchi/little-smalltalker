Class {
	#name : #State,
	#superclass : #Object,
	#instVars : [
		'machine'
	],
	#category : #'Q100-State'
}

{ #category : #action }
State >> ejectCoin [
	^ self subclassResponsibility 
]

{ #category : #action }
State >> insertCoin [
	^ self subclassResponsibility 
]

{ #category : #initialization }
State >> setMachine: aMachine [
	machine := aMachine.
]

{ #category : #action }
State >> turnCrank [
	^ self subclassResponsibility 
]
