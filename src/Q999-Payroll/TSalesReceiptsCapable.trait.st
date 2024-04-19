Trait {
	#name : #TSalesReceiptsCapable,
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #adding }
TSalesReceiptsCapable >> addSalesReceipt: aSalesReceipt [

	^ self explicitRequirement
]

{ #category : #accessing }
TSalesReceiptsCapable >> salesReceiptOn: aDateNumber [

	^ self explicitRequirement 
]
