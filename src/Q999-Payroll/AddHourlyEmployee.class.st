Class {
	#name : #AddHourlyEmployee,
	#superclass : #Object,
	#traits : 'TTransaction',
	#classTraits : 'TTransaction classTrait',
	#instVars : [
		'empId',
		'name',
		'address',
		'hourlyRate'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
AddHourlyEmployee class >> empId: anEmpIdNumber name: aNameString address: anAddressString hourlyRate: anHourlyRateNumber [

	^ self new
		  setEmpId: anEmpIdNumber
		  name: aNameString
		  address: anAddressString
		  hourlyRate: anHourlyRateNumber
]

{ #category : #execution }
AddHourlyEmployee >> execute [

	| employee classification |
	employee := Employee id: empId name: name address: address.
	classification := HourlyClassification rate: hourlyRate timeCards: TimeCards new.
	employee classification: classification.
	employee schedule: WeeklySchedule new.
	employee method: HoldMethod new.
	PayrollDatabase addEmployee: employee
]

{ #category : #initialization }
AddHourlyEmployee >> setEmpId: anEmpIdNumber name: aNameString address: anAddressString hourlyRate: anHourlyRateNumber [

	empId := anEmpIdNumber.
	name := aNameString.
	address := anAddressString.
	hourlyRate := anHourlyRateNumber.
	^ self
]
