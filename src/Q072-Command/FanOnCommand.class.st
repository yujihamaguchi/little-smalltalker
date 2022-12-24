Class {
	#name : #FanOnCommand,
	#superclass : #Object,
	#instVars : [
		'fan'
	],
	#category : #'Q072-Command'
}

{ #category : #'as yet unclassified' }
FanOnCommand class >> fan: aFan [
	^ self new setFan: aFan
]

{ #category : #execution }
FanOnCommand >> execute [
	fan on.
]

{ #category : #initialization }
FanOnCommand >> setFan: aFan [
	fan := aFan.
	^ self
]
