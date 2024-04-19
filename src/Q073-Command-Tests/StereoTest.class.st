Class {
	#name : #StereoTest,
	#superclass : #TestCase,
	#category : #'Q073-Command-Tests'
}

{ #category : #tests }
StereoTest >> testVolumeDownAtMinimumVolume [

	| stereo minimumVolume |
	"Arrange"
	stereo := Stereo new.
	minimumVolume := stereo defaultVolume.
	stereo stub minimumVolume willReturn: minimumVolume.
	self assert: stereo volume equals: minimumVolume.

	"Act"
	stereo volumeDown.

	"Assert"
	self assert: stereo volume equals: minimumVolume
]

{ #category : #tests }
StereoTest >> testVolumeUpAtMaximumVolume [

	| stereo maximumVolume |
	"Arrange"
	stereo := Stereo new.
	maximumVolume := stereo defaultVolume.
	stereo stub maximumVolume willReturn: maximumVolume.
	self assert: stereo volume equals: maximumVolume.

	"Act"
	stereo volumeUp.

	"Assert"
	self assert: stereo volume equals: maximumVolume
]
