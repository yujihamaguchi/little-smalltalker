Class {
	#name : #N0170ChangeUnaffiliated,
	#superclass : #PayrollE2ETestCase,
	#category : #'Q999-Payroll-Tests-E2E'
}

{ #category : #tests }
N0170ChangeUnaffiliated >> testExecute [
	"
	[ UseCase6: Change employee's profile ]
	- ChgEmp <EmpID> NoMember

	Attachment 1: In the case where the selected empID / memberID is a non-existent one.
	  Output an error message only, and perform no further processing.
	"

	"
You should pass this test with TDD.
refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/a3b733cba9736cd644a70c8687eb430eb3d2b832/Q999-Payroll-Tests.package
"

	| employee empId transaction memberId dues member |
	"Arrange"
	empId := 123.
	memberId := 234.
	dues := 45.
	
	transaction := AddSalariedEmployee
		               empId: empId
		               name: Mock new
		               address: Mock new
		               salary: Mock new.
	transaction execute.

	transaction := ChangeMember
		               empId: empId
		               memberId: memberId
		               dues: dues.
	transaction execute.

	"Act"
	transaction := ChangeUnaffiliated empId: empId.
	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.
	self assert: employee affiliation class equals: NoAffiliation.

	member := PayrollDatabase employeeWithUnionMemberId: memberId.
	self assert: member isNil
]
