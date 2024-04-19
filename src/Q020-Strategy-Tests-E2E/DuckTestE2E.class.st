Class {
	#name : #DuckTestE2E,
	#superclass : #TestCase,
	#category : #'Q020-Strategy-Tests-E2E'
}

{ #category : #tests }
DuckTestE2E >> testFly [

	| duck duckFlyBehavier |
	"Arrange"
	duck := Duck flyBehavier: FlyWithWings new.

	"Act"
	duckFlyBehavier := duck fly.

	"Assert"
	self assert: duckFlyBehavier equals: 'Flying with wings...'
]
