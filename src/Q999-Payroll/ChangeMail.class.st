Class {
	#name : #ChangeMail,
	#superclass : #ChangeEmployee,
	#category : #'Q999-Payroll'
}

{ #category : #accessing }
ChangeMail class >> empId: anEmpIdNumber [

	^ self new setEmpId: anEmpIdNumber
]

{ #category : #initialization }
ChangeMail >> change: anEmployee [

	anEmployee method: MailMethod new
]

{ #category : #initialization }
ChangeMail >> setEmpId: anEmpIdNumber [

	empId := anEmpIdNumber.
	^ self
]
