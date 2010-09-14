"
A textarea that dynamically expands/contracts (changing it's height) as the user types, to display all the text without requiring a scroll bar. Takes nearly all the parameters (name, value, etc.) that a vanilla textarea takes. Rows is not supported since this widget adjusts the height.
"
Class {
	#name : #DijitTextarea,
	#superclass : #DijitSimpleTextarea,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitTextarea class >> functionName [

	^ 'dijit.form.Textarea'
]

{ #category : #'functions-generated' }
DijitTextarea >> resize [
	"  Resizes the textarea vertically (should be called after a style/value change) "

	self call: 'resize'
]
