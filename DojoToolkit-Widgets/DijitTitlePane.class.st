"
An accessible container with a title Heading, and a content section that slides open and closed. TitlePane is an extension to dijit.layout.ContentPane, providing all the useful content-control aspects from it.
"
Class {
	#name : #DijitTitlePane,
	#superclass : #DijitContentPane,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane class >> functionName [

	^ 'dijit.TitlePane'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> cssStateNodes [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self access: 'cssStateNodes'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> cssStateNodes: aJsObject [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self propertyAt: 'cssStateNodes' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> duration [
	"  Time in milliseconds to fade in/fade out "

	self access: 'duration'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> duration: aNumber [
	"  Time in milliseconds to fade in/fade out "

	self propertyAt: 'duration' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> hideNode [
	
	self access: 'hideNode'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> hideNode: aJsObject [
	
	self propertyAt: 'hideNode' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> open [
	"  Whether pane is opened or closed. "

	self access: 'open'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> open: aBoolean [
	"  Whether pane is opened or closed. "

	self propertyAt: 'open' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> setTitle: title [ 
	"  Deprecated.
	Use set('title', ...) instead. "

	self call: 'setTitle' withArguments: (Array with: title)
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> tabIndex [
	"  Tabindex setting for the title (so users can tab to the title then use space/enter to open/close the title pane) "

	self access: 'tabIndex'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> tabIndex: aString [
	"  Tabindex setting for the title (so users can tab to the title then use space/enter to open/close the title pane) "

	self propertyAt: 'tabIndex' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> templateString: aJsObject [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> titleBarNode [
	
	self access: 'titleBarNode'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> titleBarNode: aJsObject [
	
	self propertyAt: 'titleBarNode' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> toggle [
	"  Switches between opened and closed state "

	self call: 'toggle'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> toggleable [
	"  Whether pane can be opened or closed by clicking the title bar. "

	self access: 'toggleable'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> toggleable: aBoolean [
	"  Whether pane can be opened or closed by clicking the title bar. "

	self propertyAt: 'toggleable' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> wipeNode [
	
	self access: 'wipeNode'
]

{ #category : '*DojoToolkit-Widgets' }
DijitTitlePane >> wipeNode: aJsObject [
	
	self propertyAt: 'wipeNode' put: aJsObject
]
