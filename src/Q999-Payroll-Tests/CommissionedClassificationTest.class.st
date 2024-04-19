Class {
	#name : #CommissionedClassificationTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
CommissionedClassificationTest >> testAddSalesReceipt [

	| salesReceipts salesReceipt classification |
	"Arrange"
	salesReceipt := Mock new.
	salesReceipts := Mock new.
	(salesReceipts stub add: salesReceipt) willReturnYourself.
	classification := CommissionedClassification
		                  salary: Mock new
		                  commissionRate: Mock new
		                  salesReceipts: salesReceipts.

	"Act"
	classification addSalesReceipt: salesReceipt.

	"Assert"
	salesReceipts should receive add: salesReceipt
]
