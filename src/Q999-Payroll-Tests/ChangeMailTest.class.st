Class {
	#name : #ChangeMailTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
ChangeMailTest >> testExecute [

	| employee mailMethod empId transaction |
	"Arrange"
	empId := Mock new.

	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.
	mailMethod := Mock new.
	MailMethod stub new willReturn: mailMethod.

	"Act"
	transaction := ChangeMail empId: empId.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	MailMethod should receive new.
	employee should receive method: mailMethod
]
