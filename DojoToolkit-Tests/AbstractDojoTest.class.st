Class {
	#name : #AbstractDojoTest,
	#superclass : #JSObjectTest,
	#instVars : [
		'keyQuote'
	],
	#category : 'DojoToolkit-Tests'
}

{ #category : #testing }
AbstractDojoTest class >> isAbstract [
	^ self = AbstractDojoTest
]

{ #category : #accessing }
AbstractDojoTest >> dojo [

	^ Dojo context: self renderContext
]

{ #category : #accessing }
AbstractDojoTest >> dojoUI [

	^ DojoUI context: self renderContext
]

{ #category : #private }
AbstractDojoTest >> keyQuote [
	" some implementations optimize the output by avoiding unnecessary quotation marks "

	keyQuote isNil 
		ifTrue: 
		[	keyQuote := (( String streamContents: [: stream | JSStream encodeKey: 'a' value: 1 on: stream ]) includes: $" ) 
					ifTrue: [ '"' ]
					ifFalse: [ '' ]
		].
	^ keyQuote
]

{ #category : #private }
AbstractDojoTest >> keyQuote: key [
	" some implementations optimize the output by avoiding unnecessary quotation marks "

	^ self keyQuote , key, self keyQuote
]

{ #category : #accessing }
AbstractDojoTest >> renderContext [

	| renderContext |
	renderContext := super renderContext.
	renderContext document scriptGenerator: DojoScriptGenerator new.
	^ renderContext
]

{ #category : #private }
AbstractDojoTest >> scriptsAdddedBy: aBlock do: scriptBlock [
	" evaluate scriptBlock with all scripts added by the aBlock "

	| dojo oldLoadScripts newLoadScripts scriptGenerator |
	dojo := self dojo.
	oldLoadScripts := dojo renderContext document loadScripts copy.
	aBlock value: dojo.
	scriptGenerator := dojo renderContext document scriptGenerator.
	newLoadScripts := scriptGenerator loadScripts asOrderedCollection.
	newLoadScripts removeAll: oldLoadScripts.
	scriptBlock value: newLoadScripts value: scriptGenerator .
]
