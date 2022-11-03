Class {
	#name : #AdoptorTest,
	#superclass : #TestCase,
	#category : #'Q080-Adaptor'
}

{ #category : #tests }
AdoptorTest >> testAdaptDog [
	| shiba mike catAdapter |
	shiba := Shiba new.
	mike := Mike new.
	catAdapter := CatAdaptor cat: mike.	
	self assert: shiba bow equals: 'bow'.
	self assert: mike meow equals: 'meow'.
	self assert: catAdapter bow equals: 'meow'
]
