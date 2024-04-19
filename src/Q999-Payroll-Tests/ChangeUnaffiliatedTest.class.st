Class {
	#name : #ChangeUnaffiliatedTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
ChangeUnaffiliatedTest >> testExecute [

	| empId employee transaction noAffiliation affiliation memberId |
	"Arrange"
	empId := 123.

	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.

	affiliation := Mock new.
	employee stub affiliation willReturn: affiliation.

	memberId := 456.
	affiliation stub memberId willReturn: memberId.

	noAffiliation := Mock new.
	NoAffiliation stub new willReturn: noAffiliation.

	(PayrollDatabase stub removeUnionMemberWithId: memberId)
		willReturnYourself.

	"Act"
	transaction := ChangeUnaffiliated empId: empId.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	employee should receive affiliation.
	affiliation should receive memberId.
	NoAffiliation should receive new.
	employee should receive affiliation: noAffiliation.
	PayrollDatabase should receive removeUnionMemberWithId: memberId
]
