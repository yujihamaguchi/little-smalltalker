Class {
	#name : #NoCoin,
	#superclass : #State,
	#category : #'Q100-State'
}

{ #category : #action }
NoCoin >> ejectCoin [
]

{ #category : #action }
NoCoin >> insertCoin [
	machine state: machine hasCoinState.
]

{ #category : #action }
NoCoin >> turnCrank [
]
