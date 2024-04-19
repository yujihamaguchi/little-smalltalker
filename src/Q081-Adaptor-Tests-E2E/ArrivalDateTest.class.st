Class {
	#name : #ArrivalDateTest,
	#superclass : #TestCase,
	#category : #'Q081-Adaptor-Tests-E2E'
}

{ #category : #tests }
ArrivalDateTest >> testArrivalDate [

	| customer arrivalDate deliveryDate supplier adapter |
	"Arrange"
	customer := Customer new.

	supplier := Supplier new.
	deliveryDate := '2023/01/14'.
	supplier deliveryDate: deliveryDate.

	adapter := SupplierAdapter supplier: supplier.

	customer supplierAdapter: adapter.

	"Act"
	arrivalDate := customer arrivalDate.

	"Assert"
	self assert: arrivalDate equals: deliveryDate
]
