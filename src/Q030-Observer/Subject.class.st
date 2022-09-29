Class {
	#name : #Subject,
	#superclass : #Object,
	#category : #'Q030-Observer'
}

{ #category : #notifying }
Subject >> notifyObservers [
	^ self subclassResponsibility
]

{ #category : #'observers - experimental' }
Subject >> registerObserver: anObserver [
	^ self subclassResponsibility
]
