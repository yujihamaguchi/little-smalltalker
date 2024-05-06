Class {
	#name : 'AuthenticationDialog',
	#superclass : 'Object',
	#instVars : [
		'title',
		'loginOrRegisterChkBx',
		'loginForm',
		'registerForm',
		'okButton'
	],
	#category : 'Q140-Mediator',
	#package : 'Q140-Mediator'
}

{ #category : 'initialization' }
AuthenticationDialog >> initialize [

	super initialize.
	loginOrRegisterChkBx := LoginOrRegisterCheckbox dialog: self.
	loginForm := LoginForm dialog: self.
	registerForm := RegisterForm dialog: self.
	okButton := OkButton dialog: self.
	^ self
]

{ #category : 'accessing' }
AuthenticationDialog >> loginForm [

	^ loginForm
]

{ #category : 'accessing' }
AuthenticationDialog >> loginOrRegisterChkBx [

	^ loginOrRegisterChkBx
]

{ #category : 'as yet unclassified' }
AuthenticationDialog >> notify: aComponent event: aSymbol [

	self title: 'Log in'.
	self loginForm enable.
	self registerForm disable.
]

{ #category : 'accessing' }
AuthenticationDialog >> okButton [

	^ okButton
]

{ #category : 'accessing' }
AuthenticationDialog >> registerForm [

	^ registerForm
]

{ #category : 'accessing' }
AuthenticationDialog >> title [

	^ title
]

{ #category : 'accessing' }
AuthenticationDialog >> title: aString [

	title := aString
]
