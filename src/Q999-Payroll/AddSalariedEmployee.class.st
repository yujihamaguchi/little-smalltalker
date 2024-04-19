Class {
	#name : #AddSalariedEmployee,
	#superclass : #Object,
	#traits : 'TTransaction',
	#classTraits : 'TTransaction classTrait',
	#instVars : [
		'empId',
		'name',
		'address',
		'salary'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
AddSalariedEmployee class >> empId: anEmpIdNumber name: aNameString address: anAddressString salary: aSalaryNumber [

	^ self new
		  setEmpId: anEmpIdNumber
		  name: aNameString
		  address: anAddressString
		  salary: aSalaryNumber
]

{ #category : #execution }
AddSalariedEmployee >> execute [

	| employee classification |
	employee := Employee id: empId name: name address: address.
	classification := SalariedClassification salary: salary.
	employee classification: classification.
	employee schedule: MonthlySchedule new.
	employee method: HoldMethod new.
   PayrollDatabase addEmployee: employee 
]

{ #category : #initialization }
AddSalariedEmployee >> setEmpId: anEmpIdNumber name: aNameString address: anAddressString salary: aSalaryNumber [

	empId := anEmpIdNumber.
	name := aNameString.
	address := anAddressString.
	salary := aSalaryNumber.
	^ self
]
