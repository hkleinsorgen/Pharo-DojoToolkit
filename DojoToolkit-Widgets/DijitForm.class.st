"
Widget corresponding to HTML form tag, for validation and serialization
"
Class {
	#name : #DijitForm,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitForm class >> functionName [

	^ 'dijit.form.Form'
]

{ #category : #'properties-generated' }
DijitForm >> accept [
	"  List of MIME types for file upload. "

	self access: 'accept'
]

{ #category : #'properties-generated' }
DijitForm >> accept: aString [
	"  List of MIME types for file upload. "

	self propertyAt: 'accept' put: aString
]

{ #category : #'properties-generated' }
DijitForm >> acceptCharset [
	"  List of supported charsets. "

	self access: 'accept-charset'
]

{ #category : #'properties-generated' }
DijitForm >> acceptCharset: aString [
	"  List of supported charsets. "

	self propertyAt: 'accept-charset' put: aString
]

{ #category : #'properties-generated' }
DijitForm >> action [
	"  Server-side form handler. "

	self access: 'action'
]

{ #category : #'properties-generated' }
DijitForm >> action: aString [
	"  Server-side form handler. "

	self propertyAt: 'action' put: aString
]

{ #category : #'properties-generated' }
DijitForm >> attributeMap [
	
	self access: 'attributeMap'
]

{ #category : #'properties-generated' }
DijitForm >> attributeMap: aJsObject [
	
	self propertyAt: 'attributeMap' put: aJsObject
]

{ #category : #'functions-generated' }
DijitForm >> connectChildren [
	"  Connects to the onChange function of all children to track valid state changes.
	You can call this function directly, ex.
	in the event that you programmatically add a widget to the form *after* the form has been initialized. "

	self call: 'connectChildren'
]

{ #category : #'properties-generated' }
DijitForm >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitForm >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'properties-generated' }
DijitForm >> encType [
	"  Encoding type for the form, ex: application/x-www-form-urlencoded. "

	self access: 'encType'
]

{ #category : #'properties-generated' }
DijitForm >> encType: aString [
	"  Encoding type for the form, ex: application/x-www-form-urlencoded. "

	self propertyAt: 'encType' put: aString
]

{ #category : #'functions-generated' }
DijitForm >> execute: formContents [ 
	"  Deprecated: use submit() "

	self call: 'execute' withArguments: (Array with: formContents)
]

{ #category : #'functions-generated' }
DijitForm >> getValues [
	
	self call: 'getValues'
]

{ #category : #'functions-generated' }
DijitForm >> isValid [
	"  Returns true if all of the widgets are valid "

	self call: 'isValid'
]

{ #category : #'properties-generated' }
DijitForm >> method [
	"  HTTP method used to submit the form, either 'GET' or 'POST'. "

	self access: 'method'
]

{ #category : #'properties-generated' }
DijitForm >> method: aString [
	"  HTTP method used to submit the form, either 'GET' or 'POST'. "

	self propertyAt: 'method' put: aString
]

{ #category : #'properties-generated' }
DijitForm >> name [
	"  Name of form for scripting. "

	self access: 'name'
]

{ #category : #'properties-generated' }
DijitForm >> name: aString [
	"  Name of form for scripting. "

	self propertyAt: 'name' put: aString
]

{ #category : #'properties-generated' }
DijitForm >> nameAttrSetting [
	
	self access: 'nameAttrSetting'
]

{ #category : #'properties-generated' }
DijitForm >> nameAttrSetting: aJsObject [
	
	self propertyAt: 'nameAttrSetting' put: aJsObject
]

{ #category : #'events-generated' }
DijitForm >> onExecute: anObject [
	"  Deprecated: use onSubmit() "

	self eventAt: 'onExecute' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitForm >> onReset: e [
	"  Callback when user resets the form.
	This method is intended to be over-ridden.
	When the reset method is called programmatically, the return value from onReset is used to compute whether or not resetting should proceed "

	self eventAt: 'onReset' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitForm >> onSubmit: e [
	"  This method is intended to be over-ridden, but by default it checks and returns the validity of form elements.
	When the submit method is called programmatically, the return value from onSubmit is used to compute whether or not submission should proceed "

	self eventAt: 'onSubmit' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitForm >> onValidStateChange: isValid [
	"  Stub function to connect to if you want to do something (like disable/enable a submit button) when the valid state changes on the form as a whole. "

	self eventAt: 'onValidStateChange' put: (isValid asFunction: #(#isValid))
]

{ #category : #'functions-generated' }
DijitForm >> reset: e [ 
	"  restores all widget values back to their init values, calls onReset() which can cancel the reset by returning false "

	self call: 'reset' withArguments: (Array with: e)
]

{ #category : #'functions-generated' }
DijitForm >> setValues: val [ 
	
	self call: 'setValues' withArguments: (Array with: val)
]

{ #category : #'functions-generated' }
DijitForm >> submit [
	"  programmatically submit form if and only if the onSubmit returns true "

	self call: 'submit'
]

{ #category : #'properties-generated' }
DijitForm >> target [
	"  Target frame for the document to be opened in. "

	self access: 'target'
]

{ #category : #'properties-generated' }
DijitForm >> target: aString [
	"  Target frame for the document to be opened in. "

	self propertyAt: 'target' put: aString
]

{ #category : #'properties-generated' }
DijitForm >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitForm >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitForm >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitForm >> templateString: aString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aString
]

{ #category : #'functions-generated' }
DijitForm >> validate [
	"  returns if the form is valid - same as isValid - but provides a few additional (ui-specific) features.
	1 - it will highlight any sub-widgets that are not valid 2 - it will call focus() on the first invalid sub-widget "

	self call: 'validate'
]

{ #category : #'properties-generated' }
DijitForm >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitForm >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
