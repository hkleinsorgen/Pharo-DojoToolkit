"
Widget version of a <select multiple=true> element, for selecting multiple options.
"
Class {
	#name : #DijitMultiSelect,
	#superclass : #DijitFormValueWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitMultiSelect class >> functionName [

	^ 'dijit.form.MultiSelect'
]

{ #category : #'functions-generated' }
DijitMultiSelect >> addSelected: select [ 
	"  Move the selected nodes of a passed Select widget instance to this Select widget. "

	self call: 'addSelected' withArguments: (Array with: select)
]

{ #category : #'functions-generated' }
DijitMultiSelect >> getSelected [
	"  Access the NodeList of the selected options directly "

	self call: 'getSelected'
]

{ #category : #'functions-generated' }
DijitMultiSelect >> invertSelection: onChange [ 
	"  Invert the selection "

	self call: 'invertSelection' withArguments: (Array with: onChange)
]

{ #category : #'properties-generated' }
DijitMultiSelect >> multiple [
	
	self access: 'multiple'
]

{ #category : #'properties-generated' }
DijitMultiSelect >> multiple: aJsObject [
	
	self propertyAt: 'multiple' put: aJsObject
]

{ #category : #'functions-generated' }
DijitMultiSelect >> resize: size [ 
	
	self call: 'resize' withArguments: (Array with: size)
]

{ #category : #'properties-generated' }
DijitMultiSelect >> size [
	"  Number of elements to display on a page NOTE: may be removed in version 2.0, since elements may have variable height; set the size via style='...' or CSS class names instead.
	for Form "

	self access: 'size'
]

{ #category : #'properties-generated' }
DijitMultiSelect >> size: aNumber [
	"  Number of elements to display on a page NOTE: may be removed in version 2.0, since elements may have variable height; set the size via style='...' or CSS class names instead.
	for Form "

	self propertyAt: 'size' put: aNumber
]
