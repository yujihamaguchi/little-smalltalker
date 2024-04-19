Class {
	#name : #PayrollDatabase,
	#superclass : #Object,
	#instVars : [
		'employees'
	],
	#classInstVars : [
		'employees',
		'unionMembers'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
PayrollDatabase class >> addEmployee: anEmployee [

	employees at: anEmployee id put: anEmployee
]

{ #category : #adding }
PayrollDatabase class >> addUnionMember: anEmployee withId: aMemberIdNumber [

	unionMembers at: aMemberIdNumber put: anEmployee
]

{ #category : #initialization }
PayrollDatabase class >> cleanUp [

	employees := nil.
	unionMembers := nil.
]

{ #category : #initialization }
PayrollDatabase class >> employeeWithId: anEmpIdNumber [

	^ employees at: anEmpIdNumber ifAbsent: [ nil ]
]

{ #category : #'as yet unclassified' }
PayrollDatabase class >> employeeWithUnionMemberId: anUnionMemberId [

	^ unionMembers at: anUnionMemberId ifAbsent: [ nil ]
]

{ #category : #removing }
PayrollDatabase class >> removeEmployeeWithId: anEmpIdNumber [

	employees removeKey: anEmpIdNumber
]

{ #category : #'as yet unclassified' }
PayrollDatabase class >> removeUnionMemberWithId: aMemberIdNumber [

	unionMembers removeKey: aMemberIdNumber
]

{ #category : #initialization }
PayrollDatabase class >> setUp [

	employees := Dictionary new.
	unionMembers := Dictionary new.
]
