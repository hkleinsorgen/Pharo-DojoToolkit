"
This widget provides basic WYSIWYG editing features, based on the browser's underlying rich text editing capability, accompanied by a toolbar (dijit.Toolbar). A plugin model is available to extend the editor's capabilities as well as the the options available in the toolbar. Content generation may vary across browsers, and clipboard operations may have different results, to name a few limitations. Note: this widget should not be used with the HTML <TEXTAREA> tag -- see dijit._editor.RichText for details.
"
Class {
	#name : #DijitEditor,
	#superclass : #DijitRichText,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitEditor class >> functionName [

	^ 'dijit.Editor'
]

{ #category : #'functions-generated' }
DijitEditor >> addPlugin: plugin index: index [ 
	"  takes a plugin name as a string or a plugin instance and adds it to the toolbar and associates it with this editor instance.
	The resulting plugin is added to the Editor's plugins array.
	If index is passed, it's placed in the plugins array at that index.
	No big magic, but a nice helper for passing in plugin names via markup. "

	self call: 'addPlugin' withArguments: (Array with: plugin with: index)
]

{ #category : #'functions-generated' }
DijitEditor >> beginEditing: cmd [ 
	"  Called to note that the user has started typing alphanumeric characters, if it's not already noted.
	Deals with saving undo; see editActionInterval parameter. "

	self call: 'beginEditing' withArguments: (Array with: cmd)
]

{ #category : #'properties-generated' }
DijitEditor >> commands [
	
	self access: 'commands'
]

{ #category : #'properties-generated' }
DijitEditor >> commands: aJsObject [
	
	self propertyAt: 'commands' put: aJsObject
]

{ #category : #'properties-generated' }
DijitEditor >> customUndo [
	"  Whether we shall use custom undo/redo support instead of the native browser support.
	By default, we only enable customUndo for IE, as it has broken native undo/redo support.
	Note: the implementation does support other browsers which have W3C DOM2 Range API implemented.
	It was also enabled on WebKit, to fix undo/redo enablement.
	(#9613) "

	self access: 'customUndo'
]

{ #category : #'properties-generated' }
DijitEditor >> customUndo: aBoolean [
	"  Whether we shall use custom undo/redo support instead of the native browser support.
	By default, we only enable customUndo for IE, as it has broken native undo/redo support.
	Note: the implementation does support other browsers which have W3C DOM2 Range API implemented.
	It was also enabled on WebKit, to fix undo/redo enablement.
	(#9613) "

	self propertyAt: 'customUndo' put: aBoolean
]

{ #category : #'properties-generated' }
DijitEditor >> editActionInterval [
	"  When using customUndo, not every keystroke will be saved as a step.
	Instead typing (including delete) will be grouped together: after a user stops typing for editActionInterval seconds, a step will be saved; if a user resume typing within editActionInterval seconds, the timeout will be restarted.
	By default, editActionInterval is 3 seconds. "

	self access: 'editActionInterval'
]

{ #category : #'properties-generated' }
DijitEditor >> editActionInterval: aNumber [
	"  When using customUndo, not every keystroke will be saved as a step.
	Instead typing (including delete) will be grouped together: after a user stops typing for editActionInterval seconds, a step will be saved; if a user resume typing within editActionInterval seconds, the timeout will be restarted.
	By default, editActionInterval is 3 seconds. "

	self propertyAt: 'editActionInterval' put: aNumber
]

{ #category : #'functions-generated' }
DijitEditor >> endEditing: ignoreCaret [ 
	"  Called to note that the user has stopped typing alphanumeric characters, if it's not already noted.
	Deals with saving undo; see editActionInterval parameter. "

	self call: 'endEditing' withArguments: (Array with: ignoreCaret)
]

{ #category : #'functions-generated' }
DijitEditor >> execCommand: cmd [ 
	"  Executes a command in the Rich Text area "

	self call: 'execCommand' withArguments: (Array with: cmd)
]

{ #category : #'properties-generated' }
DijitEditor >> extraPlugins [
	"  A list of extra plugin names which will be appended to plugins array the following 3 functions are required to make the editor play nice under a layout widget, see #4070 "

	self access: 'extraPlugins'
]

{ #category : #'properties-generated' }
DijitEditor >> extraPlugins: aJsObject [
	"  A list of extra plugin names which will be appended to plugins array the following 3 functions are required to make the editor play nice under a layout widget, see #4070 "

	self propertyAt: 'extraPlugins' put: aJsObject
]

{ #category : #'functions-generated' }
DijitEditor >> layout [
	"  Called from dijit.layout._LayoutWidget.resize.
	This shouldn't be called directly "

	self call: 'layout'
]

{ #category : #'events-generated' }
DijitEditor >> onBeforeActivate: e [
	
	self eventAt: 'onBeforeActivate' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitEditor >> onBeforeDeactivate: e [
	"  Called on IE right before focus is lost.
	Saves the selected range. "

	self eventAt: 'onBeforeDeactivate' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitEditor >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitEditor >> onKeyDown: e [
	"  Connect to this function to receive notifications of keys being pressed down. "

	self eventAt: 'onKeyDown' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitEditor >> onKeyPress: e [
	"  Connect to this function to receive notifications of printable keys being typed. "

	self eventAt: 'onKeyPress' put: (e asFunction: #(#event))
]

{ #category : #'events-generated' }
DijitEditor >> onKeyUp: e [
	"  Connect to this function to receive notifications of keys being released. "

	self eventAt: 'onKeyUp' put: (e asFunction: #(#event))
]

{ #category : #'properties-generated' }
DijitEditor >> plugins [
	"  A list of plugin names (as strings) or instances (as objects) for this widget.
	When declared in markup, it might look like: plugins='['bold',{name:'dijit._editor.plugins.FontChoice', command:'fontName', generic:true}]' "

	self access: 'plugins'
]

{ #category : #'properties-generated' }
DijitEditor >> plugins: aJsObject [
	"  A list of plugin names (as strings) or instances (as objects) for this widget.
	When declared in markup, it might look like: plugins='['bold',{name:'dijit._editor.plugins.FontChoice', command:'fontName', generic:true}]' "

	self propertyAt: 'plugins' put: aJsObject
]

{ #category : #'functions-generated' }
DijitEditor >> redo [
	"  Handler for editor redo (ex: ctrl-y) operation "

	self call: 'redo'
]

{ #category : #'functions-generated' }
DijitEditor >> resize: size [ 
	"  Resize the editor to the specified size, see dijit.layout._LayoutWidget.resize "

	self call: 'resize' withArguments: (Array with: size)
]

{ #category : #'properties-generated' }
DijitEditor >> setValueDeferred [
	
	self access: 'setValueDeferred'
]

{ #category : #'properties-generated' }
DijitEditor >> setValueDeferred: aJsObject [
	
	self propertyAt: 'setValueDeferred' put: aJsObject
]

{ #category : #'properties-generated' }
DijitEditor >> toolbar [
	
	self access: 'toolbar'
]

{ #category : #'properties-generated' }
DijitEditor >> toolbar: aJsObject [
	
	self propertyAt: 'toolbar' put: aJsObject
]

{ #category : #'functions-generated' }
DijitEditor >> undo [
	"  Handler for editor undo (ex: ctrl-z) operation "

	self call: 'undo'
]
