Class {
	#name : #CatAdaptor,
	#superclass : #Dog,
	#instVars : [
		'cat'
	],
	#category : #'My-Example008-Adaptor'
}

{ #category : #'as yet unclassified' }
CatAdaptor class >> cat: aCat [
	^ self new setCat: aCat
]

{ #category : #'as yet unclassified' }
CatAdaptor >> bow [
	^ cat meow
]

{ #category : #initialization }
CatAdaptor >> setCat: aCat [
	cat := aCat.
	^ self
]

{ #category : #initialization }
CatAdaptor >> setDog: aDog [
	dog := aDog.
	^ self
]
