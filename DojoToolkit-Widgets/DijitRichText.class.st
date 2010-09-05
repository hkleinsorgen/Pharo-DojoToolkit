"
dijit._editor.RichText is the core of dijit.Editor, which provides basic WYSIWYG editing features. It also encapsulates the differences of different js engines for various browsers. Do not use this widget with an HTML <TEXTAREA> tag, since the browser unescapes XML escape characters, like <. This can have unexpected behavior and lead to security issues such as scripting attacks.
"
Class {
	#name : #DijitRichText,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitRichText class >> functionName [

	^ 'dijit.editor.RichText'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> addKeyHandler: key ctrl: ctrl shift: shift handler: handler [ 
	"  The key argument should be in lowercase if it is a letter character "

	self call: 'addKeyHandler' withArguments: (OrderedCollection new add: key; add: ctrl; add: shift; add: handler; yourself)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> addStyleSheet: uri [ 
	"  add an external stylesheet for the editing area "

	self call: 'addStyleSheet' withArguments: (Array with: uri)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> blur [
	"  Remove focus from this instance. "

	self call: 'blur'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> captureEvents [
	"  Events which should be connected to the underlying editing area, events in this array will be addListener with capture=true.
	TODO: looking at the code I don't see any distinction between events and captureEvents, so get rid of this for 2.0 if not sooner "

	self access: 'captureEvents'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> captureEvents: aJsObject [
	"  Events which should be connected to the underlying editing area, events in this array will be addListener with capture=true.
	TODO: looking at the code I don't see any distinction between events and captureEvents, so get rid of this for 2.0 if not sooner "

	self propertyAt: 'captureEvents' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> close: save [ 
	"  Kills the editor and optionally writes back the modified contents to the element from which it originated. "

	self call: 'close' withArguments: (Array with: save)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> contentDomPostFilters [
	
	self access: 'contentDomPostFilters'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> contentDomPostFilters: anArray [
	
	self propertyAt: 'contentDomPostFilters' put: anArray
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> contentDomPreFilters [
	
	self access: 'contentDomPreFilters'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> contentDomPreFilters: anArray [
	
	self propertyAt: 'contentDomPreFilters' put: anArray
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> contentPostFilters [
	
	self access: 'contentPostFilters'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> contentPostFilters: anArray [
	
	self propertyAt: 'contentPostFilters' put: anArray
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> contentPreFilters [
	"  Pre content filter function register array.
	these filters will be executed before the actual editing area gets the html content. "

	self access: 'contentPreFilters'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> contentPreFilters: aJsObject [
	"  Pre content filter function register array.
	these filters will be executed before the actual editing area gets the html content. "

	self propertyAt: 'contentPreFilters' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> cssStateNodes [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self access: 'cssStateNodes'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> cssStateNodes: aJsObject [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self propertyAt: 'cssStateNodes' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> disableSpellCheck [
	"  When true, disables the browser's native spell checking, if supported.
	Works only in Firefox. "

	self access: 'disableSpellCheck'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> disableSpellCheck: aBoolean [
	"  When true, disables the browser's native spell checking, if supported.
	Works only in Firefox. "

	self propertyAt: 'disableSpellCheck' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> disabled [
	"  The editor is disabled; the text cannot be changed. "

	self access: 'disabled'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> disabled: aBoolean [
	"  The editor is disabled; the text cannot be changed. "

	self propertyAt: 'disabled' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> editingArea [
	
	self access: 'editingArea'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> editingArea: aJsObject [
	
	self propertyAt: 'editingArea' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> editingAreaStyleSheets [
	
	self access: 'editingAreaStyleSheets'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> editingAreaStyleSheets: anArray [
	
	self propertyAt: 'editingAreaStyleSheets' put: anArray
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> editorObject [
	
	self access: 'editorObject'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> editorObject: aJsObject [
	
	self propertyAt: 'editorObject' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> escapeXml: str noSingleQuotes: noSingleQuotes [ 
	"  Adds escape sequences for special characters in XML.
	Optionally skips escapes for single quotes "

	self call: 'escapeXml' withArguments: (Array with: str with: noSingleQuotes)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> events [
	"  events which should be connected to the underlying editing area "

	self access: 'events'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> events: aJsObject [
	"  events which should be connected to the underlying editing area "

	self propertyAt: 'events' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> execCommand: command argument: argument [ 
	"  Executes a command in the Rich Text area "

	self call: 'execCommand' withArguments: (Array with: command with: argument)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> focus [
	"  Move focus to this editor "

	self call: 'focus'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> focusNode [
	
	self access: 'focusNode'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> focusNode: aJsObject [
	
	self propertyAt: 'focusNode' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> focusOnLoad [
	"  Focus into this widget when the page is loaded "

	self access: 'focusOnLoad'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> focusOnLoad: aBoolean [
	"  Focus into this widget when the page is loaded "

	self propertyAt: 'focusOnLoad' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> footer [
	
	self access: 'footer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> footer: aJsObject [
	
	self propertyAt: 'footer' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> getFooterHeight [
	"  A function for obtaining the height of the footer node "

	self call: 'getFooterHeight'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> getHeaderHeight [
	"  A function for obtaining the height of the header node "

	self call: 'getHeaderHeight'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> getNodeChildrenHtml: dom [ 
	"  Deprecated.
	Use dijit._editor.getChildrenHtml() instead. "

	self call: 'getNodeChildrenHtml' withArguments: (Array with: dom)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> getNodeHtml: node [ 
	"  Deprecated.
	Use dijit._editor._getNodeHtml() instead. "

	self call: 'getNodeHtml' withArguments: (Array with: node)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> getValue: nonDestructive [ 
	"  Return the current content of the editing area (post filters are applied).
	Users should call attr('value') instead. "

	self call: 'getValue' withArguments: (Array with: nonDestructive)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> header [
	
	self access: 'header'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> header: aJsObject [
	
	self propertyAt: 'header' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> height [
	"  Set height to fix the editor at a specific height, with scrolling.
	By default, this is 300px.
	If you want to have the editor always resizes to accommodate the content, use AlwaysShowToolbar plugin and set height=''.
	If this editor is used within a layout widget, set height='100%'. "

	self access: 'height'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> height: aString [
	"  Set height to fix the editor at a specific height, with scrolling.
	By default, this is 300px.
	If you want to have the editor always resizes to accommodate the content, use AlwaysShowToolbar plugin and set height=''.
	If this editor is used within a layout widget, set height='100%'. "

	self propertyAt: 'height' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> inheritWidth [
	"  whether to inherit the parent's width or simply use 100% "

	self access: 'inheritWidth'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> inheritWidth: aBoolean [
	"  whether to inherit the parent's width or simply use 100% "

	self propertyAt: 'inheritWidth' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> isClosed [
	
	self access: 'isClosed'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> isClosed: aBoolean [
	
	self propertyAt: 'isClosed' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> isLoaded [
	
	self access: 'isLoaded'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> isLoaded: aBoolean [
	
	self propertyAt: 'isLoaded' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> isTabIndent [
	"  Make tab key and shift-tab indent and outdent rather than navigating.
	Caution: sing this makes web pages inaccessible to users unable to use a mouse. "

	self access: 'isTabIndent'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> isTabIndent: aBoolean [
	"  Make tab key and shift-tab indent and outdent rather than navigating.
	Caution: sing this makes web pages inaccessible to users unable to use a mouse. "

	self propertyAt: 'isTabIndent' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> minHeight [
	"  The minimum height that the editor should have. "

	self access: 'minHeight'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> minHeight: aString [
	"  The minimum height that the editor should have. "

	self propertyAt: 'minHeight' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> name [
	"  Specifies the name of a (hidden) <textarea> node on the page that's used to save the editor content on page leave.
	Used to restore editor contents after navigating to a new page and then hitting the back button. "

	self access: 'name'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> name: aString [
	"  Specifies the name of a (hidden) <textarea> node on the page that's used to save the editor content on page leave.
	Used to restore editor contents after navigating to a new page and then hitting the back button. "

	self propertyAt: 'name' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> onChange: newContent [
	"  This is fired if and only if the editor loses focus and the content is changed. "

	self eventAt: 'onChange' put: (newContent asFunction: #(#newContent))
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> onDisplayChanged: e [
	"  If you don't want to have update too often, onNormalizedDisplayChanged should be used instead "

	self eventAt: 'onDisplayChanged' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> onKeyDown: e [
	"  Connect to this function to receive notifications of keys being pressed down. "

	self eventAt: 'onKeyDown' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> onKeyPress: e [
	"  Connect to this function to receive notifications of printable keys being typed. "

	self eventAt: 'onKeyPress' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> onKeyPressed: anObject [
	"  Handler for after the user has pressed a key, and the display has been updated.
	(Runs on a timer so that it runs after the display is updated) "

	self eventAt: 'onKeyPressed' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> onKeyUp: e [
	"  Connect to this function to receive notifications of keys being released. "

	self eventAt: 'onKeyUp' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> onLoad: html [
	"  Handler after the iframe finishes loading. "

	self eventAt: 'onLoad' put: (html asFunction: #(#html))
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> onLoadDeferred [
	"  Deferred which is fired when the editor finishes loading "

	self access: 'onLoadDeferred'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> onLoadDeferred: aJsObject [
	"  Deferred which is fired when the editor finishes loading "

	self propertyAt: 'onLoadDeferred' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> onNormalizedDisplayChanged: anObject [
	"  If something needs to happen immediately after a user change, please use onDisplayChanged instead "

	self eventAt: 'onNormalizedDisplayChanged' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> open: element [ 
	"  Sets up the editing area asynchronously.
	This will result in the creation and replacement with an iframe.
	A dojo.Deferred object is created at this.onLoadDeferred, and users may attach to it to be informed when the rich-text area initialization is finalized "

	self call: 'open' withArguments: (Array with: element)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> placeCursorAtEnd [
	"  Place the cursor at the end of the editing area. "

	self call: 'placeCursorAtEnd'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> placeCursorAtStart [
	"  Place the cursor at the start of the editing area. "

	self call: 'placeCursorAtStart'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> queryCommandAvailable: command [ 
	"  Tests whether a command is supported by the host.
	Clients SHOULD check whether a command is supported before attempting to use it, behaviour for unsupported commands is undefined. "

	self call: 'queryCommandAvailable' withArguments: (Array with: command)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> queryCommandEnabled: command [ 
	"  Check whether a command is enabled or not. "

	self call: 'queryCommandEnabled' withArguments: (Array with: command)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> queryCommandState: command [ 
	"  Check the state of a given command and returns true or false. "

	self call: 'queryCommandState' withArguments: (Array with: command)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> queryCommandValue: command [ 
	"  Check the value of a given command.
	This matters most for custom selections and complex values like font value setting. "

	self call: 'queryCommandValue' withArguments: (Array with: command)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> removeStyleSheet: uri [ 
	"  remove an external stylesheet for the editing area "

	self call: 'removeStyleSheet' withArguments: (Array with: uri)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> replaceValue: html [ 
	"  This function set the content while trying to maintain the undo stack (now only works fine with Moz, this is identical to setValue in all other browsers) "

	self call: 'replaceValue' withArguments: (Array with: html)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> savedContent [
	
	self access: 'savedContent'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> savedContent: aJsObject [
	
	self propertyAt: 'savedContent' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> setDisabled: disabled [ 
	"  Deprecated, use set('disabled', ...) instead. "

	self call: 'setDisabled' withArguments: (Array with: disabled)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> setValue: html [ 
	"  This function sets the content.
	No undo history is preserved.
	Users should use set('value', ...) instead. "

	self call: 'setValue' withArguments: (Array with: html)
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> setupDefaultShortcuts [
	"  Overwrite this to setup your own handlers.
	The default implementation does not use Editor commands, but directly executes the builtin commands within the underlying browser support "

	self call: 'setupDefaultShortcuts'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> styleSheets [
	"  semicolon (';') separated list of css files for the editing area "

	self access: 'styleSheets'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> styleSheets: aString [
	"  semicolon (';') separated list of css files for the editing area "

	self propertyAt: 'styleSheets' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> tabStop [
	
	self access: 'tabStop'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> tabStop: aJsObject [
	
	self propertyAt: 'tabStop' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> updateInterval [
	
	self access: 'updateInterval'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> updateInterval: aNumber [
	
	self propertyAt: 'updateInterval' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> value [
	
	self access: 'value'
]

{ #category : '*DojoToolkit-Widgets' }
DijitRichText >> value: aJsObject [
	
	self propertyAt: 'value' put: aJsObject
]
