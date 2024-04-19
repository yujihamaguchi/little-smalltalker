Class {
	#name : #N0120ChangeCommissionedTest,
	#superclass : #PayrollE2ETestCase,
	#category : #'Q999-Payroll-Tests-E2E'
}

{ #category : #tests }
N0120ChangeCommissionedTest >> testExecute [

	"
	[ UseCase6: Change employee's profile ]
	- ChgEmp <EmpID> Commissioned <salary> <rate>

	Attachment 1: In the case where the selected empID / memberID is a non-existent one.
	  Output an error message only, and perform no further processing.
	"

	"
You should pass this test with TDD.
refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/a3b733cba9736cd644a70c8687eb430eb3d2b832/Q999-Payroll-Tests.package
"

	| empId salary commissionRate transaction employee classification schedule |
	"Arrange"
	empId := 123.
	salary := 12.
	commissionRate := 23.

	transaction := AddSalariedEmployee
		               empId: empId
		               name: 'Bob'
		               address: 'NY City'
		               salary: 0.
	transaction execute.

	"Act"
	transaction := ChangeCommissoned
		               empId: empId
		               salary: salary
		               commissionRate: commissionRate.
	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.

	classification := employee classification.
	self assert: classification class equals: CommissionedClassification.
	self assert: classification salary equals: salary.
	self assert: classification commissionRate equals: commissionRate.
	schedule := employee schedule.
	self assert: schedule class equals: BiweekSchedule
]
