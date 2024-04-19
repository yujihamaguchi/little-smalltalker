Class {
	#name : #DuckTest,
	#superclass : #TestCase,
	#category : #'Q020-Strategy-Tests'
}

{ #category : #tests }
DuckTest >> testFly [

	| flyBehavier duck |
	"Arrange"
	flyBehavier := Mock new.
	duck := Duck flyBehavier: flyBehavier.

	"Act"
	duck fly.

	"Assert"
	flyBehavier should receive fly
]
