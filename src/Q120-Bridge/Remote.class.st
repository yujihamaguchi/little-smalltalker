Class {
	#name : #Remote,
	#superclass : #Object,
	#instVars : [
		'device'
	],
	#category : #'Q120-Bridge'
}

{ #category : #'as yet unclassified' }
Remote class >> device: aDevice [

	^ self new setDevice: aDevice
]

{ #category : #initialization }
Remote >> setDevice: aDevice [

	device := aDevice.
	^ self
]

{ #category : #'as yet unclassified' }
Remote >> togglePower [

	device isEnabled
		ifTrue: [ device disable ]
		ifFalse: [ device enable ]
]
