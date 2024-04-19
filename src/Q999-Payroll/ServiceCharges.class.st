Class {
	#name : #ServiceCharges,
	#superclass : #Object,
	#instVars : [
		'serviceCharges'
	],
	#category : #'Q999-Payroll'
}

{ #category : #adding }
ServiceCharges >> add: aServiceCharge [

	serviceCharges ifNil: [ serviceCharges := Dictionary new ].
	serviceCharges at: aServiceCharge date put: aServiceCharge 
	
]

{ #category : #accessing }
ServiceCharges >> at: aDateNumber [

	^ serviceCharges at: aDateNumber
]
