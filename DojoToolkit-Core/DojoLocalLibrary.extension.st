Extension { #name : #DojoLocalLibrary }

{ #category : '*DojoToolkit-Core' }
DojoLocalLibrary >> baseURI [
	 " base URI of the dojo library. if not specified, the files will be read from a local directory "

	^ baseURI ifNil: [ WAFileHandler default url with: self class name ]
]

{ #category : '*DojoToolkit-Core' }
DojoLocalLibrary >> baseURI: aBaseURI [ 

	baseURI := aBaseURI notNil 
			ifTrue: [ aBaseURI seasideUrl ]
			ifFalse: [ nil ].
]

{ #category : '*DojoToolkit-Core' }
DojoLocalLibrary >> defaultDirectory [

	^ 'dojo-release-1.5.0' asFilename
]

{ #category : '*DojoToolkit-Core' }
DojoLocalLibrary >> directory [
	 " (optional) base directory containing the dojo files. not used when baseURI is specified "

	^ directory
]

{ #category : '*DojoToolkit-Core' }
DojoLocalLibrary >> directory: aDirectory [ 

	directory := aDirectory notNil 
			ifTrue: [ aDirectory asFilename ]
			ifFalse: [ nil ].
]

{ #category : '*DojoToolkit-Core' }
DojoLocalLibrary >> documentForFile: aFilename [ 

	| stream |
	stream := aFilename readStream binary.
	^ [ stream upToEnd ] ensure: [ stream ]
]

{ #category : '*DojoToolkit-Core' }
DojoLocalLibrary >> handle: aRequestContext [ 

	| fileName |
	fileName := self directory ifNil: [ self defaultDirectory ].
	[ aRequestContext consumer atEnd ] whileFalse: [ fileName := fileName / aRequestContext consumer next ].
	(fileName exists  and: [ fileName isDirectory not ])
		ifTrue: 
		[	aRequestContext respond: 
				[: response |
					response cacheFor: self cacheDuration;
						document: ( self documentForFile: fileName ) mimeType: ( self mimetypeForFile: fileName tail )
				]
		]
		ifFalse: 
		[( aRequestContext responseGenerator ) notFound;
				respond
		].
]

{ #category : '*DojoToolkit-Core' }
DojoLocalLibrary >> isCrossDomainLibrary [

	^ false
]

{ #category : '*DojoToolkit-Core' }
DojoLocalLibrary >> isFileSelector: aSelector [

	^ false
]
