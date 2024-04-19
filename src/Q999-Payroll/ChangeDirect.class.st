Class {
	#name : #ChangeDirect,
	#superclass : #ChangeEmployee,
	#category : #'Q999-Payroll'
}

{ #category : #accessing }
ChangeDirect class >> empId: anEmpIdNumber [

	^ self new setEmpId: anEmpIdNumber
]

{ #category : #initialization }
ChangeDirect >> change: anEmployee [

	anEmployee method: DirectMethod new
]

{ #category : #initialization }
ChangeDirect >> setEmpId: anEmpIdNumber [

	empId := anEmpIdNumber.
	^ self
]
