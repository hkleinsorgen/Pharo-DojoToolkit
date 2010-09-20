Class {
	#name : #AbstractDojoLibrary,
	#superclass : #WAFileLibrary,
	#category : 'DojoToolkit-Core'
}

{ #category : #processing }
AbstractDojoLibrary >> addDojoScriptsToDocument: aDocument [ 
	" Dojo libraries must be added in a <body> script "

	| script url |
	script := WAScriptElement new.
	url := (self baseURI with: 'dojo') with: self libraryName.
	script beJavascript;
		url: url.
	script encodeOn: aDocument.
]

{ #category : #accessing }
AbstractDojoLibrary >> baseURI [

	self subclassResponsibility
]

{ #category : #private }
AbstractDojoLibrary >> fileSelectors [

	^ #()
]

{ #category : #accessing }
AbstractDojoLibrary >> isCrossDomainLibrary [
	" true if the library is loaded from a different domain "

	self subclassResponsibility
]

{ #category : #accessing }
AbstractDojoLibrary >> isUncompressed [

	^ false
]

{ #category : #accessing }
AbstractDojoLibrary >> libraryName [

	^ self isCrossDomainLibrary 
		ifTrue: 
		[	self isUncompressed 
				ifTrue: [ 'dojo.xd.js.uncompressed.js'  ]
				ifFalse: [  'dojo.xd.js' ]
		]
		ifFalse: 
		[	self isUncompressed 
				ifTrue: [ 'dojo.js.uncompressed.js' ]
				ifFalse: [ 'dojo.js' ]
		]
]

{ #category : #accessing }
AbstractDojoLibrary >> selectorsToInclude [
	" the Dojo libraries must be loaded in a <body> script "

	^#()
]

{ #category : #processing }
AbstractDojoLibrary >> updateRoot: anHtmlRoot [
	" the Dojo libraries must be loaded in a <body> script, so we just add the helper library scripts "

	DojoHelperLibrary default updateRoot: anHtmlRoot.
]

{ #category : #accessing }
AbstractDojoLibrary >> version [

	^ '1.5'
]
