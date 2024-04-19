Class {
	#name : #Stereo,
	#superclass : #Object,
	#instVars : [
		'volume'
	],
	#category : #'Q073-Command'
}

{ #category : #'as yet unclassified' }
Stereo >> defaultVolume [

	^ 5
]

{ #category : #initialization }
Stereo >> initialize [

	super initialize.
	volume := self defaultVolume
]

{ #category : #accessing }
Stereo >> maximumVolume [

	^ 10
]

{ #category : #accessing }
Stereo >> minimumVolume [

	^ 0
]

{ #category : #'as yet unclassified' }
Stereo >> volume [

	^ volume
]

{ #category : #'as yet unclassified' }
Stereo >> volumeDown [

	volume > self minimumVolume ifTrue: [ volume := volume - 1 ]
]

{ #category : #'as yet unclassified' }
Stereo >> volumeUp [

	volume < self maximumVolume ifTrue: [ volume := volume + 1 ]
]
