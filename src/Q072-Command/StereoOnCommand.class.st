Class {
	#name : #StereoOnCommand,
	#superclass : #Command,
	#instVars : [
		'stereo'
	],
	#category : #'Q072-Command'
}

{ #category : #'as yet unclassified' }
StereoOnCommand class >> stereo: aStereo [
	^ self new setStereo: aStereo
]

{ #category : #execution }
StereoOnCommand >> execute [
	stereo on.
	stereo setCD.
	stereo setVolume: 11.
]

{ #category : #initialization }
StereoOnCommand >> setStereo: aStereo [
	stereo := aStereo.
	^self
]
