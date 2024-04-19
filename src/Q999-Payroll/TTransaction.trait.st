Trait {
	#name : #TTransaction,
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #execution }
TTransaction >> execute [

	^ self explicitRequirement 
]
