"
Specialized script handler that utilizes Dojo's load and event connect functions
"
Class {
	#name : #DojoScriptGenerator,
	#superclass : #WAScriptGenerator,
	#instVars : [
		'globalScripts',
		'configurationScript'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoScriptGenerator >> addDojoGlobalScript: anObject [

	self globalScripts add: anObject
]

{ #category : #actions }
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

{ #category : #accessing }
DojoScriptGenerator >> configurationScript [

	^ configurationScript
]

{ #category : #accessing }
DojoScriptGenerator >> dojoConfigurationScript: aConfigurationScript [ 

	configurationScript := aConfigurationScript.
]

{ #category : #actions }
DojoScriptGenerator >> event: aString do: anObject on: aBrush [ 

	anObject ifNil: [ ^ self ].
	self addLoadScript: (( Dojo new byId: aBrush ensureId ) connectEvent:  'on', aString method: (anObject asFunction: #(event)) ).
]

{ #category : #accessing }
DojoScriptGenerator >> globalScripts [
	" global scripts that are evaluated before addOnLoad() "

	^ globalScripts
]

{ #category : #initialization }
DojoScriptGenerator >> initialize [
	super initialize.
	globalScripts := OrderedCollection new
]

{ #category : #private }
DojoScriptGenerator >> writeConfigurationScriptOn: aDocument [ 

	( self configurationScript notNil and: [ configurationScript properties isEmpty not ]) 
		ifTrue: [ self writeScriptTag: [ aDocument nextPutAll: self configurationScript greaseString ] on: aDocument ].
]

{ #category : #private }
DojoScriptGenerator >> writeGlobalScriptsOn: aDocument [

	self globalScripts do: [ :each | aDocument nextPutAll: each greaseString; nextPut: $; ]
]

{ #category : #private }
DojoScriptGenerator >> writeLibraryScriptsOn: aDocument [ 
	" Dojo libraries must be added in a <body> script "

	self application libraries do: [: lib | lib default addDojoScriptsToDocument: aDocument ].
]
