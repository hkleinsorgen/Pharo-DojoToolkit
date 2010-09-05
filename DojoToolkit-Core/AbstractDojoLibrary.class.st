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

{ #category : #accessing }
AbstractDojoLibrary >> isCrossDomainLibrary [

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

{ #category : #processing }
AbstractDojoLibrary >> updateRoot: anHtmlRoot [
	" the library must be added in a <body> script "
]

{ #category : #accessing }
AbstractDojoLibrary >> version [

	^ '1.5'
]
