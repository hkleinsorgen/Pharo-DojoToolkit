Class {
	#name : #AbstractDojoTest,
	#superclass : #JSObjectTest,
	#instVars : [
		'keyQuote'
	],
	#category : 'DojoToolkit-Tests'
}

{ #category : '*DojoToolkit-Tests' }
AbstractDojoTest class >> isAbstract [
	^ self = AbstractDojoTest
]

{ #category : '*DojoToolkit-Tests' }
AbstractDojoTest >> dojo [

	^ Dojo context: self renderContext
]

{ #category : '*DojoToolkit-Tests' }
AbstractDojoTest >> dojoUI [

	^ DojoUI context: self renderContext
]

{ #category : '*DojoToolkit-Tests' }
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

{ #category : '*DojoToolkit-Tests' }
AbstractDojoTest >> keyQuote: key [
	" some implementations optimize the output by avoiding unnecessary quotation marks "

	^ self keyQuote , key, self keyQuote
]

{ #category : '*DojoToolkit-Tests' }
AbstractDojoTest >> renderContext [

	| renderContext |
	renderContext := super renderContext.
	renderContext document scriptGenerator: DojoScriptGenerator new.
	^ renderContext
]

{ #category : '*DojoToolkit-Tests' }
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
