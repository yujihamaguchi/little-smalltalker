Class {
	#name : #AdoptorTest,
	#superclass : #TestCase,
	#category : #'Q080-Adaptor'
}

{ #category : #tests }
AdoptorTest >> testArrivalDate [
	"Assume Supplier as the current fixed class.
	I would like to implement Customer/arrivalDate I/F with Supplier/deliveryDate.
	This is because the values are the same but the message names are different
	(due to differences in perspective).  
	The structure would be ""SupplierAdopter adopts Supplier as Customer""."

	| target supplier |
	supplier := Supplier new.
	supplier deliveryDate: '2022/12/27'.

	target := SupplierAdopter supplier: supplier.

	self assert: target arrivalDate equals: supplier deliveryDate
]
