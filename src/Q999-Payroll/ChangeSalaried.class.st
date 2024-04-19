Class {
	#name : #ChangeSalaried,
	#superclass : #ChangeEmployee,
	#instVars : [
		'salary'
	],
	#category : #'Q999-Payroll'
}

{ #category : #'as yet unclassified' }
ChangeSalaried class >> empId: anEmpIdNumber salary: aSalaryNumber [

	^ self new setEmpId: anEmpIdNumber salary: aSalaryNumber
]

{ #category : #initialization }
ChangeSalaried >> change: anEmployee [

	anEmployee classification: (SalariedClassification salary: salary).
	anEmployee schedule: MonthlySchedule new
]

{ #category : #initialization }
ChangeSalaried >> setEmpId: anEmpIdNumber salary: aSalaryNumber [

	empId := anEmpIdNumber.
	salary := aSalaryNumber.
	^ self
]
