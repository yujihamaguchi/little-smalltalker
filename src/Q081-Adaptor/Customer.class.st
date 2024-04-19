Class {
	#name : #Customer,
	#superclass : #Object,
	#instVars : [
		'supplierAdapter'
	],
	#category : #'Q081-Adaptor'
}

{ #category : #'as yet unclassified' }
Customer >> arrivalDate [

	^ supplierAdapter arrivalDate 
]

{ #category : #accessing }
Customer >> supplierAdapter: aSupplierAdapter [

	supplierAdapter := aSupplierAdapter
]
