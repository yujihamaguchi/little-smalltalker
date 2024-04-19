Class {
	#name : #PayrollE2ETestCase,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests-E2E'
}

{ #category : #initialization }
PayrollE2ETestCase >> setUp [

	super setUp.
	PayrollDatabase setUp
]

{ #category : #running }
PayrollE2ETestCase >> tearDown [

	super tearDown
]
