Class {
	#name : #TestRezult,
	#superclass : #Object,
	#instVars : [
		'runCount',
		'errorCount'
	],
	#category : #'Q110-xUnit'
}

{ #category : #initialization }
TestRezult >> initialize [

	runCount := 0.
	errorCount := 0.
	^ self
]

{ #category : #accessing }
TestRezult >> summary [

	^ '{1} run, {2} failed' format: { 
			  runCount.
			  errorCount }
]

{ #category : #tests }
TestRezult >> testFailed [

	errorCount := errorCount + 1
]

{ #category : #tests }
TestRezult >> testStarted [

	runCount := runCount + 1
]
