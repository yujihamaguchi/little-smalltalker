Class {
	#name : #ChangeName,
	#superclass : #ChangeEmployee,
	#instVars : [
		'name'
	],
	#category : #'Q999-Payroll'
}

{ #category : #'as yet unclassified' }
ChangeName class >> empId: anEmpIdNumber name: aNameString [

	^ self new setEmpId: anEmpIdNumber name: aNameString
]

{ #category : #initialization }
ChangeName >> change: anEmployee [

	anEmployee name: name
]

{ #category : #initialization }
ChangeName >> setEmpId: anEmpIdNumber name: aNameString [

	empId := anEmpIdNumber .
	name := aNameString .
	^ self
]
