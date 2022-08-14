Class {
	#name : #SingletonTest,
	#superclass : #TestCase,
	#category : #'My-Example006-Singleton'
}

{ #category : #tests }
SingletonTest >> testCurrent [
	| object1 object2 |
	"TODO: make multi thread creating instances below.
	refer: https://books.pharo.org/booklet-ConcurrentProgramming/pdf/ConcurrentProgramming.pdf"
	object1 := Singleton current.
	object2 := Singleton current.
	self assert: object1 identicalTo: object2.
]
