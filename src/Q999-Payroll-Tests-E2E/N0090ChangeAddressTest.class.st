Class {
	#name : #N0090ChangeAddressTest,
	#superclass : #PayrollE2ETestCase,
	#category : #'Q999-Payroll-Tests-E2E'
}

{ #category : #tests }
N0090ChangeAddressTest >> testExecute [

	"
	[ UseCase6: Change employee's profile ]
	- ChgEmp <EmpID> Address <address>

	Attachment 1: In the case where the selected empID / memberID is a non-existent one.
	  Output an error message only, and perform no further processing.
	"

	"
You should pass this test with TDD.
refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/a3b733cba9736cd644a70c8687eb430eb3d2b832/Q999-Payroll-Tests.package
"

	| empId transaction employee address |
	"Arrange"
	empId := 123.
	address := 'NY'.
	transaction := AddSalariedEmployee
		               empId: empId
		               name: 'Bob'
		               address: address
		               salary: 10.
	transaction execute.

	"Action"
	transaction := ChangeAddress empId: empId address: address.
	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.
	self deny: employee isNil.
	self assert: employee address equals: address
]
