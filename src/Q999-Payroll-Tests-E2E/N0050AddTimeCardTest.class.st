Class {
	#name : #N0050AddTimeCardTest,
	#superclass : #PayrollE2ETestCase,
	#category : #'Q999-Payroll-Tests-E2E'
}

{ #category : #tests }
N0050AddTimeCardTest >> testExecute [

	"
	[ UseCase3: Request for timecard processing ]
	- TimeCard <EmpID> <date> <hours>
	
	Attachment 1: In the case where the selected employee is not paid by the hour.
	  Output an error message only, and perform no further processing.
	"

	"
	You should pass this test with TDD.
	refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/52922af84ccd4f42f3918aa900f76d56b380af66/Q999-Payroll-Tests.package
"

	| empId transaction employee classification timecard name address hourlyRate date hours |
	"Arrange"
	empId := 123.
	name := 'Bill'.
	address := 'Home'.
	hourlyRate := 15.
	date := 20230518.
	hours := 8.

	transaction := AddHourlyEmployee
		               empId: empId
		               name: name
		               address: address
		               hourlyRate: hourlyRate.

	transaction execute.

	"Act"
	transaction := AddTimeCard empId: empId date: date hours: hours.

	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.

	classification := employee classification.
	timecard := classification timeCardOn: date.
	self deny: timecard isNil.
	self assert: timecard class equals: TimeCard.
	self assert: timecard hours equals: hours
]

{ #category : #tests }
N0050AddTimeCardTest >> testExecuteTimeCardNeedlessEmployee [

	"
	You should pass this test with TDD.
	refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/1a265a5df524609d3aaf3858b8e3d50bbf1f50ba/Q999-Payroll-Tests.package
"

	| empId transaction name address date hours raisedException salary |
	"Arrange"
	empId := 123.
	name := 'Bill'.
	address := 'Home'.
	salary := 1000.
	date := 20230518.
	hours := 8.

	transaction := AddSalariedEmployee
		               empId: empId
		               name: name
		               address: address
		               salary: salary.

	transaction execute.

	"Act"
	transaction := AddTimeCard empId: empId date: date hours: hours.

	[ transaction execute ]
		on: Exception
		do: [ :e | raisedException := e ].

	"Assert"
	self
		assert: raisedException messageText
		equals:
		'Message not understood: SalariedClassification >> #addTimeCard:'
]
