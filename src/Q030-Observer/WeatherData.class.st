Class {
	#name : #WeatherData,
	#superclass : #Subject,
	#instVars : [
		'observers',
		'temperature',
		'humidity',
		'pressure'
	],
	#category : #'Q030-Observer'
}

{ #category : #accessing }
WeatherData >> humidity [
	^ humidity
]

{ #category : #initialization }
WeatherData >> initialize [ 
	observers := Set new.
	^ self
]

{ #category : #'as yet unclassified' }
WeatherData >> notifyObservers [
	observers do: [ :each | 
		each
			updateTemperature: temperature
			humidity: humidity
			pressure: pressure ]
]

{ #category : #accessing }
WeatherData >> pressure [ 
	^ pressure
]

{ #category : #adding }
WeatherData >> registerObserver: anObserver [
	observers add: anObserver. 
]

{ #category : #accessing }
WeatherData >> temperature [
	^ temperature
]

{ #category : #'as yet unclassified' }
WeatherData >> temperature: temperatureNumber humidity: humidityNumber pressure: pressureNumber [
	temperature := temperatureNumber.
	humidity := humidityNumber.
	pressure := pressureNumber.
	self notifyObservers
]
