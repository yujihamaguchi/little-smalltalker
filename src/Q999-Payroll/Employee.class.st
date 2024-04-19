Class {
	#name : #Employee,
	#superclass : #Object,
	#instVars : [
		'id',
		'name',
		'address',
		'classification',
		'method',
		'schedule',
		'affiliation'
	],
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #'as yet unclassified' }
Employee class >> id: anEmpIdNumber name: aNameString address: anAddressString [

	^ self new
		  setId: anEmpIdNumber
		  name: aNameString
		  address: anAddressString
]

{ #category : #accessing }
Employee >> address [

	^ address
]

{ #category : #accessing }
Employee >> address: anObject [

	address := anObject
]

{ #category : #accessing }
Employee >> affiliation [

	^ affiliation
]

{ #category : #'as yet unclassified' }
Employee >> affiliation: anAffiliation [

	affiliation := anAffiliation 
]

{ #category : #accessing }
Employee >> classification [

	^ classification
]

{ #category : #accessing }
Employee >> classification: aClassification [

	classification := aClassification
]

{ #category : #accessing }
Employee >> id [

	^ id
]

{ #category : #accessing }
Employee >> method [

	^ method
]

{ #category : #accessing }
Employee >> method: aMethod [

	method := aMethod
]

{ #category : #accessing }
Employee >> name [

	^ name
]

{ #category : #accessing }
Employee >> name: anObject [

	name := anObject
]

{ #category : #accessing }
Employee >> schedule [

	^ schedule
]

{ #category : #accessing }
Employee >> schedule: aSchedule [

	schedule := aSchedule
]

{ #category : #initialization }
Employee >> setId: anEmpIdNumber name: aNameString address: anAddressString [

	id := anEmpIdNumber.
	name := aNameString.
	address := anAddressString.
	^ self
]
