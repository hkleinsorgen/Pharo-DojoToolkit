"
Dojo library that returns the files from a local URI or directory

"
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

{ #category : #accessing }
DojoLocalLibrary >> cacheDuration [
	^Duration days: 14 hours: 0 minutes: 0 seconds: 0
]

{ #category : #private }
DojoLocalLibrary >> defaultDirectory [

	^ 'dojo-release-1.5.0' asFilename
]

{ #category : #accessing }
DojoLocalLibrary >> directory [
	 " (optional) base directory containing the dojo files. not used when baseURI is specified "

	^ directory ifNotNil: [ : d | d asFilename ] ifNil: [ self defaultDirectory ]
]

{ #category : #accessing }
DojoLocalLibrary >> directory: aDirectory [ 

	directory := aDirectory notNil 
			ifTrue: [ aDirectory asString ]
			ifFalse: [ nil ].
]

{ #category : #accessing }
DojoLocalLibrary >> documentForFile: aFilename mimeType: mimeType [ 

	| stream |
	stream := mimeType isBinary 
			ifTrue: [ aFilename readStream binary ]
			ifFalse: [ (aFilename withEncoding: 'utf-8') readStream ].
	^ [ stream upToEnd ] ensure: [ stream ]
]

{ #category : #handling }
DojoLocalLibrary >> handle: aRequestContext [ 

	| fileName mimeType |
	fileName := self directory.
	[ aRequestContext consumer atEnd ] whileFalse: [ fileName := fileName / aRequestContext consumer next ].
	(fileName exists  and: [ fileName isDirectory not ])
		ifTrue: 
		[	mimeType :=  self mimetypeForFile: fileName tail.
			aRequestContext respond: 
				[: response |
					response cacheFor: self cacheDuration;
						document: ( self documentForFile: fileName mimeType: mimeType ) mimeType: (mimeType)
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
