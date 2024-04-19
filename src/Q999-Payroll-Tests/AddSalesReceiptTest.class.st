Class {
	#name : #AddSalesReceiptTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
AddSalesReceiptTest >> testExecute [

	| empId date transaction employee classification amount salesReceipt |
	"Arrange"
	empId := Mock new.
	date := Mock new.
	amount := Mock new.

	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.
	classification := Mock new.
	employee stub classification willReturn: classification.
	salesReceipt := Mock new.
	(SalesReceipt stub date: date amount: amount) willReturn:
		salesReceipt.

	"Act"
	transaction := AddSalesReceipt empId: empId date: date amount: amount.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	employee should receive classification.
	SalesReceipt should receive date: date amount: amount.
	classification should receive addSalesReceipt: salesReceipt
]

{ #category : #tests }
AddSalesReceiptTest >> testExecuteNoSuchEmployee [

	| raisedException empId transaction |
	"Arrange"
	empId := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: nil.
	
	"Act"
	transaction := AddSalesReceipt
		               empId: empId
		               date: Mock new
		               amount: Mock new.
	[ transaction execute ]
		on: Exception
		do: [ :e | raisedException := e ].

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	self
		assert: raisedException messageText
		equals: 'No such employee. id: ' , empId asString
]
