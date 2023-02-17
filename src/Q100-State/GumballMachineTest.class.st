Class {
	#name : #GumballMachineTest,
	#superclass : #TestCase,
	#category : #'Q100-State'
}

{ #category : #tests }
GumballMachineTest >> testGumballMachine [

	| machine |
	machine := GumballMachine initialize.
	self assert: machine count equals: 5.
	self assert: machine state class equals: NoCoin.

	machine insertCoin.
	self assert: machine state class equals: HasCoin.

	machine turnCrank.
	self assert: machine count equals: 4.
	self assert: machine state class equals: NoCoin.

	machine insertCoin.
	machine ejectCoin.
	self assert: machine state class equals: NoCoin.

	machine turnCrank.
	self assert: machine count equals: 4.
	self assert: machine state class equals: NoCoin.

	machine insertCoin.
	machine turnCrank.
	machine insertCoin.
	machine turnCrank.
	machine insertCoin.
	machine ejectCoin.

	self assert: machine count equals: 2.
	self assert: machine state class equals: NoCoin.

	machine insertCoin.
	machine insertCoin.
	machine turnCrank.
	machine insertCoin.
	machine turnCrank.

	self assert: machine count equals: 0.
	self assert: machine state class equals: SoldOut

]
