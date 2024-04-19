Class {
	#name : #MenuItemTest,
	#superclass : #TestCase,
	#category : #'Q090-Composite-Tests'
}

{ #category : #tests }
MenuItemTest >> testAsPrintingString [

	| titleForPrinting menuItem depthNumber result |
	"Arrange"
	menuItem := MenuItem new.
	depthNumber := Mock new.
	titleForPrinting := Mock new.
	(menuItem stub titleForPrinting: depthNumber) willReturn:
		titleForPrinting.

	"Act"
	result := menuItem asPrintingString: depthNumber.

	"Assert"
	menuItem should receive titleForPrinting: depthNumber.
	self assert: result equals: titleForPrinting
]

{ #category : #tests }
MenuItemTest >> testTitleForPrinting [

	| menuItem depthNumber titleForPrinting title indentString |
	"Arrange"
	title := 'aMenuItem'.
	menuItem := MenuItem title: title.

	depthNumber := Mock new.
	indentString := '  '.
	(menuItem stub indentStringFor: depthNumber) willReturn: indentString.

	"Act"
	titleForPrinting := menuItem titleForPrinting: depthNumber.

	"Assert"
	self assert: titleForPrinting equals: indentString , title
]
