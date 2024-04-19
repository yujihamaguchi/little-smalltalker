Class {
	#name : #TimeCard,
	#superclass : #Object,
	#instVars : [
		'date',
		'hours'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
TimeCard class >> date: aDateNumber hours: anHoursNumber [

	^ self new setDate: aDateNumber hours: anHoursNumber
]

{ #category : #accessing }
TimeCard >> date [

	^ date
]

{ #category : #accessing }
TimeCard >> hours [

	^ hours
]

{ #category : #initialization }
TimeCard >> setDate: aDateNumber hours: anHoursNumber [

	date := aDateNumber.
	hours := anHoursNumber.
	^ self
]
