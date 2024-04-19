Class {
	#name : #ChangeAffiliation,
	#superclass : #ChangeEmployee,
	#category : #'Q999-Payroll'
}

{ #category : #accessing }
ChangeAffiliation >> affiliation [

	^ self subclassResponsibility
]

{ #category : #initialization }
ChangeAffiliation >> change: anEmployee [

	self recordMembership: anEmployee.
	anEmployee affiliation: self affiliation
]

{ #category : #'as yet unclassified' }
ChangeAffiliation >> recordMembership: anEmployee [

	^ self subclassResponsibility 
]
