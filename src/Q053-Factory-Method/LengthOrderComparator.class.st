Class {
	#name : #LengthOrderComparator,
	#superclass : #Object,
	#category : #'Q053-Factory-Method'
}

{ #category : #sorting }
LengthOrderComparator >> sortBlock [

	^ [ :a :b | a size <= b size ]
]
