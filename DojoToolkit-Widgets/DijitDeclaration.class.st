"
The Declaration widget allows a developer to declare new widget classes directly from a snippet of markup.
"
Class {
	#name : #DijitDeclaration,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitDeclaration class >> functionName [

	^ 'dijit.Declaration'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDeclaration >> mixins [
	"  List containing the prototype for this widget, and also any mixins, ex: ['dijit._Widget', 'dijit._Container'] "

	self access: 'mixins'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDeclaration >> mixins: aJsObject [
	"  List containing the prototype for this widget, and also any mixins, ex: ['dijit._Widget', 'dijit._Container'] "

	self propertyAt: 'mixins' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitDeclaration >> widgetClass [
	"  Name of class being declared, ex: 'acme.myWidget' "

	self access: 'widgetClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitDeclaration >> widgetClass: aString [
	"  Name of class being declared, ex: 'acme.myWidget' "

	self propertyAt: 'widgetClass' put: aString
]
