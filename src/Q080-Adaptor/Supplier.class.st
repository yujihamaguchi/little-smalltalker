Class {
	#name : #Supplier,
	#superclass : #Object,
	#instVars : [
		'deliveryDate'
	],
	#category : #'Q080-Adaptor'
}

{ #category : #accessing }
Supplier >> deliveryDate [

	^ deliveryDate
]

{ #category : #accessing }
Supplier >> deliveryDate: aString [
	deliveryDate := aString.
]
