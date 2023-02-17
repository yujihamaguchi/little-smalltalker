Class {
	#name : #HasCoin,
	#superclass : #State,
	#category : #'Q100-State'
}

{ #category : #'as yet unclassified' }
HasCoin >> ejectCoin: aMachine [
	aMachine state: NoCoin new
]

{ #category : #'as yet unclassified' }
HasCoin >> insertCoin: aMachine [
	^ self
]

{ #category : #'as yet unclassified' }
HasCoin >> turnCrank: aMachine [
	aMachine dispense.
	aMachine state: (aMachine count = 0
			 ifTrue: [ SoldOut new ]
			 ifFalse: [ NoCoin new ])
]
