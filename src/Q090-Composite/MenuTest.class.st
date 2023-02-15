Class {
	#name : #MenuTest,
	#superclass : #TestCase,
	#category : #'Q090-Composite'
}

{ #category : #tests }
MenuTest >> testPrint [

	| target menuComponent1 menuComponent2 |
	"Use lazy initializetion for the Menu class"
	target := Menu new.
	menuComponent1 := Mock new.
	menuComponent2 := Mock new.
	target add: menuComponent1.
	target add: menuComponent2.

	target print.

	menuComponent1 should receive print once.
	menuComponent2 should receive print once
]
