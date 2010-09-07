Class {
	#name : #DojoTheme,
	#superclass : #WAFileLibrary,
	#category : 'DojoToolkit-Themes'
}

{ #category : #private }
DojoTheme >> dojoLibrary [
	" fetch the theme from the same source as the library "

	| dojoLibClass |
	dojoLibClass := self application libraries detect: [: lib | lib includesBehavior: AbstractDojoLibrary ] ifNone: [ nil ].
	^ dojoLibClass notNil 
		ifTrue: [ dojoLibClass default ]
		ifFalse: [ nil ]
]

{ #category : #accessing }
DojoTheme >> themeName [

	self subclassResponsibility
]

{ #category : #accessing }
DojoTheme >> updateRoot: anHtmlRoot [ 
	" load the theme from the same source as the library "

	| dojoLib |
	dojoLib := self dojoLibrary.
	dojoLib notNil 
		ifTrue: [ self updateRoot: anHtmlRoot dojoLibrary: dojoLib ].
]

{ #category : #accessing }
DojoTheme >> updateRoot: anHtmlRoot dojoLibrary: dojoLibrary [ 

	anHtmlRoot stylesheet url: (((( dojoLibrary baseURI with: 'dijit' ) with: 'themes' ) with: self themeName ) with: self themeName , '.css' ).
	anHtmlRoot bodyAttributes addClass: self themeName.
]
