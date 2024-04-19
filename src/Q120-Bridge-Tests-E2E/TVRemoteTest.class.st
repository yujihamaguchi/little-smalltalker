Class {
	#name : #TVRemoteTest,
	#superclass : #TestCase,
	#category : #'Q120-Bridge-Tests-E2E'
}

{ #category : #tests }
TVRemoteTest >> testTogglePower [

	| tv remote |
	"Arrange"
	tv := Television new.
	remote := Remote device: tv.
	self assert: tv isEnabled equals: false.

	"Act"
	remote togglePower.

	"Assert"
	self assert: tv isEnabled equals: true
]
