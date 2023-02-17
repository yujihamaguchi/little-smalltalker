Class {
	#name : #GumballMachine,
	#superclass : #Object,
	#instVars : [
		'count',
		'state'
	],
	#category : #'Q100-State'
}

{ #category : #initialization }
GumballMachine class >> initialize [
	^ self new setState: NoCoin new count: 5
]

{ #category : #accessing }
GumballMachine >> count [

	^ count
]

{ #category : #'as yet unclassified' }
GumballMachine >> dispense [
	count := count - 1
]

{ #category : #'as yet unclassified' }
GumballMachine >> ejectCoin [
	state ejectCoin: self
]

{ #category : #'as yet unclassified' }
GumballMachine >> insertCoin [
	state insertCoin: self
]

{ #category : #initialization }
GumballMachine >> setState: aState count: aNumber [
	count := aNumber.
	state := aState.
	^ self
]

{ #category : #accessing }
GumballMachine >> state [

	^ state
]

{ #category : #accessing }
GumballMachine >> state: aState [

	state := aState
]

{ #category : #'as yet unclassified' }
GumballMachine >> turnCrank [
	state turnCrank: self

]
