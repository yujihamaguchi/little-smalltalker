Class {
	#name : #SoldOut,
	#superclass : #Object,
	#traits : 'TState',
	#classTraits : 'TState classTrait',
	#category : #'Q100-State'
}

{ #category : #'as yet unclassified' }
SoldOut >> ejectCoin: aGumballMachine [
]

{ #category : #'as yet unclassified' }
SoldOut >> insertCoin: aGumballMachine [

	aGumballMachine printer print:
		'Coins cannot be inserted due to being sold out'
]

{ #category : #'as yet unclassified' }
SoldOut >> turnCrank: aGumballMachine [

	aGumballMachine printer print: 'It is sold out, sorry.'
]
