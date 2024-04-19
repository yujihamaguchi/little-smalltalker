Class {
	#name : #ChangeSalariedTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
ChangeSalariedTest >> testExecute [

	| employee salariedClassification monthlySchedule empId salary transaction |
	"Arrange"
	empId := Mock new.
	salary := Mock new.

	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.
	salariedClassification := Mock new.
	(SalariedClassification stub salary: salary) willReturn:
		salariedClassification.
	monthlySchedule := Mock new.
	MonthlySchedule stub new willReturn: monthlySchedule.

	"Act"
	transaction := ChangeSalaried empId: empId salary: salary.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	SalariedClassification should receive salary: salary.
	employee should receive classification: salariedClassification.
	MonthlySchedule should receive new.
	employee should receive schedule: monthlySchedule
]
