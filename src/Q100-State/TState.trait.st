Trait {
	#name : #TState,
	#category : #'Q100-State'
}

{ #category : #'as yet unclassified' }
TState >> ejectCoin: aGumballMachine [

	^ self explicitRequirement
]

{ #category : #'as yet unclassified' }
TState >> insertCoin: aGumballMachine [

	^ self explicitRequirement
]

{ #category : #'as yet unclassified' }
TState >> turnCrank: aGumballMachine [

	^ self explicitRequirement
]
