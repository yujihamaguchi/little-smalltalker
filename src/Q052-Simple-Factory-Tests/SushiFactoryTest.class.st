Class {
	#name : #SushiFactoryTest,
	#superclass : #TestCase,
	#category : #'Q052-Simple-Factory-Tests'
}

{ #category : #tests }
SushiFactoryTest >> testCreateSushi [

	| target |
	"Arrange"
	target := SushiFactory new.

	"Act + Assert"
	self assert: (target createSushi: #Ikura) class equals: Ikura.
	self assert: (target createSushi: #Norimaki) class equals: Norimaki
]
