Class {
	#name : #SushiStoreTest,
	#superclass : #TestCase,
	#category : #'Q051-Simple-Factory'
}

{ #category : #tests }
SushiStoreTest >> testOrderSushi [

	| sushi simpleSushiFactory sushiStore preparedSushi boxedSushi |
	sushi := Mock new.
	preparedSushi := Mock new.
	boxedSushi := Mock new.
	sushi stub prepare willReturn: preparedSushi.
	preparedSushi stub box willReturn: boxedSushi.

	simpleSushiFactory := Mock new.
	(simpleSushiFactory stub createSushi: #Foo) willReturn: sushi.

	sushiStore := SushiStore factory: simpleSushiFactory.

	self assert: (sushiStore orderSushi: #Foo) equals: boxedSushi.

	(simpleSushiFactory should receive createSushi: #Foo) once.
	sushi should receive prepare once.
	preparedSushi should receive box once
]
