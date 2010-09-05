Class {
	#name : #DojoAOLLibrary,
	#superclass : #AbstractDojoLibrary,
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoAOLLibrary >> baseURI [

	^ (WAUrl absolute: 'http://o.aolcdn.com/dojo') with: self version
]

{ #category : #accessing }
DojoAOLLibrary >> isCrossDomainLibrary [

	^ true
]

{ #category : #private }
DojoAOLLibrary >> isFileSelector: aSelector [

	^ false
]
