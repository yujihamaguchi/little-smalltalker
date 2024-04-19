Class {
	#name : #GumballMachineE2ETest,
	#superclass : #TestCase,
	#category : #'Q100-State-Tests-E2E'
}

{ #category : #tests }
GumballMachineE2ETest >> testEjectCoin [

	| machine |
	"Arrange"
	machine := GumballMachine new.
	machine insertCoin.
	self assert: machine state class equals: HasCoin.
	"Act"
	machine ejectCoin.
	"Assert"
	self assert: machine state class equals: NoCoin
]

{ #category : #tests }
GumballMachineE2ETest >> testEjectCoinWithNoCoin [

	| machine printer |
	"Arrange"
	printer := Mock new.
	machine := GumballMachine printer: printer.
	self assert: machine state class equals: NoCoin.
	"Act"
	machine ejectCoin.
	"Assert"
	printer should receive print: 'There is no coin to eject'.
	self assert: machine state class equals: NoCoin
]

{ #category : #tests }
GumballMachineE2ETest >> testInsertCoin [

	| machine |
	"Arrange"
	machine := GumballMachine new.
	self assert: machine state class equals: NoCoin.
	"Act"
	machine insertCoin.
	"Assert"
	self assert: machine state class equals: HasCoin
]

{ #category : #tests }
GumballMachineE2ETest >> testInsertCoinWithHasCoin [

	| printer machine |
	"Arrange"
	printer := Mock new.
	machine := GumballMachine printer: printer.
	machine insertCoin.
	self assert: machine state class equals: HasCoin.
	"Act"
	machine insertCoin.
	"Assert"
	printer should receive print: 'A coin is already inserted.'.
	self assert: machine state class equals: HasCoin
]

{ #category : #tests }
GumballMachineE2ETest >> testInsertCoinWithSoldOut [

	| printer machine |
	"Arrange"
	printer := Mock new.
	machine := GumballMachine printer: printer.
	machine stub state willReturn: SoldOut new.
	self assert: machine state class equals: SoldOut.
	"Act"
	machine insertCoin.
	"Assert"
	printer should receive print:
		'Coins cannot be inserted due to being sold out'.
	self assert: machine state class equals: SoldOut
]

{ #category : #tests }
GumballMachineE2ETest >> testTurnCrank [

	| machine message printer |
	"Arrange"
	printer := Mock new.
	machine := GumballMachine printer: printer.
	machine insertCoin.
	"Act"
	message := machine turnCrank.
	"Assert"
	printer should receive print: 'A gumball come out!' , String cr.
	self assert: machine state class equals: NoCoin
]

{ #category : #tests }
GumballMachineE2ETest >> testTurnCrankWhenSoldOut [

	| printer machine |
	"Arrange"
	printer := Mock new.
	machine := GumballMachine printer: printer.
	machine state: SoldOut new.
	"Act"
	machine turnCrank.
	"Assert"
	printer should receive print: 'It is sold out, sorry.'.
	self assert: machine state class equals: SoldOut
]

{ #category : #tests }
GumballMachineE2ETest >> testTurnCrankWihtNoCoin [

	| printer machine |
	"Arrange"
	printer := Mock new.
	machine := GumballMachine printer: printer.
	"Act"
	machine turnCrank.
	"Assert"
	printer should receive print:
		'Please insert coin before turning the crank.'.
	self assert: machine state class equals: NoCoin
]
