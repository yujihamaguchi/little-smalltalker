Class {
	#name : 'LoginOrRegisterCheckboxTestE2E',
	#superclass : 'TestCase',
	#category : 'Q140-Mediator-Tests-E2E',
	#package : 'Q140-Mediator-Tests-E2E'
}

{ #category : 'tests' }
LoginOrRegisterCheckboxTestE2E >> testCheck [

	| dialog |
	"Arrange"
	dialog := AuthenticationDialog new.
	self assert: dialog loginForm isDisabled.
	self assert: dialog registerForm isEnabled.
	self deny: dialog loginOrRegisterChkBx isChecked.

	"Act"
	dialog loginOrRegisterChkBx check.

	"Assert"
	self assert: dialog title equals: 'Log in'.
	self assert: dialog loginForm isEnabled.
	self assert: dialog registerForm isDisabled.
	self assert: dialog loginOrRegisterChkBx isChecked
]
