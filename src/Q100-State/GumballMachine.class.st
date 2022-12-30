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
	^ self new setCount: 5 state: NoCoin new
]

{ #category : #accessing }
GumballMachine >> count [

	^ count
]

{ #category : #'as yet unclassified' }
GumballMachine >> dispense [
	count := count - 1.
]

{ #category : #'as yet unclassified' }
GumballMachine >> ejectCoin [
	state ejectCoin: self.
]

{ #category : #'as yet unclassified' }
GumballMachine >> insertCoin [
	state insertCoin: self.
]

{ #category : #initialization }
GumballMachine >> setCount: aNumber state: aState [
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
	state := aState.
]

{ #category : #accessing }
GumballMachine >> turnCrank [
	state turnCrank: self
]
