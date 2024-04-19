Class {
	#name : #HourlyClassification,
	#superclass : #Object,
	#traits : 'TTimeCardsCapable',
	#classTraits : 'TTimeCardsCapable classTrait',
	#instVars : [
		'rate',
		'timeCards'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
HourlyClassification class >> rate: aRateNumber timeCards: aTimeCards [

	^ self new setRate: aRateNumber timeCards: aTimeCards
]

{ #category : #adding }
HourlyClassification >> addTimeCard: aTimeCard [

	timeCards add: aTimeCard

]

{ #category : #initialization }
HourlyClassification >> initialize [

	timeCards := TimeCards new.
	^ self
]

{ #category : #accessing }
HourlyClassification >> rate [

	^ rate
]

{ #category : #initialization }
HourlyClassification >> setRate: aRateNumber timeCards: aTimeCards [

	rate := aRateNumber.
	timeCards := aTimeCards.
	^ self
]

{ #category : #accessing }
HourlyClassification >> timeCardOn: aDateNumber [

	^ timeCards at: aDateNumber
]
