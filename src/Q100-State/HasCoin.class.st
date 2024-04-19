Class {
	#name : #HasCoin,
	#superclass : #Object,
	#traits : 'TState',
	#classTraits : 'TState classTrait',
	#category : #'Q100-State'
}

{ #category : #'as yet unclassified' }
HasCoin >> ejectCoin: aGumballMachine [

	aGumballMachine state: NoCoin new
]

{ #category : #'as yet unclassified' }
HasCoin >> insertCoin: aGumballMachine [

	aGumballMachine printer print: 'A coin is already inserted.'
]

{ #category : #'as yet unclassified' }
HasCoin >> turnCrank: aGumballMachine [

	aGumballMachine printer print: 'A gumball come out!' , String cr.
	aGumballMachine decrease.
	aGumballMachine count = 0
		ifTrue: [ aGumballMachine state: SoldOut new ]
		ifFalse: [ aGumballMachine state: NoCoin new ]
]
