Class {
	#name : #DojoAjaxScriptGenerator,
	#superclass : #DojoScriptGenerator,
	#category : 'DojoToolkit-Core'
}

{ #category : #actions }
DojoAjaxScriptGenerator >> closeOn: aDocument [ 

	| attributes |
	attributes := WAHtmlAttributes new.
	" see DojoAjax>> applyHTMLResponseWith: "
	attributes at: 'type' put: DojoAjax evalScriptType.
	aDocument openTag: 'script' attributes: attributes.
	self writeGlobalScriptsOn: aDocument.
	aDocument nextPutAll: Dojo functionName , '.addOnLoad(function(){'.
	self writeLoadScriptsOn: aDocument.
	aDocument nextPutAll: '});'.
	aDocument closeTag: 'script'.
]
