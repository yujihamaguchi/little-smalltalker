Class {
	#name : #SupplierAdopter,
	#superclass : #Customer,
	#instVars : [
		'supplier'
	],
	#category : #'Q080-Adaptor'
}

{ #category : #'as yet unclassified' }
SupplierAdopter class >> supplier: aSupplier [
	^ self new setSupplier: aSupplier
]

{ #category : #'as yet unclassified' }
SupplierAdopter >> arrivalDate [
	^ supplier deliveryDate
]

{ #category : #initialization }
SupplierAdopter >> setSupplier: aSupplier [
	supplier := aSupplier.
	^ self
]
