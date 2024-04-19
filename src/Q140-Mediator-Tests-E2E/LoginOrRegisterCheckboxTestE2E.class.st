Class {
	#name : #LoginOrRegisterCheckboxTestE2E,
	#superclass : #TestCase,
	#category : #'Q140-Mediator-Tests-E2E'
}

{ #category : #tests }
LoginOrRegisterCheckboxTestE2E >> testCheck [

	| authenticationDialog |
	"Arrange"
	authenticationDialog := AuthenticationDialog new.
	self assert: authenticationDialog loginForm isDisabled.
	self assert: authenticationDialog registerForm isEnabled.

	"Act"
	authenticationDialog loginOrRegisterChkBx check.

	"Assert"
	self assert: authenticationDialog title equals: 'Log in'.
	self assert: authenticationDialog loginForm isEnabled.
	self assert: authenticationDialog registerForm isDisabled
]
