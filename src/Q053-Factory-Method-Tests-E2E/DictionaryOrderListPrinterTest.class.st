Class {
	#name : #DictionaryOrderListPrinterTest,
	#superclass : #TestCase,
	#category : #'Q053-Factory-Method-Tests-E2E'
}

{ #category : #tests }
DictionaryOrderListPrinterTest >> testPrintList [

	| dictionaryOrderListPrinter result |
	"Arrange"
	dictionaryOrderListPrinter := DictionaryOrderListPrinter new.

	"Act"
	result := dictionaryOrderListPrinter printList:
		          (MyArray newFrom: { 'banana'. 'cake'. 'apple' }).

	"Assert"
	self assert: result equals: 'a MyArray(''apple'' ''banana'' ''cake'')'
]
