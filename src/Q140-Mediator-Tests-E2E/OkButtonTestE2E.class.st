Class {
	#name : 'OkButtonTestE2E',
	#superclass : 'TestCase',
	#category : 'Q140-Mediator-Tests-E2E',
	#package : 'Q140-Mediator-Tests-E2E'
}

{ #category : 'tests' }
OkButtonTestE2E >> testClickWhenLogin [

	| dialog |
	"Arrange"
	dialog := AuthenticationDialog new.
	dialog loginOrRegisterChkBx check.
	self assert: dialog loginOrRegisterChkBx isChecked.

	"Act"
	dialog okButton click.

	"Assert"
	self assert: dialog loginForm isLoggedIn
]
