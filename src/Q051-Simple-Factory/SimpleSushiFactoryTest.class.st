Class {
	#name : #SimpleSushiFactoryTest,
	#superclass : #TestCase,
	#category : #'Q051-Simple-Factory'
}

{ #category : #tests }
SimpleSushiFactoryTest >> testCreateSushi [
	| target ikura |
	target := SimpleSushiFactory new.
	ikura := Ikura new.

	self
		assert: (target createSushi: #Ikura) class
		equals: ikura class.

	self assert: (target createSushi: #Karasumi) equals: nil
]
