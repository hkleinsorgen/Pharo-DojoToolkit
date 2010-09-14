"
A simple textarea that degrades, and responds to minimal LayoutContainer usage, and works with dijit.form.Form. Doesn't automatically size according to input, like Textarea.
"
Class {
	#name : #DijitSimpleTextarea,
	#superclass : #DijitTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitSimpleTextarea class >> functionName [

	^ 'dijit.form.SimpleTextarea'
]

{ #category : #'properties-generated' }
DijitSimpleTextarea >> cols [
	
	self access: 'cols'
]

{ #category : #'properties-generated' }
DijitSimpleTextarea >> cols: aString [
	
	self propertyAt: 'cols' put: aString
]

{ #category : #'properties-generated' }
DijitSimpleTextarea >> rows [
	"  The number of characters per line. "

	self access: 'rows'
]

{ #category : #'properties-generated' }
DijitSimpleTextarea >> rows: aNumber [
	"  The number of characters per line. "

	self propertyAt: 'rows' put: aNumber
]
