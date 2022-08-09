Class {
	#name : #SushiStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-1-Simple-Factory'
}

{ #category : #tests }
SushiStoreTest >> testOrderSushi [
	| sushi sushiFactory sushiStore |
	sushi := Sushi new.
	sushi stub name willReturn: 'Foo'.
	sushiFactory := SushiFactory new.
	(sushiFactory stub createSushi: #Foo) willReturn: sushi.
	sushiStore := SushiStore factory: sushiFactory .
	self assert: (sushiStore orderSushi: #Foo) name equals: 'Foo'.
	(sushiFactory should receive createSushi: #Foo) once.
	sushi should receive prepare once.
	sushi should receive box once.
]
