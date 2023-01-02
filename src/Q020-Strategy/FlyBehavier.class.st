Class {
	#name : #FlyBehavier,
	#superclass : #Object,
	#category : #'Q020-Strategy'
}

{ #category : #'as yet unclassified' }
FlyBehavier >> perform [
	^ self subclassResponsibility 
]
