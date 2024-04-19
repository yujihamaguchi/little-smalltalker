Class {
	#name : #WasRun,
	#superclass : #TestCaze,
	#instVars : [
		'wasRun',
		'wasSetUp',
		'log'
	],
	#category : #'Q110-xUnit'
}

{ #category : #accessing }
WasRun >> log [

	^ log
]

{ #category : #initialization }
WasRun >> setUp [

	log := 'setUp '
]

{ #category : #running }
WasRun >> tearDown [

	log := log , 'tearDown '
]

{ #category : #tests }
WasRun >> testBrokenMethod [

	Exception signal
]

{ #category : #tests }
WasRun >> testMethod [

	log := log , 'testMethod '
]
