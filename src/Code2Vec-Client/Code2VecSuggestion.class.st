Class {
	#name : #Code2VecSuggestion,
	#superclass : #Object,
	#instVars : [
		'methodName',
		'probability'
	],
	#category : #'Code2Vec-Client'
}

{ #category : #'instance creation' }
Code2VecSuggestion class >> fromDict: dict [
	^ self new
		buildFromDict: dict;
		yourself
]

{ #category : #'as yet unclassified' }
Code2VecSuggestion >> buildFromDict: dict [
	methodName := dict at: #name.
	probability := dict at: #probability
]

{ #category : #accessing }
Code2VecSuggestion >> methodName [
	^ methodName
]

{ #category : #accessing }
Code2VecSuggestion >> methodName: anObject [
	methodName := anObject
]

{ #category : #accessing }
Code2VecSuggestion >> probability [
	^ probability
]

{ #category : #accessing }
Code2VecSuggestion >> probability: anObject [
	probability := anObject
]
