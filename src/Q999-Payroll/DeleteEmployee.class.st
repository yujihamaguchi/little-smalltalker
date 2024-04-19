Class {
	#name : #DeleteEmployee,
	#superclass : #Object,
	#traits : 'TTransaction',
	#classTraits : 'TTransaction classTrait',
	#instVars : [
		'empId'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #accessing }
DeleteEmployee class >> empId: anEmpIdNumber [

	^ self new setEmpId: anEmpIdNumber
]

{ #category : #execution }
DeleteEmployee >> execute [

	| employee |
	employee := PayrollDatabase employeeWithId: empId.
	employee ifNil: [ 
		Exception signal: 'No such employee. id: ' , empId asString ].
	PayrollDatabase removeEmployeeWithId: empId
]

{ #category : #initialization }
DeleteEmployee >> setEmpId: anEmpIdNumber [

	empId := anEmpIdNumber.
	^ self
]
