Extension { #name : #DojoScriptGenerator }

{ #category : '*DojoToolkit-Core' }
DojoScriptGenerator >> addDojoGlobalScript: anObject [

	self globalScripts add: anObject
]

{ #category : '*DojoToolkit-Core' }
DojoScriptGenerator >> close: aHtmlRoot on: aDocument [ 

	self writeConfigurationScriptOn: aDocument.
	self writeLibraryScriptsOn: aDocument.
	( self loadScripts isEmpty and: [ self globalScripts isEmpty ]) 
		ifTrue: [ ^ self ].
	self 
		writeScriptTag: 
		[	self writeGlobalScriptsOn: aDocument.
			aDocument nextPutAll: Dojo functionName , '.addOnLoad(function(){'.
			self writeLoadScriptsOn: aDocument.
			aDocument nextPutAll: '});'
		]
		on: aDocument.
]

{ #category : '*DojoToolkit-Core' }
DojoScriptGenerator >> configurationScript [

	^ configurationScript
]

{ #category : '*DojoToolkit-Core' }
DojoScriptGenerator >> dojoConfigurationScript: aConfigurationScript [ 

	configurationScript := aConfigurationScript.
]

{ #category : '*DojoToolkit-Core' }
DojoScriptGenerator >> event: aString do: anObject on: aBrush [ 

	anObject ifNil: [ ^ self ].
	self addLoadScript: (( Dojo new byId: aBrush ensureId ) connectEvent:  'on', aString method: (anObject asFunction: #(event)) ).
]

{ #category : '*DojoToolkit-Core' }
DojoScriptGenerator >> globalScripts [
	" global scripts that are evaluated before addOnLoad() "

	^ globalScripts
]

{ #category : '*DojoToolkit-Core' }
DojoScriptGenerator >> initialize [
	super initialize.
	globalScripts := OrderedCollection new
]

{ #category : '*DojoToolkit-Core' }
DojoScriptGenerator >> writeConfigurationScriptOn: aDocument [ 

	( self configurationScript notNil and: [ configurationScript properties isEmpty not ]) 
		ifTrue: [ self writeScriptTag: [ aDocument nextPutAll: self configurationScript greaseString ] on: aDocument ].
]

{ #category : '*DojoToolkit-Core' }
DojoScriptGenerator >> writeGlobalScriptsOn: aDocument [

	self globalScripts do: [ :each | aDocument nextPutAll: each greaseString; nextPut: $; ]
]

{ #category : '*DojoToolkit-Core' }
DojoScriptGenerator >> writeLibraryScriptsOn: aDocument [ 
	" Dojo libraries must be added in a <body> script "

	self application libraries do: [: lib | lib default addDojoScriptsToDocument: aDocument ].
]
