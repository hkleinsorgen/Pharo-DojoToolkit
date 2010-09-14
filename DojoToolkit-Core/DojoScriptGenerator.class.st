"
Specialized script handler that utilizes Dojo's load and event connect functions
"
Class {
	#name : #DojoScriptGenerator,
	#superclass : #WAScriptGenerator,
	#instVars : [
		'globalScripts',
		'configurationScript',
		'requiredPackages'
	],
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoScriptGenerator class >> evalScriptOnLoadType [

	^ 'text/script-eval-onload'
]

{ #category : #accessing }
DojoScriptGenerator class >> evalScriptType [

	^ 'text/script-eval'
]

{ #category : #accessing }
DojoScriptGenerator >> addDojoGlobalScript: anObject [

	self globalScripts add: anObject
]

{ #category : #accessing }
DojoScriptGenerator >> addDojoRequiredPackage: aPackageName [ 

	( self requiredPackages includes: aPackageName ) 
		ifFalse: 
		[	self requiredPackages add: aPackageName.
			self addDojoGlobalScript: (( JSStream on: Dojo functionName ) call: 'require' with: aPackageName )
		].
]

{ #category : #actions }
DojoScriptGenerator >> close: aHtmlRoot on: aDocument [ 

	self writeConfigurationScriptOn: aDocument.
	self writeLibraryScriptsOn: aDocument.
	self writeGlobalAndLoadScriptsOn: aDocument.
]

{ #category : #actions }
DojoScriptGenerator >> closeOn: aDocument [ 
	" this is an ugly hack. see DojoAjax>> applyHTMLResponseWith: "

	self globalScripts notEmpty 
		ifTrue: [ self writeScriptTag: [ self writeGlobalScriptsOn: aDocument ] type: self class evalScriptType on: aDocument ].
	self loadScripts notEmpty 
		ifTrue: [ self writeScriptTag: [ self writeLoadScriptsOn: aDocument ] type: self class evalScriptOnLoadType on: aDocument ].
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

{ #category : #private }
DojoScriptGenerator >> flushScripts [

	globalScripts := globalScripts species new.
	loadScripts := loadScripts species new.
]

{ #category : #accessing }
DojoScriptGenerator >> globalScripts [
	" global scripts that are evaluated before addOnLoad() "

	^ globalScripts
]

{ #category : #initialization }
DojoScriptGenerator >> initialize [

	super initialize.
	globalScripts := OrderedCollection new.
	requiredPackages := Set new.
]

{ #category : #accessing }
DojoScriptGenerator >> requiredPackages [

	^ requiredPackages
]

{ #category : #private }
DojoScriptGenerator >> writeConfigurationScriptOn: aDocument [ 

	( self configurationScript notNil and: [ configurationScript properties isEmpty not ]) 
		ifTrue: [ self writeScriptTag: [ aDocument nextPutAll: self configurationScript greaseString ] on: aDocument ].
]

{ #category : #private }
DojoScriptGenerator >> writeGlobalAndLoadScriptsOn: aDocument [ 

	( self loadScripts notEmpty or: [ self globalScripts notEmpty ]) 
		ifTrue: 
		[	self 
				writeScriptTag: 
				[	self writeGlobalScriptsOn: aDocument.
					self loadScripts notEmpty 
						ifTrue: 
						[	aDocument nextPutAll: Dojo functionName , '.addOnLoad(function(){'.
							self writeLoadScriptsOn: aDocument.
							aDocument nextPutAll: '});'
						]
				]
				on: aDocument
		].
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

{ #category : #private }
DojoScriptGenerator >> writeLoadScriptsOn: aDocument [

	| scripts |
	scripts := self loadScripts.
	scripts copy do: [ : each | each dojoAddDeferredLoadScriptsTo: scripts ].
	scripts do: [ :each | aDocument nextPutAll: each greaseString; nextPut: $; ]
]

{ #category : #private }
DojoScriptGenerator >> writeScriptTag: aBlock type: scriptType on: aDocument [

	| attributes |
	attributes := WAHtmlAttributes new.
	attributes at: 'type' put: scriptType.
	aDocument openTag: 'script' attributes: attributes.
	aBlock value.
	aDocument closeTag: 'script'
]
