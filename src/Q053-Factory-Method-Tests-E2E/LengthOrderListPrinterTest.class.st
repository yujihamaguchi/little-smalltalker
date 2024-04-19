Class {
	#name : #LengthOrderListPrinterTest,
	#superclass : #TestCase,
	#category : #'Q053-Factory-Method-Tests-E2E'
}

{ #category : #tests }
LengthOrderListPrinterTest >> testPrintList [

	| result lengthOrderListPrinter |
	"Arrange"
	lengthOrderListPrinter := LengthOrderListPrinter new.

	"Act"
	result := lengthOrderListPrinter printList:
		          (MyArray newFrom: { 'banana'. 'cake'. 'apple' }).

	"Assert"
	self
		assert: result
		equals: 'a MyArray(''cake'' ''apple'' ''banana'')'
]
