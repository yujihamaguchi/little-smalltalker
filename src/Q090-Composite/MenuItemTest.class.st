Class {
	#name : #MenuItemTest,
	#superclass : #TestCase,
	#category : #'Q090-Composite'
}

{ #category : #tests }
MenuItemTest >> testPrint [
	| target |
	target := MenuItem name: 'foo'.
	self assert: target print equals: 'foo'
]
