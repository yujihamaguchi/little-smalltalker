Class {
	#name : #AddSalesReceipt,
	#superclass : #Object,
	#traits : 'TTransaction',
	#classTraits : 'TTransaction classTrait',
	#instVars : [
		'empId',
		'date',
		'amount'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
AddSalesReceipt class >> empId: anEmpIdNumber date: aDateNumber amount: anAmountNumber [

	^ self new
		  setEmpId: anEmpIdNumber
		  date: aDateNumber
		  amount: anAmountNumber
]

{ #category : #execution }
AddSalesReceipt >> execute [

	| employee classification salesReceipt |
	employee := PayrollDatabase employeeWithId: empId.
	employee ifNil: [ 
		Exception signal: 'No such employee. id: ' , empId asString ].
	classification := employee classification.
	salesReceipt := SalesReceipt date: date amount: amount.
	classification addSalesReceipt: salesReceipt
]

{ #category : #initialization }
AddSalesReceipt >> setEmpId: anEmpIdNumber date: aDateNumber amount: anAmountNumber [

	empId := anEmpIdNumber.
	date := aDateNumber.
	amount := anAmountNumber.
	^ self
]
