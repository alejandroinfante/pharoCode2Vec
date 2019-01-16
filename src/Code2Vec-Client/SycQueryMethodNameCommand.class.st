Class {
	#name : #SycQueryMethodNameCommand,
	#superclass : #SycMethodCommand,
	#category : #'Code2Vec-Client'
}

{ #category : #activation }
SycQueryMethodNameCommand class >> methodContextMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byItemOf: CmdExtraMenuGroup for: ClyMethod asCalypsoItemContext
]

{ #category : #activation }
SycQueryMethodNameCommand class >> methodTabIconActivation [
	<classAnnotation>
	
	^ClyBrowserTabCommandActivation for: ClyMethod asCalypsoItemContext
]

{ #category : #accessing }
SycQueryMethodNameCommand >> defaultMenuItemName [
	^'Suggest method name'
]

{ #category : #accessing }
SycQueryMethodNameCommand >> description [
	^'Suggest method name using Code2Vec neural network technique.'
]

{ #category : #accessing }
SycQueryMethodNameCommand >> execute [
	(Code2VecClient queryMethod: methods first) inspect
]
