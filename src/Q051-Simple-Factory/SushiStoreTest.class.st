Class {
	#name : #SushiStoreTest,
	#superclass : #TestCase,
	#category : #'Q051-Simple-Factory'
}

{ #category : #tests }
SushiStoreTest >> testOrderSushi [
	| sushi simpleSushiFactory sushiStore |
	sushi := Sushi new.
	sushi stub name willReturn: 'Foo'.
	simpleSushiFactory := SimpleSushiFactory new.
	(simpleSushiFactory stub createSushi: #Foo) willReturn: sushi.
	sushiStore := SushiStore factory: simpleSushiFactory .
	self assert: (sushiStore orderSushi: #Foo) name equals: 'Foo'.
	(simpleSushiFactory should receive createSushi: #Foo) once.
	sushi should receive prepare once.
	sushi should receive box once.
]
