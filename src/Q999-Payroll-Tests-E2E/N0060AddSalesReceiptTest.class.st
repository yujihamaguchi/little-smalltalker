Class {
	#name : #N0060AddSalesReceiptTest,
	#superclass : #PayrollE2ETestCase,
	#category : #'Q999-Payroll-Tests-E2E'
}

{ #category : #tests }
N0060AddSalesReceiptTest >> testExecute [

	"
	[ UseCase4: Request for sales receipt processing ]
	- SalesReceipt <EmpID> <date> <amount>

	Attachment 1: In the case where the selected employee is not paid by the commission.
	  Output an error message only, and perform no further processing.
	"

	"
You should pass this test with TDD.
refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/52922af84ccd4f42f3918aa900f76d56b380af66/Q999-Payroll-Tests.package
"

	| empId transaction employee classification salesReceipt date amount |
	"Arrange"
	empId := 3.
	date := 20230501.
	amount := 100.

	transaction := AddCommissionedEmployee
		               empId: empId
		               name: 'Tom'
		               address: 'home'
		               salary: 3000
		               commissionRate: 20.
	transaction execute.

	"Action"
	transaction := AddSalesReceipt empId: empId date: date amount: amount.
	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.

	classification := employee classification.
	self deny: classification isNil.
	self assert: classification class equals: CommissionedClassification.

	salesReceipt := classification salesReceiptOn: date.
	self deny: salesReceipt isNil.
	self assert: salesReceipt class equals: SalesReceipt.
	self assert: salesReceipt amount equals: amount
]

{ #category : #tests }
N0060AddSalesReceiptTest >> testExecuteSalesReceiptNeedlessEmployee [

	| empId date amount transaction raisedException name address hourlyRate |
	"Arrange"
	empId := 123.
	name := 'Bob'.
	address := 'NY'.
	hourlyRate := 10.

	transaction := AddHourlyEmployee
		               empId: empId
		               name: name
		               address: address
		               hourlyRate: hourlyRate.
	transaction execute.

	date := 20231102.
	amount := 10.

	"Act"
	transaction := AddSalesReceipt empId: empId date: date amount: amount.
	[ transaction execute ]
		on: Exception
		do: [ :e | raisedException := e ].

	"Assert"
	self
		assert: raisedException messageText
		equals:
		'Message not understood: HourlyClassification >> #addSalesReceipt:'
]
