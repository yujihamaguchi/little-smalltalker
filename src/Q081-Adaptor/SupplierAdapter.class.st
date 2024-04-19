Class {
	#name : #SupplierAdapter,
	#superclass : #Object,
	#traits : 'TSupplierArrivalDate',
	#classTraits : 'TSupplierArrivalDate classTrait',
	#instVars : [
		'supplier'
	],
	#category : #'Q081-Adaptor'
}

{ #category : #accessing }
SupplierAdapter class >> supplier: aSupplier [
	^ self new setSupplier: aSupplier
]

{ #category : #'as yet unclassified' }
SupplierAdapter >> arrivalDate [

	^ supplier deliveryDate
]

{ #category : #initialization }
SupplierAdapter >> setSupplier: aSupplier [
	supplier := aSupplier.
	^ self
]
