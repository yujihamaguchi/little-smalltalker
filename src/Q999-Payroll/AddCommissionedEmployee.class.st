Class {
	#name : #AddCommissionedEmployee,
	#superclass : #Object,
	#traits : 'TTransaction',
	#classTraits : 'TTransaction classTrait',
	#instVars : [
		'empId',
		'name',
		'address',
		'salary',
		'commissionRate'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
AddCommissionedEmployee class >> empId: anEmpIdNumber name: aNameString address: anAddressString salary: aSalaryNumber commissionRate: aCommissionRateNumber [

	^ self new
		  setEmpId: anEmpIdNumber
		  name: aNameString
		  address: anAddressString
		  salary: aSalaryNumber
		  commissionRate: aCommissionRateNumber
]

{ #category : #execution }
AddCommissionedEmployee >> execute [

	| employee classification |
	employee := Employee id: empId name: name address: address.
	classification := CommissionedClassification
		                  salary: salary
		                  commissionRate: commissionRate salesReceipts: SalesReceipts new.
	employee classification: classification.
	employee schedule: BiweekSchedule new.
	employee method: HoldMethod new.
	PayrollDatabase addEmployee: employee
]

{ #category : #initialization }
AddCommissionedEmployee >> setEmpId: anEmpIdNumber name: aNameString address: anAddressString salary: aSalaryNumber commissionRate: aCommissionRateNumber [

	empId := anEmpIdNumber.
	name := aNameString.
	address := anAddressString.
	salary := aSalaryNumber.
	commissionRate := aCommissionRateNumber.
	^ self
]
