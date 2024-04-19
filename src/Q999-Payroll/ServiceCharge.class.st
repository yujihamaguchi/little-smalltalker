Class {
	#name : #ServiceCharge,
	#superclass : #Object,
	#instVars : [
		'date',
		'amount'
	],
	#category : #'Q999-Payroll'
}

{ #category : #'as yet unclassified' }
ServiceCharge class >> date: aDateNumber amount: anAmountNumber [

	^ self new setDate: aDateNumber amount: anAmountNumber
]

{ #category : #accessing }
ServiceCharge >> amount [

	^ amount
]

{ #category : #accessing }
ServiceCharge >> date [

	^ date
]

{ #category : #initialization }
ServiceCharge >> setDate: aDateNumber amount: anAmountNumber [

	date := aDateNumber.
	amount := anAmountNumber.
	^ self
]
