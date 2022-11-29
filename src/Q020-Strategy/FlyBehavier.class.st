Class {
	#name : #FlyBehavier,
	#superclass : #Object,
	#category : #'Q020-Strategy'
}

{ #category : #'undo - undo' }
FlyBehavier >> do [
	^ self subclassResponsibility 
]
