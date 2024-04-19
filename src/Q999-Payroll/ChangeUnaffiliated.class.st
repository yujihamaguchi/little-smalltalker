Class {
	#name : #ChangeUnaffiliated,
	#superclass : #ChangeAffiliation,
	#category : #'Q999-Payroll'
}

{ #category : #accessing }
ChangeUnaffiliated class >> empId: anEmpIdNumber [

	^ self new setEmpId: anEmpIdNumber
]

{ #category : #accessing }
ChangeUnaffiliated >> affiliation [

^ NoAffiliation new
]

{ #category : #'as yet unclassified' }
ChangeUnaffiliated >> recordMembership: anEmployee [

	| affiliation memberId |
	affiliation := anEmployee affiliation.
	memberId := affiliation memberId.
	PayrollDatabase removeUnionMemberWithId: memberId
]

{ #category : #initialization }
ChangeUnaffiliated >> setEmpId: anEmpIdNumber [

	empId := anEmpIdNumber.
	^ self
]
