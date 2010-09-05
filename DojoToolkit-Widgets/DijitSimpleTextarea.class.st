"
A simple textarea that degrades, and responds to minimal LayoutContainer usage, and works with dijit.form.Form. Doesn't automatically size according to input, like Textarea.
"
Class {
	#name : #DijitSimpleTextarea,
	#superclass : #DijitTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitSimpleTextarea class >> functionName [

	^ 'dijit.form.SimpleTextarea'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSimpleTextarea >> cols [
	
	self access: 'cols'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSimpleTextarea >> cols: aString [
	
	self propertyAt: 'cols' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitSimpleTextarea >> rows [
	"  The number of characters per line. "

	self access: 'rows'
]

{ #category : '*DojoToolkit-Widgets' }
DijitSimpleTextarea >> rows: aNumber [
	"  The number of characters per line. "

	self propertyAt: 'rows' put: aNumber
]
