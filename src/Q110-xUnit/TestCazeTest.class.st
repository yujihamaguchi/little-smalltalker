Class {
	#name : #TestCazeTest,
	#superclass : #TestCaze,
	#instVars : [
		'result'
	],
	#category : #'Q110-xUnit'
}

{ #category : #initialization }
TestCazeTest >> setUp [

	result := TestRezult new
]

{ #category : #tests }
TestCazeTest >> testFailedResult [

	| test |
	"Arrange"
	test := WasRun name: 'testBrokenMethod'.
	"Act"
	result := test run: result.
	"Assert"
	TestCase new assert: result summary equals: '1 run, 1 failed'
]

{ #category : #tests }
TestCazeTest >> testFailedResultFormatting [

	"Act"
	result testStarted.
	result testFailed.
	"Assert"
	TestCase new assert: result summary equals: '1 run, 1 failed'
]

{ #category : #tests }
TestCazeTest >> testRezult [

	| test |
	"Arrange"
	test := WasRun name: 'testMethod'.
	"Act"
	result := test run: result.
	"Assert"
	TestCase new assert: result summary equals: '1 run, 0 failed'
]

{ #category : #tests }
TestCazeTest >> testTemplateMethod [

	| test |
	"Arrange"
	test := WasRun name: 'testMethod'.
	"Act"
	test run: result.
	"Assert"
	TestCase new assert: test log equals: 'setUp testMethod tearDown '
]

{ #category : #tests }
TestCazeTest >> testZuite [

	| suite |
	suite := TestZuite new.
	suite add: (WasRun name: 'testMethod').
	suite add: (WasRun name: 'testBrokenMethod').
	suite run: result.
	TestCase new assert: result summary equals: '2 run, 1 failed'
]
