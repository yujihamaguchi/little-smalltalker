Class {
	#name : #ChangeNameTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
ChangeNameTest >> testExecute [

	| employee name empId transaction |
	"Arrange"
	empId := Mock new.
	name := Mock new.

	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.

	"Act"
	transaction := ChangeName empId: empId name: name.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	employee should receive name: name
]

{ #category : #tests }
ChangeNameTest >> testExecuteNoSuchEmployee [

	| raisedException empId name transaction |
	"Arrange"
	empId := Mock new.
	name := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: nil.

	"Act"
	transaction := ChangeName empId: empId name: name.
	[ transaction execute ]
		on: Exception
		do: [ :e | raisedException := e ].
	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	self
		assert: raisedException messageText
		equals: 'No such employee. id: ' , empId asString
]
