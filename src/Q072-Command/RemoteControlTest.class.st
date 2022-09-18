Class {
	#name : #RemoteControlTest,
	#superclass : #TestCase,
	#category : #'Q072-Command'
}

{ #category : #tests }
RemoteControlTest >> testButtonWasPushed [
	| remote stereoOnCommand stereoOffCommand fanOnCommand fanOffCommand |
	remote := RemoteControl new.	

	fanOnCommand := FanOnCommand receiver: Any.
	fanOnCommand stub execute willReturnYourself.
	fanOffCommand := FanOffCommand receiver: Any.
	fanOffCommand stub execute willReturnYourself.
	remote slot: 0 onCommand: fanOnCommand offCommand: fanOffCommand.

	stereoOnCommand := StereoOnCommand receiver: Any.
	stereoOnCommand stub execute willReturnYourself.
	stereoOffCommand := StereoOffCommand receiver: Any.
	stereoOffCommand stub execute willReturnYourself.
	remote slot: 1 onCommand: stereoOnCommand offCommand: stereoOffCommand.

	remote onButtonWasPushed: 0.
	remote offButtonWasPushed: 0.
	remote undoButtonPushed.
	fanOnCommand should receive execute twice.
	fanOffCommand should receive execute once.

	remote onButtonWasPushed: 1.
	remote undoButtonPushed.
	remote onButtonWasPushed: 1.
	remote offButtonWasPushed: 1.	
	stereoOnCommand should receive execute twice.
	stereoOffCommand should receive execute twice.
	
]
