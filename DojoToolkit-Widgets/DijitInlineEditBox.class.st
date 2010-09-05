"
Behavior for an existing node (<p>, <div>, <span>, etc.) so that when you click it, an editor shows up in place of the original text. Optionally, Save and Cancel button are displayed below the edit widget. When Save is clicked, the text is pulled from the edit widget and redisplayed and the edit widget is again hidden. By default a plain Textarea widget is used as the editor (or for inline values a TextBox), but you can specify an editor such as dijit.Editor (for editing HTML) or a Slider (for adjusting a number). An edit widget must support the following API to be used: - displayedValue or value as initialization parameter, and available through set('displayedValue') / set('value') - void focus() - DOM-node focusNode = node containing editable text
"
Class {
	#name : #DijitInlineEditBox,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitInlineEditBox class >> functionName [

	^ 'dijit.InlineEditBox'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> autoSave [
	"  Changing the value automatically saves it; don't have to push save button (and save button isn't even displayed) "

	self access: 'autoSave'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> autoSave: aBoolean [
	"  Changing the value automatically saves it; don't have to push save button (and save button isn't even displayed) "

	self propertyAt: 'autoSave' put: aBoolean
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> buttonCancel [
	"  Cancel button label "

	self access: 'buttonCancel'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> buttonCancel: aString [
	"  Cancel button label "

	self propertyAt: 'buttonCancel' put: aString
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> buttonSave [
	"  Save button label "

	self access: 'buttonSave'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> buttonSave: aString [
	"  Save button label "

	self propertyAt: 'buttonSave' put: aString
]

{ #category : #'functions-generated' }
DijitInlineEditBox >> cancel: focus [ 
	"  Revert to display mode, discarding any changes made in the editor "

	self call: 'cancel' withArguments: (Array with: focus)
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> disabled [
	
	self access: 'disabled'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> disabled: aJsObject [
	
	self propertyAt: 'disabled' put: aJsObject
]

{ #category : #'functions-generated' }
DijitInlineEditBox >> edit [
	"  Display the editor widget in place of the original (read only) markup. "

	self call: 'edit'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> editing [
	"  Is the node currently in edit mode? "

	self access: 'editing'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> editing: aBoolean [
	"  Is the node currently in edit mode? "

	self propertyAt: 'editing' put: aBoolean
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> editor [
	"  Class name for Editor widget "

	self access: 'editor'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> editor: aString [
	"  Class name for Editor widget "

	self propertyAt: 'editor' put: aString
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> editorParams [
	"  Set of parameters for editor, like {required: true} "

	self access: 'editorParams'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> editorParams: aJsObject [
	"  Set of parameters for editor, like {required: true} "

	self propertyAt: 'editorParams' put: aJsObject
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> editorWrapper [
	"  Class name for widget that wraps the editor widget, displaying save/cancel buttons. "

	self access: 'editorWrapper'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> editorWrapper: aString [
	"  Class name for widget that wraps the editor widget, displaying save/cancel buttons. "

	self propertyAt: 'editorWrapper' put: aString
]

{ #category : #'functions-generated' }
DijitInlineEditBox >> getValue [
	"  Deprecated.
	Use get('value') instead. "

	self call: 'getValue'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> noValueIndicator [
	"  The text that gets displayed when there is no value (so that the user has a place to click to edit) "

	self access: 'noValueIndicator'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> noValueIndicator: aString [
	"  The text that gets displayed when there is no value (so that the user has a place to click to edit) "

	self propertyAt: 'noValueIndicator' put: aString
]

{ #category : #'events-generated' }
DijitInlineEditBox >> onCancel: anObject [
	"  Set this handler to be notified when editing is cancelled. "

	self eventAt: 'onCancel' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitInlineEditBox >> onChange: value [
	"  Set this handler to be notified of changes to value. "

	self eventAt: 'onChange' put: (value asFunction: #(#value))
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> renderAsHtml [
	"  Set this to true if the specified Editor's value should be interpreted as HTML rather than plain text (ex: dijit.Editor) "

	self access: 'renderAsHtml'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> renderAsHtml: aBoolean [
	"  Set this to true if the specified Editor's value should be interpreted as HTML rather than plain text (ex: dijit.Editor) "

	self propertyAt: 'renderAsHtml' put: aBoolean
]

{ #category : #'functions-generated' }
DijitInlineEditBox >> save: focus [ 
	"  Save the contents of the editor and revert to display mode. "

	self call: 'save' withArguments: (Array with: focus)
]

{ #category : #'functions-generated' }
DijitInlineEditBox >> setDisabled: disabled [ 
	"  Deprecated.
	Use set('disabled', ...) instead. "

	self call: 'setDisabled' withArguments: (Array with: disabled)
]

{ #category : #'functions-generated' }
DijitInlineEditBox >> setValue: val [ 
	"  Deprecated.
	Use set('value', ...) instead. "

	self call: 'setValue' withArguments: (Array with: val)
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> value [
	"  The display value of the widget in read-only mode "

	self access: 'value'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> value: aString [
	"  The display value of the widget in read-only mode "

	self propertyAt: 'value' put: aString
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> width [
	"  Width of editor.
	By default it's width=100% (ie, block mode). "

	self access: 'width'
]

{ #category : #'properties-generated' }
DijitInlineEditBox >> width: aString [
	"  Width of editor.
	By default it's width=100% (ie, block mode). "

	self propertyAt: 'width' put: aString
]
