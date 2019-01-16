Class {
	#name : #Code2VecClient,
	#superclass : #Object,
	#category : #'Code2Vec-Client'
}

{ #category : #'as yet unclassified' }
Code2VecClient class >> queryMethod: method [
	| srcCode |
	srcCode := method ast body sourceCode.
	^ self queryMethodBody: srcCode
]

{ #category : #'as yet unclassified' }
Code2VecClient class >> queryMethodBody: string [
	^ Code2VecResult new
			sourceCode: string;
			buildFromDict: (NeoJSONReader fromString: (ZnEasy 
				post: 'http://localhost:9555/predict' 
				data: (ZnEntity text: string)) contents)
]
