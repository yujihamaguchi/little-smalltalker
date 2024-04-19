Class {
	#name : #ChangeDirectTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
ChangeDirectTest >> testExecute [

	| employee directMethod empId transaction |
	"Arrange"
	empId := Mock new.

	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.
	directMethod := Mock new.
	DirectMethod stub new willReturn: directMethod.

	"Act"
	transaction := ChangeDirect empId: empId.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	DirectMethod should receive new.
	employee should receive method: directMethod
]
