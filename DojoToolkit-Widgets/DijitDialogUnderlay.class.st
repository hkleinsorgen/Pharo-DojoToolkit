"
A component used to block input behind a dijit.Dialog. Only a single instance of this widget is created by dijit.Dialog, and saved as a reference to be shared between all Dialogs as dijit._underlay The underlay itself can be styled based on and id: #myDialog_underlay { background-color:red; } In the case of dijit.Dialog, this id is based on the id of the Dialog, suffixed with _underlay.
"
Class {
	#name : #DijitDialogUnderlay,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitDialogUnderlay class >> functionName [

	^ 'dijit.DialogUnderlay'
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> bgIframe [
	
	self access: 'bgIframe'
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> bgIframe: aJsObject [
	
	self propertyAt: 'bgIframe' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> dialogId [
	"  Id of the dialog....
	DialogUnderlay's id is based on this id "

	self access: 'dialogId'
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> dialogId: aString [
	"  Id of the dialog....
	DialogUnderlay's id is based on this id "

	self propertyAt: 'dialogId' put: aString
]

{ #category : #'functions-generated' }
DijitDialogUnderlay >> hide [
	"  Hides the dialog underlay "

	self call: 'hide'
]

{ #category : #'functions-generated' }
DijitDialogUnderlay >> layout [
	"  Sets the background to the size of the viewport (rather than the size of the document) since we need to cover the whole browser window, even if the document is only a few lines long "

	self call: 'layout'
]

{ #category : #'functions-generated' }
DijitDialogUnderlay >> show [
	"  Show the dialog underlay "

	self call: 'show'
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> templateString: aString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aString
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitDialogUnderlay >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
