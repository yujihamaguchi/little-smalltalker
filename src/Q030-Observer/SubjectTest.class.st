Class {
	#name : #SubjectTest,
	#superclass : #TestCase,
	#category : #'Q030-Observer'
}

{ #category : #tests }
SubjectTest >> testNotify [
	| target observer1 observer2 |
	target := Subject new initialize.

	observer1 := Observer new.
	(observer1 stub update: target) willReturnYourself.
	observer2 := Observer new.
	(observer2 stub update: target) willReturnYourself.

	target addObserver: observer1.
	target addObserver: observer2.

	target notify.

	(observer1 should receive update: target) once.
	(observer2 should receive update: target) once
]
