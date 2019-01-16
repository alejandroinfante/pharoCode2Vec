Class {
	#name : #Code2VecResult,
	#superclass : #Object,
	#instVars : [
		'sourceCode',
		'attentionPaths',
		'suggestions'
	],
	#category : #'Code2Vec-Client'
}

{ #category : #'instance creation' }
Code2VecResult class >> fromDict: dict [
	^ self new
		buildFromDict: dict;
		yourself
]

{ #category : #accessing }
Code2VecResult >> attentionPaths [
	^ attentionPaths
]

{ #category : #'as yet unclassified' }
Code2VecResult >> buildFromDict: dict [
	attentionPaths := dict at: #attention_paths.
	suggestions := (dict at: #predictions) collect: [ :d | Code2VecSuggestion fromDict: d ]
]

{ #category : #'as yet unclassified' }
Code2VecResult >> gtInspectorTableDependenciesIn: composite [
	<gtInspectorPresentationOrder: -5>
	| tab |
	tab := composite tabulator.
	tab
		title: 'Name suggestions';
		row: #one;
		row: #two.
	tab transmit to: #one; andShow: [ :p |
			p table
				title: 'Name suggestions';
				display: [ self suggestions ];
				column: 'Suggested Name' evaluated: #methodName;
				column: 'Probability' evaluated: #probability ].
	tab transmit to: #two; andShow: [ :p |
			p text format: [ :x | (self sourceCode asText)  ] ]
]

{ #category : #accessing }
Code2VecResult >> sourceCode [
	^ sourceCode
]

{ #category : #accessing }
Code2VecResult >> sourceCode: anObject [
	sourceCode := anObject
]

{ #category : #accessing }
Code2VecResult >> suggestions [
	^ suggestions
]
