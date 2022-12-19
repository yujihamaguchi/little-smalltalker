Class {
	#name : #PastaTest,
	#superclass : #TestCase,
	#instVars : [
		'sauce',
		'noodle'
	],
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #tests }
PastaTest >> testPrepare [

	| ingredientFactory target aSauce aNoodle aName |
	ingredientFactory := Mock new.
	aSauce := 'foo'.
	aNoodle := 'bar'.
	aName := 'baz'.

	ingredientFactory stub createSauce willReturn: aSauce.
	ingredientFactory stub createNoodle willReturn: aNoodle.

	target := Pasta ingredientFactory: ingredientFactory name: aName.
	self assert: target name equals: aName.

	target prepare.

	self assert: target sauce equals: aSauce.
	self assert: target noodle equals: aNoodle.

	ingredientFactory should receive createSauce once.
	ingredientFactory should receive createNoodle once
]
