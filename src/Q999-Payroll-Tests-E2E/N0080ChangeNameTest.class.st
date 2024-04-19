Class {
	#name : #N0080ChangeNameTest,
	#superclass : #PayrollE2ETestCase,
	#category : #'Q999-Payroll-Tests-E2E'
}

{ #category : #tests }
N0080ChangeNameTest >> testExecute [

	"
	[ UseCase6: Change employee's profile ]
	- ChgEmp <EmpID> Name <name>

	Attachment 1: In the case where the selected empID / memberID is a non-existent one.
	  Output an error message only, and perform no further processing.
	"

	"
You should pass this test with TDD.
refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/a3b733cba9736cd644a70c8687eb430eb3d2b832/Q999-Payroll-Tests.package
"

	| empId employee transaction name |
	"Arrange"
	empId := 123.
	name := 'Bob'.

	transaction := AddHourlyEmployee
		               empId: empId
		               name: 'Bill'
		               address: 'Home'
		               hourlyRate: 10.
	transaction execute.

	"Action"
	transaction := ChangeName empId: empId name: name.
	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.
	self deny: employee isNil.
	self assert: employee name equals: name
]
