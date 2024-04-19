Class {
	#name : #ChangeCommissoned,
	#superclass : #ChangeEmployee,
	#instVars : [
		'salary',
		'commissionRate'
	],
	#category : #'Q999-Payroll'
}

{ #category : #'as yet unclassified' }
ChangeCommissoned class >> empId: anEmpIdNumber salary: aSalaryNumber commissionRate: aCommissionRateNumber [

	^ self new
		  setEmpId: anEmpIdNumber
		  salary: aSalaryNumber
		  commissionRate: aCommissionRateNumber
]

{ #category : #initialization }
ChangeCommissoned >> change: anEmployee [

	| commissionedClassification |
	commissionedClassification := CommissionedClassification
		                              salary: salary
		                              commissionRate: commissionRate
		                              salesReceipts: SalesReceipts new.
	anEmployee classification: commissionedClassification.
	anEmployee schedule: BiweekSchedule new
]

{ #category : #initialization }
ChangeCommissoned >> setEmpId: anEmpIdNumber salary: aSalaryNumber commissionRate: aCommissionRateNumber [

	empId := anEmpIdNumber.
	salary := aSalaryNumber.
	commissionRate := aCommissionRateNumber.
	^ self
]
