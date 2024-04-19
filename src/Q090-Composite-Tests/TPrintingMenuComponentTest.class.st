Class {
	#name : #TPrintingMenuComponentTest,
	#superclass : #TestCase,
	#instVars : [
		'tempMenuComponentClass'
	],
	#category : #'Q090-Composite-Tests'
}

{ #category : #initialization }
TPrintingMenuComponentTest >> setUp [

	tempMenuComponentClass := Object
		                          subclass: #TempMenuComponentClass
		                          uses: TPrintingMenuComponent
		                          instanceVariableNames: ''
		                          classVariableNames: ''
		                          package: 'Q090-Composite'
]

{ #category : #running }
TPrintingMenuComponentTest >> tearDown [

	tempMenuComponentClass removeFromSystem
]

{ #category : #tests }
TPrintingMenuComponentTest >> testIndentStringFor [

	| menuComponent depthNumber indentString |
	"Arrange"
	menuComponent := tempMenuComponentClass new.
	depthNumber := 2.

	"Act"
	indentString := menuComponent indentStringFor: depthNumber.

	"Assert"
	self assert: indentString equals: '    '
]
