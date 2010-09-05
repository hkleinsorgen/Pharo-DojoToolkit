"
Represents a single HTML element. All these widgets should have these attributes just like native HTML input elements. You can set them during widget construction or afterwards, via dijit._Widget.attr. They also share some common methods.
"
Class {
	#name : #DijitFormWidget,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget class >> functionName [

	^ 'dijit.form.FormWidget'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> alt [
	"  Corresponds to the native HTML <input> element's attribute. "

	self access: 'alt'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> alt: aString [
	"  Corresponds to the native HTML <input> element's attribute. "

	self propertyAt: 'alt' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> attributeMap [
	
	self access: 'attributeMap'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> attributeMap: aJsObject [
	
	self propertyAt: 'attributeMap' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> compare: val1 val2: val2 [ 
	"  Compare 2 values (as returned by attr('value') for this widget). "

	self call: 'compare' withArguments: (Array with: val1 with: val2)
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> cssStateNodes [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self access: 'cssStateNodes'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> cssStateNodes: aJsObject [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self propertyAt: 'cssStateNodes' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> disabled [
	"  Should this widget respond to user input? In markup, this is specified as 'disabled='disabled'', or just 'disabled'. "

	self access: 'disabled'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> disabled: aBoolean [
	"  Should this widget respond to user input? In markup, this is specified as 'disabled='disabled'', or just 'disabled'. "

	self propertyAt: 'disabled' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> focus [
	"  Put focus on this widget "

	self call: 'focus'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> getValue [
	"  Deprecated.
	Use get('value') instead. "

	self call: 'getValue'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> intermediateChanges [
	"  Fires onChange for each value change or only on demand "

	self access: 'intermediateChanges'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> intermediateChanges: aBoolean [
	"  Fires onChange for each value change or only on demand "

	self propertyAt: 'intermediateChanges' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> name [
	"  Name used when submitting form; same as 'name' attribute or plain HTML elements "

	self access: 'name'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> name: aString [
	"  Name used when submitting form; same as 'name' attribute or plain HTML elements "

	self propertyAt: 'name' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> nameAttrSetting [
	
	self access: 'nameAttrSetting'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> nameAttrSetting: aJsObject [
	
	self propertyAt: 'nameAttrSetting' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> onChange: newValue [
	"  Callback when this widget's value is changed. "

	self eventAt: 'onChange' put: (newValue asFunction: #(#newValue))
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> scrollOnFocus [
	"  On focus, should this widget scroll into view? "

	self access: 'scrollOnFocus'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> scrollOnFocus: aBoolean [
	"  On focus, should this widget scroll into view? "

	self propertyAt: 'scrollOnFocus' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> setDisabled: disabled [ 
	"  Deprecated.
	Use set('disabled', ...) instead. "

	self call: 'setDisabled' withArguments: (Array with: disabled)
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> setValue: value [ 
	"  Deprecated.
	Use set('value', ...) instead. "

	self call: 'setValue' withArguments: (Array with: value)
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> tabIndex [
	"  Order fields are traversed when user hits the tab key "

	self access: 'tabIndex'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> tabIndex: aNumber [
	"  Order fields are traversed when user hits the tab key "

	self propertyAt: 'tabIndex' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> templateString: aString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> type [
	"  Corresponds to the native HTML <input> element's attribute. "

	self access: 'type'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> type: aString [
	"  Corresponds to the native HTML <input> element's attribute. "

	self propertyAt: 'type' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> value [
	"  Corresponds to the native HTML <input> element's attribute. "

	self access: 'value'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> value: aString [
	"  Corresponds to the native HTML <input> element's attribute. "

	self propertyAt: 'value' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitFormWidget >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
