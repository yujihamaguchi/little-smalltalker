Trait {
	#name : #TTimeCardsCapable,
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #adding }
TTimeCardsCapable >> addTimeCard: aTimecard [
	^ self explicitRequirement 
]

{ #category : #accessing }
TTimeCardsCapable >> timeCardOn: aDateNumber [

	^ self explicitRequirement
]
