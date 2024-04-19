Class {
	#name : #ChangeHourlyTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
ChangeHourlyTest >> testExecute [

	| empId hourlyRate transaction employee classification schedule timeCards |
	"Arrange"
	empId := Mock new.
	hourlyRate := Mock new.

	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.
	timeCards := Mock new.
	TimeCards stub new willReturn: timeCards.
	classification := Mock new.
	(HourlyClassification stub rate: hourlyRate timeCards: timeCards) 
		willReturn: classification.
	schedule := Mock new.
	WeeklySchedule stub new willReturn: schedule.
	"Act"
	transaction := ChangeHourly empId: empId hourlyRate: hourlyRate.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	TimeCards should receive new.
	HourlyClassification should receive
		rate: hourlyRate
		timeCards: timeCards.
	employee should receive classification: classification.
	WeeklySchedule should receive new.
	employee should receive schedule: schedule
]
