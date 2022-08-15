Class {
	#name : #RemoteControlTest,
	#superclass : #TestCase,
	#category : #'My-Example007-Command'
}

{ #category : #tests }
RemoteControlTest >> testButtonWasPushed [
	| remote light stereo stereoOnCommand stereoOffCommand ceilingFanOnCommand ceilingFanOffCommand |
	remote := RemoteControl new.
	light := Light new.
	light stub.
	stereo := Stereo new.
	stereo stub.
	ceilingFanOnCommand := CeilingFanOnCommand receiver: light.
	ceilingFanOnCommand stub.
	ceilingFanOffCommand := CeilingFanOffCommand receiver: light.
	ceilingFanOffCommand stub.
	stereoOnCommand := StereoOnCommand receiver: stereo.
	stereoOnCommand stub.
	stereoOffCommand := StereoOffCommand receiver: stereo.
	stereoOffCommand stub.
	remote onButtonWasPushed: 0.
	remote offButtonWasPushed: 0.
	remote onButtonWasPushed: 1.
	remote offButtonWasPushed: 1.
	light should receive on once.
	stereo should receive on once.
	stereo should receive play once.
	
	
]
