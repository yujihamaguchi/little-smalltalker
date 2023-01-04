Class {
	#name : #SubjectTest,
	#superclass : #TestCase,
	#category : #'Q030-Observer'
}

{ #category : #tests }
SubjectTest >> testNotify [
	| target observer1 observer2 |
	target := Subject new initialize.

	observer1 := Mock new.
	observer2 := Mock new.

	target addObserver: observer1.
	target addObserver: observer2.

	target notify.

	(observer1 should receive update: target) once.
	(observer2 should receive update: target) once
]
