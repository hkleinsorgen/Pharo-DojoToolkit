"
dijit._editor.RichText is the core of dijit.Editor, which provides basic WYSIWYG editing features. It also encapsulates the differences of different js engines for various browsers. Do not use this widget with an HTML <TEXTAREA> tag, since the browser unescapes XML escape characters, like <. This can have unexpected behavior and lead to security issues such as scripting attacks.
"
Class {
	#name : #DijitRichText,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitRichText class >> functionName [

	^ 'dijit.editor.RichText'
]

{ #category : #'functions-generated' }
DijitRichText >> addKeyHandler: key ctrl: ctrl shift: shift handler: handler [ 
	"  The key argument should be in lowercase if it is a letter character "

	self call: 'addKeyHandler' withArguments: (OrderedCollection new add: key; add: ctrl; add: shift; add: handler; yourself)
]

{ #category : #'functions-generated' }
DijitRichText >> addStyleSheet: uri [ 
	"  add an external stylesheet for the editing area "

	self call: 'addStyleSheet' withArguments: (Array with: uri)
]

{ #category : #'functions-generated' }
DijitRichText >> blur [
	"  Remove focus from this instance. "

	self call: 'blur'
]

{ #category : #'properties-generated' }
DijitRichText >> captureEvents [
	"  Events which should be connected to the underlying editing area, events in this array will be addListener with capture=true.
	TODO: looking at the code I don't see any distinction between events and captureEvents, so get rid of this for 2.0 if not sooner "

	self access: 'captureEvents'
]

{ #category : #'properties-generated' }
DijitRichText >> captureEvents: aJsObject [
	"  Events which should be connected to the underlying editing area, events in this array will be addListener with capture=true.
	TODO: looking at the code I don't see any distinction between events and captureEvents, so get rid of this for 2.0 if not sooner "

	self propertyAt: 'captureEvents' put: aJsObject
]

{ #category : #'functions-generated' }
DijitRichText >> close: save [ 
	"  Kills the editor and optionally writes back the modified contents to the element from which it originated. "

	self call: 'close' withArguments: (Array with: save)
]

{ #category : #'properties-generated' }
DijitRichText >> contentDomPostFilters [
	
	self access: 'contentDomPostFilters'
]

{ #category : #'properties-generated' }
DijitRichText >> contentDomPostFilters: anArray [
	
	self propertyAt: 'contentDomPostFilters' put: anArray
]

{ #category : #'properties-generated' }
DijitRichText >> contentDomPreFilters [
	
	self access: 'contentDomPreFilters'
]

{ #category : #'properties-generated' }
DijitRichText >> contentDomPreFilters: anArray [
	
	self propertyAt: 'contentDomPreFilters' put: anArray
]

{ #category : #'properties-generated' }
DijitRichText >> contentPostFilters [
	
	self access: 'contentPostFilters'
]

{ #category : #'properties-generated' }
DijitRichText >> contentPostFilters: anArray [
	
	self propertyAt: 'contentPostFilters' put: anArray
]

{ #category : #'properties-generated' }
DijitRichText >> contentPreFilters [
	"  Pre content filter function register array.
	these filters will be executed before the actual editing area gets the html content. "

	self access: 'contentPreFilters'
]

{ #category : #'properties-generated' }
DijitRichText >> contentPreFilters: aJsObject [
	"  Pre content filter function register array.
	these filters will be executed before the actual editing area gets the html content. "

	self propertyAt: 'contentPreFilters' put: aJsObject
]

{ #category : #'properties-generated' }
DijitRichText >> cssStateNodes [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self access: 'cssStateNodes'
]

{ #category : #'properties-generated' }
DijitRichText >> cssStateNodes: aJsObject [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self propertyAt: 'cssStateNodes' put: aJsObject
]

{ #category : #'properties-generated' }
DijitRichText >> disableSpellCheck [
	"  When true, disables the browser's native spell checking, if supported.
	Works only in Firefox. "

	self access: 'disableSpellCheck'
]

{ #category : #'properties-generated' }
DijitRichText >> disableSpellCheck: aBoolean [
	"  When true, disables the browser's native spell checking, if supported.
	Works only in Firefox. "

	self propertyAt: 'disableSpellCheck' put: aBoolean
]

{ #category : #'properties-generated' }
DijitRichText >> disabled [
	"  The editor is disabled; the text cannot be changed. "

	self access: 'disabled'
]

{ #category : #'properties-generated' }
DijitRichText >> disabled: aBoolean [
	"  The editor is disabled; the text cannot be changed. "

	self propertyAt: 'disabled' put: aBoolean
]

{ #category : #'properties-generated' }
DijitRichText >> editingArea [
	
	self access: 'editingArea'
]

{ #category : #'properties-generated' }
DijitRichText >> editingArea: aJsObject [
	
	self propertyAt: 'editingArea' put: aJsObject
]

{ #category : #'properties-generated' }
DijitRichText >> editingAreaStyleSheets [
	
	self access: 'editingAreaStyleSheets'
]

{ #category : #'properties-generated' }
DijitRichText >> editingAreaStyleSheets: anArray [
	
	self propertyAt: 'editingAreaStyleSheets' put: anArray
]

{ #category : #'properties-generated' }
DijitRichText >> editorObject [
	
	self access: 'editorObject'
]

{ #category : #'properties-generated' }
DijitRichText >> editorObject: aJsObject [
	
	self propertyAt: 'editorObject' put: aJsObject
]

{ #category : #'functions-generated' }
DijitRichText >> escapeXml: str noSingleQuotes: noSingleQuotes [ 
	"  Adds escape sequences for special characters in XML.
	Optionally skips escapes for single quotes "

	self call: 'escapeXml' withArguments: (Array with: str with: noSingleQuotes)
]

{ #category : #'properties-generated' }
DijitRichText >> events [
	"  events which should be connected to the underlying editing area "

	self access: 'events'
]

{ #category : #'properties-generated' }
DijitRichText >> events: aJsObject [
	"  events which should be connected to the underlying editing area "

	self propertyAt: 'events' put: aJsObject
]

{ #category : #'functions-generated' }
DijitRichText >> execCommand: command argument: argument [ 
	"  Executes a command in the Rich Text area "

	self call: 'execCommand' withArguments: (Array with: command with: argument)
]

{ #category : #'functions-generated' }
DijitRichText >> focus [
	"  Move focus to this editor "

	self call: 'focus'
]

{ #category : #'properties-generated' }
DijitRichText >> focusNode [
	
	self access: 'focusNode'
]

{ #category : #'properties-generated' }
DijitRichText >> focusNode: aJsObject [
	
	self propertyAt: 'focusNode' put: aJsObject
]

{ #category : #'properties-generated' }
DijitRichText >> focusOnLoad [
	"  Focus into this widget when the page is loaded "

	self access: 'focusOnLoad'
]

{ #category : #'properties-generated' }
DijitRichText >> focusOnLoad: aBoolean [
	"  Focus into this widget when the page is loaded "

	self propertyAt: 'focusOnLoad' put: aBoolean
]

{ #category : #'properties-generated' }
DijitRichText >> footer [
	
	self access: 'footer'
]

{ #category : #'properties-generated' }
DijitRichText >> footer: aJsObject [
	
	self propertyAt: 'footer' put: aJsObject
]

{ #category : #'functions-generated' }
DijitRichText >> getFooterHeight [
	"  A function for obtaining the height of the footer node "

	self call: 'getFooterHeight'
]

{ #category : #'functions-generated' }
DijitRichText >> getHeaderHeight [
	"  A function for obtaining the height of the header node "

	self call: 'getHeaderHeight'
]

{ #category : #'functions-generated' }
DijitRichText >> getNodeChildrenHtml: dom [ 
	"  Deprecated.
	Use dijit._editor.getChildrenHtml() instead. "

	self call: 'getNodeChildrenHtml' withArguments: (Array with: dom)
]

{ #category : #'functions-generated' }
DijitRichText >> getNodeHtml: node [ 
	"  Deprecated.
	Use dijit._editor._getNodeHtml() instead. "

	self call: 'getNodeHtml' withArguments: (Array with: node)
]

{ #category : #'functions-generated' }
DijitRichText >> getValue: nonDestructive [ 
	"  Return the current content of the editing area (post filters are applied).
	Users should call attr('value') instead. "

	self call: 'getValue' withArguments: (Array with: nonDestructive)
]

{ #category : #'properties-generated' }
DijitRichText >> header [
	
	self access: 'header'
]

{ #category : #'properties-generated' }
DijitRichText >> header: aJsObject [
	
	self propertyAt: 'header' put: aJsObject
]

{ #category : #'properties-generated' }
DijitRichText >> height [
	"  Set height to fix the editor at a specific height, with scrolling.
	By default, this is 300px.
	If you want to have the editor always resizes to accommodate the content, use AlwaysShowToolbar plugin and set height=''.
	If this editor is used within a layout widget, set height='100%'. "

	self access: 'height'
]

{ #category : #'properties-generated' }
DijitRichText >> height: aString [
	"  Set height to fix the editor at a specific height, with scrolling.
	By default, this is 300px.
	If you want to have the editor always resizes to accommodate the content, use AlwaysShowToolbar plugin and set height=''.
	If this editor is used within a layout widget, set height='100%'. "

	self propertyAt: 'height' put: aString
]

{ #category : #'properties-generated' }
DijitRichText >> inheritWidth [
	"  whether to inherit the parent's width or simply use 100% "

	self access: 'inheritWidth'
]

{ #category : #'properties-generated' }
DijitRichText >> inheritWidth: aBoolean [
	"  whether to inherit the parent's width or simply use 100% "

	self propertyAt: 'inheritWidth' put: aBoolean
]

{ #category : #'properties-generated' }
DijitRichText >> isClosed [
	
	self access: 'isClosed'
]

{ #category : #'properties-generated' }
DijitRichText >> isClosed: aBoolean [
	
	self propertyAt: 'isClosed' put: aBoolean
]

{ #category : #'properties-generated' }
DijitRichText >> isLoaded [
	
	self access: 'isLoaded'
]

{ #category : #'properties-generated' }
DijitRichText >> isLoaded: aBoolean [
	
	self propertyAt: 'isLoaded' put: aBoolean
]

{ #category : #'properties-generated' }
DijitRichText >> isTabIndent [
	"  Make tab key and shift-tab indent and outdent rather than navigating.
	Caution: sing this makes web pages inaccessible to users unable to use a mouse. "

	self access: 'isTabIndent'
]

{ #category : #'properties-generated' }
DijitRichText >> isTabIndent: aBoolean [
	"  Make tab key and shift-tab indent and outdent rather than navigating.
	Caution: sing this makes web pages inaccessible to users unable to use a mouse. "

	self propertyAt: 'isTabIndent' put: aBoolean
]

{ #category : #'properties-generated' }
DijitRichText >> minHeight [
	"  The minimum height that the editor should have. "

	self access: 'minHeight'
]

{ #category : #'properties-generated' }
DijitRichText >> minHeight: aString [
	"  The minimum height that the editor should have. "

	self propertyAt: 'minHeight' put: aString
]

{ #category : #'properties-generated' }
DijitRichText >> name [
	"  Specifies the name of a (hidden) <textarea> node on the page that's used to save the editor content on page leave.
	Used to restore editor contents after navigating to a new page and then hitting the back button. "

	self access: 'name'
]

{ #category : #'properties-generated' }
DijitRichText >> name: aString [
	"  Specifies the name of a (hidden) <textarea> node on the page that's used to save the editor content on page leave.
	Used to restore editor contents after navigating to a new page and then hitting the back button. "

	self propertyAt: 'name' put: aString
]

{ #category : #'events-generated' }
DijitRichText >> onChange: newContent [
	"  This is fired if and only if the editor loses focus and the content is changed. "

	self eventAt: 'onChange' put: (newContent asFunction: #(#newContent))
]

{ #category : #'events-generated' }
DijitRichText >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitRichText >> onDisplayChanged: e [
	"  If you don't want to have update too often, onNormalizedDisplayChanged should be used instead "

	self eventAt: 'onDisplayChanged' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitRichText >> onKeyDown: e [
	"  Connect to this function to receive notifications of keys being pressed down. "

	self eventAt: 'onKeyDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitRichText >> onKeyPress: e [
	"  Connect to this function to receive notifications of printable keys being typed. "

	self eventAt: 'onKeyPress' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitRichText >> onKeyPressed: anObject [
	"  Handler for after the user has pressed a key, and the display has been updated.
	(Runs on a timer so that it runs after the display is updated) "

	self eventAt: 'onKeyPressed' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitRichText >> onKeyUp: e [
	"  Connect to this function to receive notifications of keys being released. "

	self eventAt: 'onKeyUp' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitRichText >> onLoad: html [
	"  Handler after the iframe finishes loading. "

	self eventAt: 'onLoad' put: (html asFunction: #(#html))
]

{ #category : #'properties-generated' }
DijitRichText >> onLoadDeferred [
	"  Deferred which is fired when the editor finishes loading "

	self access: 'onLoadDeferred'
]

{ #category : #'properties-generated' }
DijitRichText >> onLoadDeferred: aJsObject [
	"  Deferred which is fired when the editor finishes loading "

	self propertyAt: 'onLoadDeferred' put: aJsObject
]

{ #category : #'events-generated' }
DijitRichText >> onNormalizedDisplayChanged: anObject [
	"  If something needs to happen immediately after a user change, please use onDisplayChanged instead "

	self eventAt: 'onNormalizedDisplayChanged' put: (anObject asFunction: #())
]

{ #category : #'functions-generated' }
DijitRichText >> open: element [ 
	"  Sets up the editing area asynchronously.
	This will result in the creation and replacement with an iframe.
	A dojo.Deferred object is created at this.onLoadDeferred, and users may attach to it to be informed when the rich-text area initialization is finalized "

	self call: 'open' withArguments: (Array with: element)
]

{ #category : #'functions-generated' }
DijitRichText >> placeCursorAtEnd [
	"  Place the cursor at the end of the editing area. "

	self call: 'placeCursorAtEnd'
]

{ #category : #'functions-generated' }
DijitRichText >> placeCursorAtStart [
	"  Place the cursor at the start of the editing area. "

	self call: 'placeCursorAtStart'
]

{ #category : #'functions-generated' }
DijitRichText >> queryCommandAvailable: command [ 
	"  Tests whether a command is supported by the host.
	Clients SHOULD check whether a command is supported before attempting to use it, behaviour for unsupported commands is undefined. "

	self call: 'queryCommandAvailable' withArguments: (Array with: command)
]

{ #category : #'functions-generated' }
DijitRichText >> queryCommandEnabled: command [ 
	"  Check whether a command is enabled or not. "

	self call: 'queryCommandEnabled' withArguments: (Array with: command)
]

{ #category : #'functions-generated' }
DijitRichText >> queryCommandState: command [ 
	"  Check the state of a given command and returns true or false. "

	self call: 'queryCommandState' withArguments: (Array with: command)
]

{ #category : #'functions-generated' }
DijitRichText >> queryCommandValue: command [ 
	"  Check the value of a given command.
	This matters most for custom selections and complex values like font value setting. "

	self call: 'queryCommandValue' withArguments: (Array with: command)
]

{ #category : #'functions-generated' }
DijitRichText >> removeStyleSheet: uri [ 
	"  remove an external stylesheet for the editing area "

	self call: 'removeStyleSheet' withArguments: (Array with: uri)
]

{ #category : #'functions-generated' }
DijitRichText >> replaceValue: html [ 
	"  This function set the content while trying to maintain the undo stack (now only works fine with Moz, this is identical to setValue in all other browsers) "

	self call: 'replaceValue' withArguments: (Array with: html)
]

{ #category : #'properties-generated' }
DijitRichText >> savedContent [
	
	self access: 'savedContent'
]

{ #category : #'properties-generated' }
DijitRichText >> savedContent: aJsObject [
	
	self propertyAt: 'savedContent' put: aJsObject
]

{ #category : #'functions-generated' }
DijitRichText >> setDisabled: disabled [ 
	"  Deprecated, use set('disabled', ...) instead. "

	self call: 'setDisabled' withArguments: (Array with: disabled)
]

{ #category : #'functions-generated' }
DijitRichText >> setValue: html [ 
	"  This function sets the content.
	No undo history is preserved.
	Users should use set('value', ...) instead. "

	self call: 'setValue' withArguments: (Array with: html)
]

{ #category : #'functions-generated' }
DijitRichText >> setupDefaultShortcuts [
	"  Overwrite this to setup your own handlers.
	The default implementation does not use Editor commands, but directly executes the builtin commands within the underlying browser support "

	self call: 'setupDefaultShortcuts'
]

{ #category : #'properties-generated' }
DijitRichText >> styleSheets [
	"  semicolon (';') separated list of css files for the editing area "

	self access: 'styleSheets'
]

{ #category : #'properties-generated' }
DijitRichText >> styleSheets: aString [
	"  semicolon (';') separated list of css files for the editing area "

	self propertyAt: 'styleSheets' put: aString
]

{ #category : #'properties-generated' }
DijitRichText >> tabStop [
	
	self access: 'tabStop'
]

{ #category : #'properties-generated' }
DijitRichText >> tabStop: aJsObject [
	
	self propertyAt: 'tabStop' put: aJsObject
]

{ #category : #'properties-generated' }
DijitRichText >> updateInterval [
	
	self access: 'updateInterval'
]

{ #category : #'properties-generated' }
DijitRichText >> updateInterval: aNumber [
	
	self propertyAt: 'updateInterval' put: aNumber
]

{ #category : #'properties-generated' }
DijitRichText >> value [
	
	self access: 'value'
]

{ #category : #'properties-generated' }
DijitRichText >> value: aJsObject [
	
	self propertyAt: 'value' put: aJsObject
]
