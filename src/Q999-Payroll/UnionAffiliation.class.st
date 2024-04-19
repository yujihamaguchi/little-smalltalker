Class {
	#name : #UnionAffiliation,
	#superclass : #Object,
	#traits : 'TServiceChargesCapable',
	#classTraits : 'TServiceChargesCapable classTrait',
	#instVars : [
		'memberId',
		'dues',
		'serviceCharges'
	],
	#category : #'Q999-Payroll'
}

{ #category : #'as yet unclassified' }
UnionAffiliation class >> memberId: aMemberIdNumber dues: aDuesNumber serviceCharges: aServiceCharges [

	^ self new
		  setMemberId: aMemberIdNumber
		  dues: aDuesNumber
		  serviceCharges: aServiceCharges
]

{ #category : #adding }
UnionAffiliation >> addServiceCharge: aServiceCharge [

	serviceCharges add: aServiceCharge 
]

{ #category : #accessing }
UnionAffiliation >> dues [

	^ dues
]

{ #category : #accessing }
UnionAffiliation >> memberId [

	^ memberId
]

{ #category : #'as yet unclassified' }
UnionAffiliation >> serviceChargeOn: aDateNumber [

	^ serviceCharges at: aDateNumber 
]

{ #category : #initialization }
UnionAffiliation >> setMemberId: aMemberIdNumber dues: aDuesNumber serviceCharges: aServiceCharges [

	memberId := aMemberIdNumber.
	dues := aDuesNumber.
	serviceCharges := aServiceCharges.
	^ self
]
