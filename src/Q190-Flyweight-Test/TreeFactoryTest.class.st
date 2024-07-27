Class {
	#name : 'TreeFactoryTest',
	#superclass : 'TestCase',
	#category : 'Q190-Flyweight-Test',
	#package : 'Q190-Flyweight-Test'
}

{ #category : 'tests' }
TreeFactoryTest >> testExistingType [

	| name color texture |
	"Act"
	TreeFactory typeWithName: name color: color texture: texture.
	"Assert"
	self assert: false
]

{ #category : 'tests' }
TreeFactoryTest >> testNewlyCreatingType [

	| name color texture |
	"Act"
	TreeFactory typeWithName: name color: color texture: texture.
	"Assert"
	self assert: false
]
