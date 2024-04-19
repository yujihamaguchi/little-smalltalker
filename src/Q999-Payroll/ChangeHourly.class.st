Class {
	#name : #ChangeHourly,
	#superclass : #ChangeEmployee,
	#instVars : [
		'hourlyRate'
	],
	#category : #'Q999-Payroll'
}

{ #category : #'as yet unclassified' }
ChangeHourly class >> empId: anEmpIdNumber hourlyRate: anHourlyRateNumber [

	^ self new setEmpId: anEmpIdNumber hourlyRate: anHourlyRateNumber
]

{ #category : #initialization }
ChangeHourly >> change: anEmployee [

	| classification |
	classification := HourlyClassification
		                  rate: hourlyRate
		                  timeCards: TimeCards new.
	anEmployee classification: classification.
	anEmployee schedule: WeeklySchedule new
]

{ #category : #initialization }
ChangeHourly >> setEmpId: anEmpIdNumber hourlyRate: anHourlyRateNumber [

	empId := anEmpIdNumber.
	hourlyRate := anHourlyRateNumber.
	^ self
]
