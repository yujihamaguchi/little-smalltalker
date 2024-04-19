Class {
	#name : #SingletonTest,
	#superclass : #TestCase,
	#category : #'Q060-Singleton-Tests'
}

{ #category : #tests }
SingletonTest >> testCurrent [
		
	| semaphore object1 object2 |
	"Arrange"
	Singleton initialize.
	semaphore := Semaphore new.

	"Act"
	[ 
	Processor yield.
	object1 := Singleton uniqueInstance.
	semaphore signal ] fork.

	object2 := Singleton uniqueInstance.

	"Assert"
	semaphore wait.
	self assert: object1 isNotNil. 
	self assert: object2 isNotNil. 	
	self assert: object1 identicalTo: object2
]
