Class {
	#name : 'MenuTest',
	#superclass : 'TestCase',
	#category : 'Q090-Composite-Tests',
	#package : 'Q090-Composite-Tests'
}

{ #category : 'tests' }
MenuTest >> testAsPrintingString [

	| menu depthNumber titleForPrinting subComponentsForPrinting |
	"Arrange"
	menu := Menu new.
	depthNumber := 0.

	titleForPrinting := Mock new.
	(menu stub titleForPrinting: depthNumber) willReturn:
		titleForPrinting.

	subComponentsForPrinting := Mock new.
	(menu stub subComponentsForPrinting: depthNumber + 1) willReturn:
		subComponentsForPrinting.

	"Act"
	menu asPrintingString: depthNumber.

	"Assert"
	menu should receive titleForPrinting: depthNumber.
	menu should receive subComponentsForPrinting: depthNumber + 1
]

{ #category : 'tests' }
MenuTest >> testSubComponentsForPrinting [

	| menu depthNumber component1 component2 |
	"Arrange"
	menu := Menu new.
	depthNumber := Mock new.

	component1 := Mock new.
	(component1 stub asPrintingString: depthNumber) willReturnYourself.
	component2 := Mock new.
	(component2 stub asPrintingString: depthNumber) willReturnYourself.
	menu add: component1.
	menu add: component2.
	"Act"
	menu subComponentsForPrinting: depthNumber.

	"Assert"
	component1 should receive asPrintingString: depthNumber.
	component2 should receive asPrintingString: depthNumber
]

{ #category : 'tests' }
MenuTest >> testTitleForPrinting [

	| titleForPrinting indentString title menu depthNumber |
	"Arrange"
	title := 'aMenu'.
	menu := Menu title: title.

	depthNumber := Mock new.
	indentString := '  '.
	(menu stub indentStringFor: depthNumber) willReturn: indentString.

	"Act"
	titleForPrinting := menu titleForPrinting: depthNumber.

	"Assert"
	self
		assert: titleForPrinting
		equals: indentString , '[' , title , ']' , String cr
]
