Class {
	#name : #ChangeCommissionedTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
ChangeCommissionedTest >> testExecute [

	| employee commissionedClassification biweekSchedule empId salary commissionRate transaction salesReceipts |
	"Arrange"
	empId := Mock new.
	salary := Mock new.
	commissionRate := Mock new.

	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.

	salesReceipts := Mock new.
	SalesReceipts stub new willReturn: salesReceipts.

	commissionedClassification := Mock new.
	(CommissionedClassification stub
		 salary: salary
		 commissionRate: commissionRate
		 salesReceipts: salesReceipts) willReturn:
		commissionedClassification.

	biweekSchedule := Mock new.
	BiweekSchedule stub new willReturn: biweekSchedule.

	"Act"
	transaction := ChangeCommissoned
		               empId: empId
		               salary: salary
		               commissionRate: commissionRate.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	SalesReceipts should receive new.
	CommissionedClassification should receive
		salary: salary
		commissionRate: commissionRate
		salesReceipts: salesReceipts.
	employee should receive classification: commissionedClassification.
	BiweekSchedule should receive new.
	employee should receive schedule: biweekSchedule
]
