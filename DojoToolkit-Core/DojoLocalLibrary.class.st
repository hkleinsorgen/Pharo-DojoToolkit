Class {
	#name : #DojoLocalLibrary,
	#superclass : #AbstractDojoLibrary,
	#instVars : [
		'directory',
		'baseURI'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoLocalLibrary >> baseURI [
	 " base URI of the dojo library. if not specified, the files will be read from a local directory "

	^ baseURI ifNil: [ WAFileHandler default url with: self class name ]
]

{ #category : #accessing }
DojoLocalLibrary >> baseURI: aBaseURI [ 

	baseURI := aBaseURI notNil 
			ifTrue: [ aBaseURI seasideUrl ]
			ifFalse: [ nil ].
]

{ #category : #private }
DojoLocalLibrary >> defaultDirectory [

	^ 'dojo-release-1.5.0' asFilename
]

{ #category : #accessing }
DojoLocalLibrary >> directory [
	 " (optional) base directory containing the dojo files. not used when baseURI is specified "

	^ directory
]

{ #category : #accessing }
DojoLocalLibrary >> directory: aDirectory [ 

	directory := aDirectory notNil 
			ifTrue: [ aDirectory asFilename ]
			ifFalse: [ nil ].
]

{ #category : #accessing }
DojoLocalLibrary >> documentForFile: aFilename [ 

	| stream |
	stream := aFilename readStream binary.
	^ [ stream upToEnd ] ensure: [ stream ]
]

{ #category : #handling }
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

{ #category : #accessing }
DojoLocalLibrary >> isCrossDomainLibrary [

	^ false
]

{ #category : #private }
DojoLocalLibrary >> isFileSelector: aSelector [

	^ false
]
