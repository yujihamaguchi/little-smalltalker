Class {
	#name : #AddTimeCardTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
AddTimeCardTest >> testExecute [

	| transaction empId date hours employee classification timecard |
	"Arrange"
	empId := Mock new.
	date := Mock new.
	hours := Mock new.

	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.
	classification := Mock new.
	employee stub classification willReturn: classification.
	timecard := Mock new.
	(TimeCard stub date: date hours: hours) willReturn: timecard.

	"Act"
	transaction := AddTimeCard empId: empId date: date hours: hours.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	employee should receive classification.
	TimeCard should receive date: date hours: hours.
	classification should receive addTimeCard: timecard
]

{ #category : #tests }
AddTimeCardTest >> testExecuteNoSuchEmployee [

	| raisedException empId transaction |
	"Arrange"
	empId := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: nil.

	"Act"
	transaction := AddTimeCard
		               empId: empId
		               date: Mock new
		               hours: Mock new.
	[ transaction execute ]
		on: Exception
		do: [ :e | raisedException := e ].

	"Assert"
	self
		assert: raisedException messageText
		equals: 'No such employee. id: ' , empId
]
