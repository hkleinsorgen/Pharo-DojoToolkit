"
Represents a single HTML element. All these widgets should have these attributes just like native HTML input elements. You can set them during widget construction or afterwards, via dijit._Widget.attr. They also share some common methods.
"
Class {
	#name : #DijitFormWidget,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitFormWidget class >> functionName [

	^ 'dijit.form.FormWidget'
]

{ #category : #'properties-generated' }
DijitFormWidget >> alt [
	"  Corresponds to the native HTML <input> element's attribute. "

	self access: 'alt'
]

{ #category : #'properties-generated' }
DijitFormWidget >> alt: aString [
	"  Corresponds to the native HTML <input> element's attribute. "

	self propertyAt: 'alt' put: aString
]

{ #category : #'properties-generated' }
DijitFormWidget >> attributeMap [
	
	self access: 'attributeMap'
]

{ #category : #'properties-generated' }
DijitFormWidget >> attributeMap: aJsObject [
	
	self propertyAt: 'attributeMap' put: aJsObject
]

{ #category : #'functions-generated' }
DijitFormWidget >> compare: val1 val2: val2 [ 
	"  Compare 2 values (as returned by attr('value') for this widget). "

	self call: 'compare' withArguments: (Array with: val1 with: val2)
]

{ #category : #'properties-generated' }
DijitFormWidget >> cssStateNodes [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self access: 'cssStateNodes'
]

{ #category : #'properties-generated' }
DijitFormWidget >> cssStateNodes: aJsObject [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self propertyAt: 'cssStateNodes' put: aJsObject
]

{ #category : #'properties-generated' }
DijitFormWidget >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitFormWidget >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'properties-generated' }
DijitFormWidget >> disabled [
	"  Should this widget respond to user input? In markup, this is specified as 'disabled='disabled'', or just 'disabled'. "

	self access: 'disabled'
]

{ #category : #'properties-generated' }
DijitFormWidget >> disabled: aBoolean [
	"  Should this widget respond to user input? In markup, this is specified as 'disabled='disabled'', or just 'disabled'. "

	self propertyAt: 'disabled' put: aBoolean
]

{ #category : #'functions-generated' }
DijitFormWidget >> focus [
	"  Put focus on this widget "

	self call: 'focus'
]

{ #category : #'functions-generated' }
DijitFormWidget >> getValue [
	"  Deprecated.
	Use get('value') instead. "

	self call: 'getValue'
]

{ #category : #'properties-generated' }
DijitFormWidget >> intermediateChanges [
	"  Fires onChange for each value change or only on demand "

	self access: 'intermediateChanges'
]

{ #category : #'properties-generated' }
DijitFormWidget >> intermediateChanges: aBoolean [
	"  Fires onChange for each value change or only on demand "

	self propertyAt: 'intermediateChanges' put: aBoolean
]

{ #category : #'properties-generated' }
DijitFormWidget >> name [
	"  Name used when submitting form; same as 'name' attribute or plain HTML elements "

	self access: 'name'
]

{ #category : #'properties-generated' }
DijitFormWidget >> name: aString [
	"  Name used when submitting form; same as 'name' attribute or plain HTML elements "

	self propertyAt: 'name' put: aString
]

{ #category : #'properties-generated' }
DijitFormWidget >> nameAttrSetting [
	
	self access: 'nameAttrSetting'
]

{ #category : #'properties-generated' }
DijitFormWidget >> nameAttrSetting: aJsObject [
	
	self propertyAt: 'nameAttrSetting' put: aJsObject
]

{ #category : #'events-generated' }
DijitFormWidget >> onChange: newValue [
	"  Callback when this widget's value is changed. "

	self eventAt: 'onChange' put: (newValue asFunction: #(#newValue))
]

{ #category : #'properties-generated' }
DijitFormWidget >> scrollOnFocus [
	"  On focus, should this widget scroll into view? "

	self access: 'scrollOnFocus'
]

{ #category : #'properties-generated' }
DijitFormWidget >> scrollOnFocus: aBoolean [
	"  On focus, should this widget scroll into view? "

	self propertyAt: 'scrollOnFocus' put: aBoolean
]

{ #category : #'functions-generated' }
DijitFormWidget >> setDisabled: disabled [ 
	"  Deprecated.
	Use set('disabled', ...) instead. "

	self call: 'setDisabled' withArguments: (Array with: disabled)
]

{ #category : #'functions-generated' }
DijitFormWidget >> setValue: value [ 
	"  Deprecated.
	Use set('value', ...) instead. "

	self call: 'setValue' withArguments: (Array with: value)
]

{ #category : #'properties-generated' }
DijitFormWidget >> tabIndex [
	"  Order fields are traversed when user hits the tab key "

	self access: 'tabIndex'
]

{ #category : #'properties-generated' }
DijitFormWidget >> tabIndex: aNumber [
	"  Order fields are traversed when user hits the tab key "

	self propertyAt: 'tabIndex' put: aNumber
]

{ #category : #'properties-generated' }
DijitFormWidget >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitFormWidget >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitFormWidget >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitFormWidget >> templateString: aString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aString
]

{ #category : #'properties-generated' }
DijitFormWidget >> type [
	"  Corresponds to the native HTML <input> element's attribute. "

	self access: 'type'
]

{ #category : #'properties-generated' }
DijitFormWidget >> type: aString [
	"  Corresponds to the native HTML <input> element's attribute. "

	self propertyAt: 'type' put: aString
]

{ #category : #'properties-generated' }
DijitFormWidget >> value [
	"  Corresponds to the native HTML <input> element's attribute. "

	self access: 'value'
]

{ #category : #'properties-generated' }
DijitFormWidget >> value: aString [
	"  Corresponds to the native HTML <input> element's attribute. "

	self propertyAt: 'value' put: aString
]

{ #category : #'properties-generated' }
DijitFormWidget >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitFormWidget >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
