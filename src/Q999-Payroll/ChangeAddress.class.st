Class {
	#name : #ChangeAddress,
	#superclass : #ChangeEmployee,
	#instVars : [
		'address'
	],
	#category : #'Q999-Payroll'
}

{ #category : #'as yet unclassified' }
ChangeAddress class >> empId: anEmpIdNumber address: anAddressString [

	^ self new setEmpId: anEmpIdNumber address: anAddressString
]

{ #category : #initialization }
ChangeAddress >> change: anEmployee [

	anEmployee address: address
]

{ #category : #initialization }
ChangeAddress >> setEmpId: anEmpIdNumber address: anAddressString [

	empId := anEmpIdNumber.
	address := anAddressString.
	^ self
]
