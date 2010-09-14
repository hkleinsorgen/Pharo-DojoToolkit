"
Dijit form widget
"
Class {
	#name : #DojoWidgetFormTag,
	#superclass : #DojoAjaxFormTag,
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoWidgetFormTag >> tag [
	" see http://bugs.dojotoolkit.org/ticket/8424
	note that the markup parser will transform it into a <form> tag "

	^ 'div'
]
