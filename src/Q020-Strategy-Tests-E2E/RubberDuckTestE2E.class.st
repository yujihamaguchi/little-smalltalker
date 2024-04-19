Class {
	#name : #RubberDuckTestE2E,
	#superclass : #TestCase,
	#category : #'Q020-Strategy-Tests-E2E'
}

{ #category : #tests }
RubberDuckTestE2E >> testFly [

	| rubberDuck rubberDuckFlyBehavier |
	"Arrange"
	rubberDuck := RubberDuck flyBehavier: FlyNoWay new.

	"Act"
	rubberDuckFlyBehavier := rubberDuck fly.

	"Assert"
	self assert: rubberDuckFlyBehavier equals: 'No way!'
]
