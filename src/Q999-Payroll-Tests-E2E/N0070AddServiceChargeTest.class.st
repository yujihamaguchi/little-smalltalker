Class {
	#name : #N0070AddServiceChargeTest,
	#superclass : #PayrollE2ETestCase,
	#category : #'Q999-Payroll-Tests-E2E'
}

{ #category : #tests }
N0070AddServiceChargeTest >> testExecute [

	"
	[ UseCase5: Request for service charge processing ]
	- AddServiceCharge <memberID> <date> <amount>

	Attachment 1: In the case where the selected memberID is a non-existent union member.
	  Output an error message only, and perform no further processing.
	"

	"
You should pass this test with TDD.
refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/52922af84ccd4f42f3918aa900f76d56b380af66/Q999-Payroll-Tests.package
"

	| empId memberId employee affiliation date serviceCharge amount transaction |
	"Arrange"
	memberId := 456.
	date := 20230801.
	amount := 13.
	empId := 123.

	transaction := AddHourlyEmployee
		               empId: empId
		               name: 'Bill'
		               address: 'Home'
		               hourlyRate: 15.
	transaction execute.

	employee := PayrollDatabase employeeWithId: empId.
	affiliation := UnionAffiliation memberId: memberId dues: 12 serviceCharges: ServiceCharges new.
	employee affiliation: affiliation.
	PayrollDatabase addUnionMember: employee withId: memberId.

	"Action"
	transaction := AddServiceCharge
		               memberId: memberId
		               date: date
		               amount: amount. 
	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.
	affiliation := employee affiliation.
	serviceCharge := affiliation serviceChargeOn: date.
	self deny: serviceCharge isNil.
	self assert: serviceCharge amount equals: amount
]
