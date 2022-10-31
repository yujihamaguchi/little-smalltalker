Class {
	#name : #StereoOnCommandTest,
	#superclass : #TestCase,
	#instVars : [
		'stereo'
	],
	#category : #'Q072-Command'
}

{ #category : #tests }
StereoOnCommandTest >> testExecute [
	| onCommand |
	stereo := Stereo new.
	stereo stub on willReturnYourself.
	stereo stub setCD willReturnYourself.
	(stereo stub setVolume: 11) willReturnYourself .
	onCommand := StereoOnCommand stereo: stereo.
	onCommand execute.
	stereo should receive on once.
	stereo should receive setCD once.
	(stereo should receive setVolume: 11) once
]
