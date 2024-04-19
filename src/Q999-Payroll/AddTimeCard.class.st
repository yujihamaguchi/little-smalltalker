Class {
	#name : #AddTimeCard,
	#superclass : #Object,
	#traits : 'TTransaction',
	#classTraits : 'TTransaction classTrait',
	#instVars : [
		'empId',
		'date',
		'hours'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
AddTimeCard class >> empId: anEmpIdNumber date: aDateNumber hours: anHoursNumber [

	^ self new
		  setEmpId: anEmpIdNumber
		  date: aDateNumber
		  hours: anHoursNumber
]

{ #category : #execution }
AddTimeCard >> execute [

	| employee classification timeCard |
	employee := PayrollDatabase employeeWithId: empId.
	employee ifNil: [ Exception signal: 'No such employee. id: ' , empId ].

	classification := employee classification.
	timeCard := TimeCard date: date hours: hours.
	classification addTimeCard: timeCard
]

{ #category : #initialization }
AddTimeCard >> setEmpId: anEmpIdNumber date: aDateNumber hours: anHoursNumber [

	empId := anEmpIdNumber.
	date := aDateNumber.
	hours := anHoursNumber.
	^ self
]
