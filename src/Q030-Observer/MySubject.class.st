Class {
	#name : #MySubject,
	#superclass : #Object,
	#instVars : [
		'observers'
	],
	#category : #'Q030-Observer'
}

{ #category : #initialization }
MySubject >> initialize [

	observers := Set new.
	^ self
]

{ #category : #notifying }
MySubject >> notifyObservers [

	observers do: [ :observer | observer update: self ]
]

{ #category : #private }
MySubject >> register: anObserver [

	observers add: anObserver
]
