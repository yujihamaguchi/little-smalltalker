Class {
	#name : #ChangeHold,
	#superclass : #ChangeEmployee,
	#category : #'Q999-Payroll'
}

{ #category : #accessing }
ChangeHold class >> empId: anEmpIdNumber [

	^ self new setEmpId: anEmpIdNumber
]

{ #category : #initialization }
ChangeHold >> change: anEmployee [

	anEmployee method: HoldMethod new
]

{ #category : #initialization }
ChangeHold >> setEmpId: anEmpIdNumber [

	empId := anEmpIdNumber.
	^ self
]
