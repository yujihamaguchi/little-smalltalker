Class {
	#name : #SimpleSushiFactoryTest,
	#superclass : #TestCase,
	#category : #'Q051-Simple-Factory'
}

{ #category : #tests }
SimpleSushiFactoryTest >> testCreateSushi [

	| simpleSushiFactory ikura |
	simpleSushiFactory := SimpleSushiFactory new.
	ikura := Ikura new.

	self
		assert: (simpleSushiFactory createSushi: #Ikura) class
		equals: ikura class.

	self assert: (simpleSushiFactory createSushi: #Karasumi) equals: nil
]
