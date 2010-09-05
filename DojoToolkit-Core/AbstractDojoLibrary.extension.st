Extension { #name : #AbstractDojoLibrary }

{ #category : '*DojoToolkit-Core' }
AbstractDojoLibrary >> addDojoScriptsToDocument: aDocument [ 
	" Dojo libraries must be added in a <body> script "

	| script url |
	script := WAScriptElement new.
	url := (self baseURI with: 'dojo') with: self libraryName.
	script beJavascript;
		url: url.
	script encodeOn: aDocument.
]

{ #category : '*DojoToolkit-Core' }
AbstractDojoLibrary >> baseURI [

	self subclassResponsibility
]

{ #category : '*DojoToolkit-Core' }
AbstractDojoLibrary >> isCrossDomainLibrary [

	self subclassResponsibility
]

{ #category : '*DojoToolkit-Core' }
AbstractDojoLibrary >> isUncompressed [

	^ false
]

{ #category : '*DojoToolkit-Core' }
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

{ #category : '*DojoToolkit-Core' }
AbstractDojoLibrary >> updateRoot: anHtmlRoot [
	" the library must be added in a <body> script "
]

{ #category : '*DojoToolkit-Core' }
AbstractDojoLibrary >> version [

	^ '1.5'
]
