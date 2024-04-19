Class {
	#name : #ChangeMember,
	#superclass : #ChangeAffiliation,
	#instVars : [
		'memberId',
		'dues'
	],
	#category : #'Q999-Payroll'
}

{ #category : #'as yet unclassified' }
ChangeMember class >> empId: anEmpIdNumber memberId: aMemberIdNumber dues: aDuesNumber [

	^ self new
		  setEmpId: anEmpIdNumber
		  memberId: aMemberIdNumber
		  dues: aDuesNumber
]

{ #category : #accessing }
ChangeMember >> affiliation [

	^ UnionAffiliation
		  memberId: memberId
		  dues: dues
		  serviceCharges: ServiceCharges new
]

{ #category : #'as yet unclassified' }
ChangeMember >> recordMembership: anEmployee [

	PayrollDatabase addUnionMember: anEmployee withId: memberId
]

{ #category : #initialization }
ChangeMember >> setEmpId: anEmpIdNumber memberId: aMemberIdNumber dues: aDuesNumber [

	empId := anEmpIdNumber.
	memberId := aMemberIdNumber.
	dues := aDuesNumber.
	^ self
]
