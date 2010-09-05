Class {
	#name : #DojoGoogleLibrary,
	#superclass : #AbstractDojoLibrary,
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoGoogleLibrary >> baseURI [

	^ (WAUrl absolute: 'http://ajax.googleapis.com/ajax/libs/dojo') with: self version
]

{ #category : #accessing }
DojoGoogleLibrary >> isCrossDomainLibrary [

	^ true
]

{ #category : #private }
DojoGoogleLibrary >> isFileSelector: aSelector [

	^ false
]
