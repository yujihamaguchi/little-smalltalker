Class {
	#name : #ChangeMemberTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
ChangeMemberTest >> testExcecute [

	| employee affiliation empId memberId dues transaction serviceCharges |
	"Arrange"
	empId := Mock new.
	memberId := Mock new.
	dues := Mock new.

	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.

	serviceCharges := Mock new.
	ServiceCharges stub new willReturn: serviceCharges.

	affiliation := Mock new.
	(UnionAffiliation stub
		 memberId: memberId
		 dues: dues
		 serviceCharges: serviceCharges) willReturn: affiliation.

	"Act"
	transaction := ChangeMember
		               empId: empId
		               memberId: memberId
		               dues: dues.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	ServiceCharges should receive new.
	UnionAffiliation should receive
		memberId: memberId
		dues: dues
		serviceCharges: serviceCharges.
	employee should receive affiliation: affiliation.
	PayrollDatabase should receive addUnionMember: employee  withId: memberId
]
