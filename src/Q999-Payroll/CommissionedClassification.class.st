Class {
	#name : #CommissionedClassification,
	#superclass : #Object,
	#traits : 'TSalesReceiptsCapable',
	#classTraits : 'TSalesReceiptsCapable classTrait',
	#instVars : [
		'salary',
		'commissionRate',
		'salesReceipts'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
CommissionedClassification class >> salary: aSalaryNumber commissionRate: aCommissionRateNumber salesReceipts: aSalesReceipts [

	^ self new
		  setSalary: aSalaryNumber
		  commissionRate: aCommissionRateNumber
		  salesReceipts: aSalesReceipts
]

{ #category : #adding }
CommissionedClassification >> addSalesReceipt: aSalesReceipt [

	salesReceipts add: aSalesReceipt 
]

{ #category : #accessing }
CommissionedClassification >> commissionRate [

	^ commissionRate
]

{ #category : #accessing }
CommissionedClassification >> salary [

	^ salary
]

{ #category : #accessing }
CommissionedClassification >> salesReceiptOn: aDateNumber [

	^ salesReceipts at: aDateNumber 
]

{ #category : #initialization }
CommissionedClassification >> setSalary: aSalaryNumber commissionRate: aCommissionRateNumber salesReceipts: aSalesReceipts [

	salary := aSalaryNumber.
	commissionRate := aCommissionRateNumber.
	salesReceipts := aSalesReceipts.
	^ self
]
