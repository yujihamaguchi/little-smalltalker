Class {
	#name : #HasCoin,
	#superclass : #State,
	#category : #'Q100-State'
}

{ #category : #'as yet unclassified' }
HasCoin >> ejectCoin [
	machine state: (NoCoin new setMachine: machine).
]

{ #category : #'as yet unclassified' }
HasCoin >> insertCoin [ 
	^ self
]

{ #category : #'as yet unclassified' }
HasCoin >> turnCrank [
	machine dispense.
	machine state: (machine remain = 0
			 ifTrue: [ SoldOut new setMachine: machine ]
			 ifFalse: [ NoCoin new setMachine: machine ])
]
