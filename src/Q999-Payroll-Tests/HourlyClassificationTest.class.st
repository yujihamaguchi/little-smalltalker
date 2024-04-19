Class {
	#name : #HourlyClassificationTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
HourlyClassificationTest >> testAddTimeCardBlackBox [

	| classification date timeCard timeCards |
	"Arrange"
	timeCards := TimeCards new.
	classification := HourlyClassification rate: 10 timeCards: timeCards.
	date := 20231027.
	timeCard := TimeCard date: date hours: 8.

	"Act"
	classification addTimeCard: timeCard.

	"Assert"
	self assert: (classification timeCardOn: date) equals: timeCard
]

{ #category : #tests }
HourlyClassificationTest >> testAddTimeCardWhiteBox [

	| timeCards timeCard hourlyClassification |
	"Arrange"
	timeCards := Mock new.
	hourlyClassification := HourlyClassification
		                        rate: Mock new
		                        timeCards: timeCards.
	timeCard := Mock new.

	"Act"
	hourlyClassification addTimeCard: timeCard.

	"Assert"
	timeCards should receive add: timeCard
]
