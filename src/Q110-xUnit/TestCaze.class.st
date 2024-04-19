Class {
	#name : #TestCaze,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'Q110-xUnit'
}

{ #category : #accessing }
TestCaze class >> name: aString [
	^ self new setName: aString
]

{ #category : #running }
TestCaze >> run: aTestRezult [

	aTestRezult testStarted.
	self setUp.
	[ self perform: name asSymbol ]
		on: Exception
		do: [ aTestRezult testFailed ].
	self tearDown.
	^ aTestRezult
]

{ #category : #initialization }
TestCaze >> setName: aString [

	name := aString.
	^ self
]

{ #category : #initialization }
TestCaze >> setUp [
]

{ #category : #running }
TestCaze >> tearDown [
]
