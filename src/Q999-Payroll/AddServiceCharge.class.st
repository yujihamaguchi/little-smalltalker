Class {
	#name : #AddServiceCharge,
	#superclass : #Object,
	#traits : 'TTransaction',
	#classTraits : 'TTransaction classTrait',
	#instVars : [
		'memberId',
		'date',
		'amount'
	],
	#category : #'Q999-Payroll'
}

{ #category : #'as yet unclassified' }
AddServiceCharge class >> memberId: aMemberIdNumber date: aDateNumber amount: anAmountNumber [

	^ self new
		  setMemberId: aMemberIdNumber
		  date: aDateNumber
		  amount: anAmountNumber
]

{ #category : #execution }
AddServiceCharge >> execute [

	| employee affiliation serviceCharge |
	employee := PayrollDatabase employeeWithUnionMemberId: memberId.
	employee ifNil: [ 
		Exception signal: 'No such member. id: ' , memberId asString ].
	affiliation := employee affiliation.
	serviceCharge := ServiceCharge date: date amount: amount.
	affiliation addServiceCharge: serviceCharge
]

{ #category : #initialization }
AddServiceCharge >> setMemberId: aMemberIdNumber date: aDateNumber amount: anAmountNumber [

	memberId := aMemberIdNumber.
	date := aDateNumber.
	amount := anAmountNumber.
	^ self
]
