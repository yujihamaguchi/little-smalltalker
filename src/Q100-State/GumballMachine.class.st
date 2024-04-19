Class {
	#name : #GumballMachine,
	#superclass : #Object,
	#instVars : [
		'count',
		'state',
		'printer'
	],
	#category : #'Q100-State'
}

{ #category : #'instance creation' }
GumballMachine class >> new [
	^ self basicNew initialize
]

{ #category : #'as yet unclassified' }
GumballMachine class >> printer: aPrinter [

	^ self new setPrinter: aPrinter
]

{ #category : #accessing }
GumballMachine >> count [

	^ count
]

{ #category : #private }
GumballMachine >> decrease [

	count := count - 1
]

{ #category : #'as yet unclassified' }
GumballMachine >> ejectCoin [

	self state ejectCoin: self
]

{ #category : #initialization }
GumballMachine >> initialize [

	count := 5.
	state := NoCoin new.
	^ self
]

{ #category : #'as yet unclassified' }
GumballMachine >> insertCoin [

	self state insertCoin: self
]

{ #category : #accessing }
GumballMachine >> printer [

	^ printer
]

{ #category : #initialization }
GumballMachine >> setPrinter: aPrinter [

	printer := aPrinter.
	^ self
]

{ #category : #accessing }
GumballMachine >> state [

	^ state
]

{ #category : #accessing }
GumballMachine >> state: anObject [

	state := anObject
]

{ #category : #'as yet unclassified' }
GumballMachine >> turnCrank [

	state turnCrank: self
]
