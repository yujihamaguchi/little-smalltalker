Class {
	#name : #StereoVolumeUpCommandTest,
	#superclass : #TestCase,
	#category : #'Q071-Command'
}

{ #category : #tests }
StereoVolumeUpCommandTest >> testExecute [
	| target stereo |
	stereo := Mock new.
	target := StereoVolumeUpCommand receiver: stereo.

	target execute.

	stereo should receive volumeUp
]
