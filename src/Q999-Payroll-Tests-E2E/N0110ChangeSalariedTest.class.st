Class {
	#name : #N0110ChangeSalariedTest,
	#superclass : #PayrollE2ETestCase,
	#category : #'Q999-Payroll-Tests-E2E'
}

{ #category : #tests }
N0110ChangeSalariedTest >> testExecute [
	"
	[ UseCase6: Change employee's profile ]
	- ChgEmp <EmpID> Salaried <salary>

	Attachment 1: In the case where the selected empID / memberID is a non-existent one.
	  Output an error message only, and perform no further processing.
	"


	"
You should pass this test with TDD.
refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/a3b733cba9736cd644a70c8687eb430eb3d2b832/Q999-Payroll-Tests.package
"

	| schedule classification salary empId employee transaction |
	"Arrange"
	empId := 123.
	salary := 12.

	transaction := AddHourlyEmployee
		               empId: empId
		               name: 'Bob'
		               address: 'NY'
		               hourlyRate: 10.
	transaction execute.

	"Act"
	transaction := ChangeSalaried empId: empId salary: salary.
	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.

	schedule := employee schedule.
	self deny: schedule isNil.
	self assert: schedule class equals: MonthlySchedule.

	classification := employee classification.
	self deny: classification isNil.
	self assert: classification class equals: SalariedClassification.
	self assert: classification salary equals: salary
]
