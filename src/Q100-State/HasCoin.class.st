Class {
	#name : #HasCoin,
	#superclass : #State,
	#category : #'Q100-State'
}

{ #category : #action }
HasCoin >> ejectCoin [
	machine state: machine noCoinState.

]

{ #category : #action }
HasCoin >> insertCoin [
]

{ #category : #action }
HasCoin >> turnCrank [
	machine releaseBall.
	machine count = 0
		ifTrue: [ machine state: machine soldOutState ]
		ifFalse: [ machine state: machine noCoinState ].
]
