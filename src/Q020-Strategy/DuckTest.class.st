Class {
	#name : #DuckTest,
	#superclass : #TestCase,
	#category : #'Q020-Strategy'
}

{ #category : #tests }
DuckTest >> test001Swim [
	| duck mallardDuck rubberDuck |
	duck := Duck new.
	self assert: duck swim equals: 'swimming'.

	mallardDuck := MallardDuck new.
	self assert: mallardDuck swim equals: 'swimming'.

	rubberDuck := RubberDuck new.
	self assert: rubberDuck swim equals: 'floating'
]

{ #category : #tests }
DuckTest >> test002Fly [
	| duck flyWithWings flyNoWay rubberDuck |
	flyWithWings := FlyWithWings new.
	duck := Duck flyBehavier: flyWithWings.
	self assert: duck fly equals: 'flying'.

	flyNoWay := FlyNoWay new.
	rubberDuck := RubberDuck flyBehavier: flyNoWay.
	self assert: rubberDuck fly equals: 'no way'
]
