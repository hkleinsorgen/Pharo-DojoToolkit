Extension { #name : #DojoTheme }

{ #category : '*DojoToolkit-Themes' }
DojoTheme >> dojoLibrary [
	" fetch the theme from the same source as the library "

	| dojoLibClass |
	dojoLibClass := self application libraries detect: [: lib | lib includesBehavior: AbstractDojoLibrary ] ifNone: [ nil ].
	^ dojoLibClass notNil 
		ifTrue: [ dojoLibClass default ]
		ifFalse: [ nil ]
]

{ #category : '*DojoToolkit-Themes' }
DojoTheme >> themeName [

	self subclassResponsibility
]

{ #category : '*DojoToolkit-Themes' }
DojoTheme >> updateRoot: anHtmlRoot [

	| dojoLib |
	dojoLib := self dojoLibrary.
	dojoLib notNil
		ifTrue: 
			[anHtmlRoot stylesheet
				url: ((((dojoLib baseURI with: 'dijit') with: 'themes') with: self themeName)
						with: self themeName , '.css').
			anHtmlRoot bodyAttributes addClass: self themeName]
]
