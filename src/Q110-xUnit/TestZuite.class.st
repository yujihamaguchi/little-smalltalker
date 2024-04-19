Class {
	#name : #TestZuite,
	#superclass : #TestCaze,
	#instVars : [
		'testCazes'
	],
	#category : #'Q110-xUnit'
}

{ #category : #adding }
TestZuite >> add: aTestCaze [

	testCazes ifNil: [ testCazes := OrderedCollection new ].
	testCazes add: aTestCaze 
]

{ #category : #running }
TestZuite >> run: aTestRezult [

	testCazes do: [ :each | each run: aTestRezult ]
]
