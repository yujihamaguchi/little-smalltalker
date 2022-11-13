Class {
	#name : #GumballMachine,
	#superclass : #Object,
	#instVars : [
		'state',
		'count',
		'noCoinState',
		'hasCoinState',
		'soldOutState'
	],
	#category : #'Q100-State'
}

{ #category : #initialization }
GumballMachine class >> initialize [
	| machine |
	machine := self new.
	^ machine setCount: 5.
]

{ #category : #accessing }
GumballMachine >> count [
	^ count
]

{ #category : #accessing }
GumballMachine >> count: aNumber [
	count := aNumber.
	
]

{ #category : #action }
GumballMachine >> ejectCoin [ 
	state ejectCoin.
]

{ #category : #accessing }
GumballMachine >> hasCoinState [
	^ hasCoinState 
]

{ #category : #action }
GumballMachine >> insertCoin [
	state insertCoin.
]

{ #category : #accessing }
GumballMachine >> noCoinState [
	^ noCoinState 
]

{ #category : #'as yet unclassified' }
GumballMachine >> releaseBall [
	count := count - 1.
]

{ #category : #initialization }
GumballMachine >> setCount: aNumber [
	count := aNumber.
	noCoinState := NoCoin new setMachine: self.
	hasCoinState := HasCoin new setMachine: self.
	soldOutState := SoldOut new setMachine: self.
	state := 	noCoinState.
	^ self
]

{ #category : #accessing }
GumballMachine >> soldOutState [
	^ soldOutState 
]

{ #category : #accessing }
GumballMachine >> state [
	^ state
]

{ #category : #accessing }
GumballMachine >> state: aState [
	state := aState.
]

{ #category : #action }
GumballMachine >> turnCrank [
	state turnCrank.
]
