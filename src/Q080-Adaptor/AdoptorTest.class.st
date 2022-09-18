Class {
	#name : #AdoptorTest,
	#superclass : #TestCase,
	#category : #'Q080-Adaptor'
}

{ #category : #tests }
AdoptorTest >> testAdoptDog [
	| shiba mike catAdaptor |
	shiba := Shiba new.
	mike := Mike new.
	catAdaptor := CatAdaptor cat: mike.
	self assert: shiba bow equals: 'bow'.
	self assert: mike meow equals: 'meow'.
	self assert: catAdaptor bow equals: 'meow'.
]
