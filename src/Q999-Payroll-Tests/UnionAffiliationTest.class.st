Class {
	#name : #UnionAffiliationTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
UnionAffiliationTest >> testAddServiceCharge [

	| affiliation serviceCharge serviceCharges memberId dues |
	memberId := Mock new.
	dues := Mock new.
	serviceCharges := Mock new.
	affiliation := Mock new.
	serviceCharge := Mock new.

	affiliation := UnionAffiliation
		               memberId: memberId
		               dues: dues
		               serviceCharges: serviceCharges.

	"Act"
	affiliation addServiceCharge: serviceCharge.

	"Assert"
	serviceCharges should receive add: serviceCharge
]

{ #category : #tests }
UnionAffiliationTest >> testServiceChargeOn [

	| affiliation date serviceCharges |
	"Arrange"
	date := Mock new.
	serviceCharges := Mock new.
	affiliation := UnionAffiliation
		               memberId: Mock new
		               dues: Mock new
		               serviceCharges: serviceCharges.
	"Act"
	affiliation serviceChargeOn: date.

	"Assert"
	serviceCharges should receive at: date
]
