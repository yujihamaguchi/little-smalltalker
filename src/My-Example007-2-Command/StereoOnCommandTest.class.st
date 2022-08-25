Class {
	#name : #StereoOnCommandTest,
	#superclass : #TestCase,
	#instVars : [
		'stereo'
	],
	#category : #'My-Example007-2-Command'
}

{ #category : #tests }
StereoOnCommandTest >> testExecute [
	| onCommand |
	stereo := Stereo new.
	stereo stub on.
	stereo stub setCD.
	stereo stub setVolume: 11.
	onCommand := StereoOnCommand stereo: stereo.
	onCommand execute.
	stereo should receive on once.
	stereo should receive setCD once.
	(stereo should receive setVolume: 11) once.
	
]
