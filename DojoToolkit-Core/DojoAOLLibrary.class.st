Class {
	#name : #DojoAOLLibrary,
	#superclass : #AbstractDojoLibrary,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoAOLLibrary >> baseURI [

	^ (WAUrl absolute: 'http://o.aolcdn.com/dojo') with: self version
]

{ #category : '*DojoToolkit-Core' }
DojoAOLLibrary >> isCrossDomainLibrary [

	^ true
]

{ #category : '*DojoToolkit-Core' }
DojoAOLLibrary >> isFileSelector: aSelector [

	^ false
]
