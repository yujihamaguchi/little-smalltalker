Class {
	#name : #GumballMachine,
	#superclass : #Object,
	#instVars : [
		'remain',
		'state'
	],
	#category : #'Q100-State'
}

{ #category : #initialization }
GumballMachine class >> initialize [
	| machine |
	machine := self new.
	^ machine setState: (NoCoin new setMachine: machine) remain: 5
]

{ #category : #'as yet unclassified' }
GumballMachine >> dispense [
	remain := remain - 1.
]

{ #category : #'as yet unclassified' }
GumballMachine >> ejectCoin [
	self state ejectCoin.
]

{ #category : #'as yet unclassified' }
GumballMachine >> insertCoin [
	self state insertCoin 
]

{ #category : #'as yet unclassified' }
GumballMachine >> remain [
	^ remain
]

{ #category : #initialization }
GumballMachine >> setState: aString remain: aNumber [
	state := aString.
	remain := aNumber.
	^ self
]

{ #category : #'accessing - structure variables' }
GumballMachine >> state [
	^ state
]

{ #category : #accessing }
GumballMachine >> state: aState [
	state := aState.
]

{ #category : #'as yet unclassified' }
GumballMachine >> turnCrank [
	self state turnCrank 
]
