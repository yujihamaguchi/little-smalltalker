Class {
	#name : #Command,
	#superclass : #Object,
	#category : #'My-Example007-Command'
}

{ #category : #execution }
Command >> execute [
	^ self subclassResponsibility 
]
