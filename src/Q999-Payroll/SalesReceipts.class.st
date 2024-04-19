Class {
	#name : #SalesReceipts,
	#superclass : #Object,
	#instVars : [
		'salesReceipts'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #adding }
SalesReceipts >> add: aSalesReceipt [

	salesReceipts ifNil: [ salesReceipts := Dictionary new ].
	^ salesReceipts at: aSalesReceipt date put: aSalesReceipt
]

{ #category : #accessing }
SalesReceipts >> at: aDateNumber [

	^ salesReceipts at: aDateNumber 
]
