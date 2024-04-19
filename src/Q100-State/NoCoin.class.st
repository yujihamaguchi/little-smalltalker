Class {
	#name : #NoCoin,
	#superclass : #Object,
	#traits : 'TState',
	#classTraits : 'TState classTrait',
	#category : #'Q100-State'
}

{ #category : #'as yet unclassified' }
NoCoin >> ejectCoin: aGumballMachine [

	aGumballMachine printer print: 'There is no coin to eject'
]

{ #category : #'as yet unclassified' }
NoCoin >> insertCoin: aGumballMachine [

	aGumballMachine state: HasCoin new
]

{ #category : #'as yet unclassified' }
NoCoin >> turnCrank: aGumballMachine [

	aGumballMachine printer print:
		'Please insert coin before turning the crank.'
]
