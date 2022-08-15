Class {
	#name : #LightOnCommand,
	#superclass : #Command,
	#instVars : [
		'light'
	],
	#category : #'My-Example007-Command'
}

{ #category : #'instance creation' }
LightOnCommand class >> light: aLight [
	| lightOnCommand |
	lightOnCommand := self new.
	^ lightOnCommand setLight: aLight
]

{ #category : #execution }
LightOnCommand >> execute [
	light on
]

{ #category : #initialization }
LightOnCommand >> setLight: aLight [ 
	light := aLight.
	^self
]
