Class {
	#name : #FanOnCommand,
	#superclass : #Command,
	#instVars : [
		'fan'
	],
	#category : #'My-Example007-2-Command'
}

{ #category : #'as yet unclassified' }
FanOnCommand class >> fan: aFan [
	^self new setFan: aFan
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
