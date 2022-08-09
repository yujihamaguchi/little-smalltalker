Class {
	#name : #ToyosuSushiFactoryTest,
	#superclass : #TestCase,
	#category : #'My-Example005-1-Simple-Factory'
}

{ #category : #tests }
ToyosuSushiFactoryTest >> testCreateSushi [
	| toyosuSushiFactory ikura |
	toyosuSushiFactory := ToyosuSushiFactory new.
	ikura := Ikura new.
	self assert: (toyosuSushiFactory createSushi: #Ikura) class equals: ikura class
]
