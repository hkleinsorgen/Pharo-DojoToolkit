Extension { #name : #WAScriptGenerator }

{ #category : #'*DojoToolkit-Core' }
WAScriptGenerator >> addDojoGlobalScript: aScript [ 

	self raiseWrongDojoScriptGenerator.
]

{ #category : #'*DojoToolkit-Core' }
WAScriptGenerator >> addDojoRequiredPackage: aPackageName [

	self raiseWrongDojoScriptGenerator.
]

{ #category : #'*DojoToolkit-Core' }
WAScriptGenerator >> dojoConfigurationScript: aScript [

	self raiseWrongDojoScriptGenerator.
]

{ #category : #'*DojoToolkit-Core' }
WAScriptGenerator >> raiseWrongDojoScriptGenerator [

	DojoError 
		signal: 'The script generator ' , self class name , ' is not compatible with Dojo. Please use ' , DojoScriptGenerator name.
]
