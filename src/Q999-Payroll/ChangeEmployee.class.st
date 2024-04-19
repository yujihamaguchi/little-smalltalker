Class {
	#name : #ChangeEmployee,
	#superclass : #Object,
	#traits : 'TTransaction',
	#classTraits : 'TTransaction classTrait',
	#instVars : [
		'empId'
	],
	#category : #'Q999-Payroll'
}

{ #category : #initialization }
ChangeEmployee >> change: anEmployee [

	^ self subclassResponsibility
]

{ #category : #execution }
ChangeEmployee >> execute [

	| employee |
	employee := PayrollDatabase employeeWithId: empId.
	employee ifNil: [ Exception signal: 'No such employee. id: ' , empId asString ].
	self change: employee
]
