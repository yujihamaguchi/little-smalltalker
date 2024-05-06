Class {
	#name : 'TPrintingMenuComponentTest',
	#superclass : 'TestCase',
	#instVars : [
		'tempMenuComponentClass'
	],
	#category : 'Q090-Composite-Tests',
	#package : 'Q090-Composite-Tests'
}

{ #category : 'initialization' }
TPrintingMenuComponentTest >> setUp [

	tempMenuComponentClass := Object classInstaller make: [ :builder |
		                          builder
			                          superclass: Object;
			                          name: #TempMenuComponentClass;
			                          slotsFromString: '';
			                          sharedVariablesFromString: '';
			                          traitComposition: TPrintingMenuComponent;
			                          package: 'Q090-Composite';
			                          environment: Object environment ]
]

{ #category : 'running' }
TPrintingMenuComponentTest >> tearDown [

	tempMenuComponentClass removeFromSystem
]

{ #category : 'tests' }
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
