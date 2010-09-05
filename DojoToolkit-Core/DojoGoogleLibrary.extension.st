Extension { #name : #DojoGoogleLibrary }

{ #category : '*DojoToolkit-Core' }
DojoGoogleLibrary >> baseURI [

	^ (WAUrl absolute: 'http://ajax.googleapis.com/ajax/libs/dojo') with: self version
]

{ #category : '*DojoToolkit-Core' }
DojoGoogleLibrary >> isCrossDomainLibrary [

	^ true
]

{ #category : '*DojoToolkit-Core' }
DojoGoogleLibrary >> isFileSelector: aSelector [

	^ false
]
