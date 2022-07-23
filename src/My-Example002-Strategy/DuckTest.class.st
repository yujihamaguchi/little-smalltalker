Class {
	#name : #DuckTest,
	#superclass : #TestCase,
	#category : #'My-Example002-Strategy'
}

{ #category : #tests }
DuckTest >> testFly [
	| duck flyWithWings rubberDuck flyNoWay |
	flyWithWings := FlyWithWings new.
	duck := Duck flyBehavier: flyWithWings.
	self assert: duck fly equals: 'flying with wings!'.
	flyNoWay := FlyNoWay new.
	rubberDuck := RubberDuck flyBehavier: flyNoWay.
	self assert: rubberDuck fly equals: 'fly no way!'
	
]

{ #category : #tests }
DuckTest >> testSwim [
	| duck mallardDuck rubberDuck |
	duck := Duck new.
	self assert: duck swim equals: 'swimming!'.
	mallardDuck := MallardDuck new.
	self assert: mallardDuck swim equals: 'swimming!'.
	rubberDuck := RubberDuck new.
	self assert: rubberDuck swim equals: 'floating!'
	
]
