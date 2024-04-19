Class {
	#name : #DictionaryOrderComparator,
	#superclass : #Object,
	#category : #'Q053-Factory-Method'
}

{ #category : #accessing }
DictionaryOrderComparator >> sortBlock [

	^ [ :a :b | a <= b ]
]
