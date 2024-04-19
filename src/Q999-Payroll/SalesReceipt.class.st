Class {
	#name : #SalesReceipt,
	#superclass : #Object,
	#instVars : [
		'date',
		'amount'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
SalesReceipt class >> date: aDateNumber amount: anAmountNumber [

	^ self new setDate: aDateNumber amount: anAmountNumber
]

{ #category : #accessing }
SalesReceipt >> amount [

	^ amount
]

{ #category : #accessing }
SalesReceipt >> date [

	^ date
]

{ #category : #initialization }
SalesReceipt >> setDate: aDateNumber amount: anAmountNumber [

	date := aDateNumber.
	amount := anAmountNumber.
	^ self
]
