Class {
	#name : #N0100ChangeHourlyTest,
	#superclass : #PayrollE2ETestCase,
	#category : #'Q999-Payroll-Tests-E2E'
}

{ #category : #tests }
N0100ChangeHourlyTest >> testExecute [

	"
	[ UseCase6: Change employee's profile ]
	- ChgEmp <EmpID> Hourly <hourlyRate>

	Attachment 1: In the case where the selected empID / memberID is a non-existent one.
	  Output an error message only, and perform no further processing.
	"

	"
You should pass this test with TDD.
refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/a3b733cba9736cd644a70c8687eb430eb3d2b832/Q999-Payroll-Tests.package
"

	| empId employee classification hourlyRate transaction schedule |
	"Arrange"
	empId := 123.
	hourlyRate := 12.

	transaction := AddSalariedEmployee
		               empId: empId
		               name: 'Bob'
		               address: 'NY'
		               salary: 10.
	transaction execute.

	"Action"
	transaction := ChangeHourly empId: empId hourlyRate: hourlyRate.
	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.

	classification := employee classification.
	self assert: classification class equals: HourlyClassification.
	self assert: classification rate equals: hourlyRate.

	schedule := employee schedule.
	self assert: schedule class equals: WeeklySchedule
]
