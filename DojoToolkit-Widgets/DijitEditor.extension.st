Extension { #name : #DijitEditor }

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> addPlugin: plugin index: index [ 
	"  takes a plugin name as a string or a plugin instance and adds it to the toolbar and associates it with this editor instance.
	The resulting plugin is added to the Editor's plugins array.
	If index is passed, it's placed in the plugins array at that index.
	No big magic, but a nice helper for passing in plugin names via markup. "

	self call: 'addPlugin' withArguments: (Array with: plugin with: index)
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> beginEditing: cmd [ 
	"  Called to note that the user has started typing alphanumeric characters, if it's not already noted.
	Deals with saving undo; see editActionInterval parameter. "

	self call: 'beginEditing' withArguments: (Array with: cmd)
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> commands [
	
	self access: 'commands'
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> commands: aJsObject [
	
	self propertyAt: 'commands' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> customUndo [
	"  Whether we shall use custom undo/redo support instead of the native browser support.
	By default, we only enable customUndo for IE, as it has broken native undo/redo support.
	Note: the implementation does support other browsers which have W3C DOM2 Range API implemented.
	It was also enabled on WebKit, to fix undo/redo enablement.
	(#9613) "

	self access: 'customUndo'
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> customUndo: aBoolean [
	"  Whether we shall use custom undo/redo support instead of the native browser support.
	By default, we only enable customUndo for IE, as it has broken native undo/redo support.
	Note: the implementation does support other browsers which have W3C DOM2 Range API implemented.
	It was also enabled on WebKit, to fix undo/redo enablement.
	(#9613) "

	self propertyAt: 'customUndo' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> editActionInterval [
	"  When using customUndo, not every keystroke will be saved as a step.
	Instead typing (including delete) will be grouped together: after a user stops typing for editActionInterval seconds, a step will be saved; if a user resume typing within editActionInterval seconds, the timeout will be restarted.
	By default, editActionInterval is 3 seconds. "

	self access: 'editActionInterval'
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> editActionInterval: aNumber [
	"  When using customUndo, not every keystroke will be saved as a step.
	Instead typing (including delete) will be grouped together: after a user stops typing for editActionInterval seconds, a step will be saved; if a user resume typing within editActionInterval seconds, the timeout will be restarted.
	By default, editActionInterval is 3 seconds. "

	self propertyAt: 'editActionInterval' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> endEditing: ignoreCaret [ 
	"  Called to note that the user has stopped typing alphanumeric characters, if it's not already noted.
	Deals with saving undo; see editActionInterval parameter. "

	self call: 'endEditing' withArguments: (Array with: ignoreCaret)
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> execCommand: cmd [ 
	"  Executes a command in the Rich Text area "

	self call: 'execCommand' withArguments: (Array with: cmd)
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> extraPlugins [
	"  A list of extra plugin names which will be appended to plugins array the following 3 functions are required to make the editor play nice under a layout widget, see #4070 "

	self access: 'extraPlugins'
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> extraPlugins: aJsObject [
	"  A list of extra plugin names which will be appended to plugins array the following 3 functions are required to make the editor play nice under a layout widget, see #4070 "

	self propertyAt: 'extraPlugins' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor classSide >> functionName [

	^ 'dijit.Editor'
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> layout [
	"  Called from dijit.layout._LayoutWidget.resize.
	This shouldn't be called directly "

	self call: 'layout'
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> onBeforeActivate: e [
	
	self eventAt: 'onBeforeActivate' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> onBeforeDeactivate: e [
	"  Called on IE right before focus is lost.
	Saves the selected range. "

	self eventAt: 'onBeforeDeactivate' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> onClick: e [
	"  Connect to this function to receive notifications of mouse click events. "

	self eventAt: 'onClick' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> onKeyDown: e [
	"  Connect to this function to receive notifications of keys being pressed down. "

	self eventAt: 'onKeyDown' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> onKeyPress: e [
	"  Connect to this function to receive notifications of printable keys being typed. "

	self eventAt: 'onKeyPress' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> onKeyUp: e [
	"  Connect to this function to receive notifications of keys being released. "

	self eventAt: 'onKeyUp' put: (e asFunction: #(#event))
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> plugins [
	"  A list of plugin names (as strings) or instances (as objects) for this widget.
	When declared in markup, it might look like: plugins='['bold',{name:'dijit._editor.plugins.FontChoice', command:'fontName', generic:true}]' "

	self access: 'plugins'
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> plugins: aJsObject [
	"  A list of plugin names (as strings) or instances (as objects) for this widget.
	When declared in markup, it might look like: plugins='['bold',{name:'dijit._editor.plugins.FontChoice', command:'fontName', generic:true}]' "

	self propertyAt: 'plugins' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> redo [
	"  Handler for editor redo (ex: ctrl-y) operation "

	self call: 'redo'
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> resize: size [ 
	"  Resize the editor to the specified size, see dijit.layout._LayoutWidget.resize "

	self call: 'resize' withArguments: (Array with: size)
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> setValueDeferred [
	
	self access: 'setValueDeferred'
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> setValueDeferred: aJsObject [
	
	self propertyAt: 'setValueDeferred' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> toolbar [
	
	self access: 'toolbar'
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> toolbar: aJsObject [
	
	self propertyAt: 'toolbar' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitEditor >> undo [
	"  Handler for editor undo (ex: ctrl-z) operation "

	self call: 'undo'
]
