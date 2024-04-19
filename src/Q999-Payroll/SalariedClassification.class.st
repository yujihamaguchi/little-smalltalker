Class {
	#name : #SalariedClassification,
	#superclass : #Object,
	#instVars : [
		'salary'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
SalariedClassification class >> salary: aSalaryNumber [

	^ self new setSalary: aSalaryNumber
]

{ #category : #accessing }
SalariedClassification >> salary [

	^ salary
]

{ #category : #initialization }
SalariedClassification >> setSalary: aSalaryNumber [

	salary := aSalaryNumber.
	^ self
]
