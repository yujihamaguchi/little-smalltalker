Class {
	#name : 'LoginForm',
	#superclass : 'Component',
	#instVars : [
		'loggedIn'
	],
	#category : 'Q140-Mediator',
	#package : 'Q140-Mediator'
}

{ #category : 'initialization' }
LoginForm >> initialize [ 
	super initialize .
	loggedIn := false.
	^ self
]

{ #category : 'testing' }
LoginForm >> isLoggedIn [

	^ loggedIn
]

{ #category : 'as yet unclassified' }
LoginForm >> logIn [

	loggedIn := true
]
