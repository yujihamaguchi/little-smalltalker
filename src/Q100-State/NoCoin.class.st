Class {
	#name : #NoCoin,
	#superclass : #State,
	#category : #'Q100-State'
}

{ #category : #'as yet unclassified' }
NoCoin >> ejectCoin [
	^ self 
]

{ #category : #'as yet unclassified' }
NoCoin >> insertCoin [ 
	machine state: (HasCoin new setMachine: machine).
]

{ #category : #'as yet unclassified' }
NoCoin >> turnCrank [
	^ self
]
