Class {
	#name : #TimeCards,
	#superclass : #Object,
	#instVars : [
		'timeCards'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #adding }
TimeCards >> add: aTimeCard [

	timeCards ifNil: [ timeCards := Dictionary new ].
	timeCards at: aTimeCard date put: aTimeCard
]

{ #category : #accessing }
TimeCards >> at: aDateNumber [

	^ timeCards at: aDateNumber 
]
