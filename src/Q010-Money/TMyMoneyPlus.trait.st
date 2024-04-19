Trait {
	#name : #TMyMoneyPlus,
	#category : #'Q010-Money'
}

{ #category : #'as yet unclassified' }
TMyMoneyPlus >> addMyMoney: aMyMoney [
	^ self explicitRequirement 
]

{ #category : #adding }
TMyMoneyPlus >> addMyMoneySum: aMyMoneySum [
	^ self explicitRequirement 
]
