Class {
	#name : #StatisticAnalyzeTest,
	#superclass : #TestCase,
	#category : #'Q030-Observer-Tests'
}

{ #category : #tests }
StatisticAnalyzeTest >> testAnalyzeCold [

	| target temperature result |
	"Arrange"
	target := StatisticAnalyze new.
	temperature := 13.
	target stub temperature willReturn: temperature.

	"Act"
	result := target analyze.

	"Assert"
	self
		assert: result
		equals:
		'Statistic / temperature: ' , temperature asString , ' is cold!'
]

{ #category : #tests }
StatisticAnalyzeTest >> testAnalyzeWarm [

	| target temperature result |
	"Arrange"
	target := StatisticAnalyze new.
	temperature := 14.
	target stub temperature willReturn: temperature.

	"Act"
	result := target analyze.

	"Assert"
	self
		assert: result
		equals:
		'Statistic / temperature: ' , temperature asString , ' is warm!'
]
