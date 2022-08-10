Class {
	#name : #SimpleSushiFactoryTest,
	#superclass : #TestCase,
	#category : #'My-Example005-1-Simple-Factory'
}

{ #category : #tests }
SimpleSushiFactoryTest >> testCreateSushi [
	| simpleSushiFactory ikura |
	simpleSushiFactory := SimpleSushiFactory  new.
	ikura := Ikura new.
	self assert: (simpleSushiFactory createSushi: #Ikura) class equals: ikura class
]
