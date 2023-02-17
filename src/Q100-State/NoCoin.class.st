Class {
	#name : #NoCoin,
	#superclass : #State,
	#category : #'Q100-State'
}

{ #category : #'as yet unclassified' }
NoCoin >> ejectCoin: aMachine [
	^ self
]

{ #category : #'as yet unclassified' }
NoCoin >> insertCoin: aMachine [
	aMachine state: HasCoin new
]

{ #category : #'as yet unclassified' }
NoCoin >> turnCrank: aMachine [
	^ self
]
