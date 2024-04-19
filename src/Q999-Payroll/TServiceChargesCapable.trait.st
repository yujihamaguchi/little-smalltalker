Trait {
	#name : #TServiceChargesCapable,
	#category : #'Q999-Payroll'
}

{ #category : #adding }
TServiceChargesCapable >> addServiceCharge: aServiceCharge [

	^ self explicitRequirement 
]

{ #category : #'as yet unclassified' }
TServiceChargesCapable >> serviceChargeOn: aDateNumber [

	^ self explicitRequirement
]
