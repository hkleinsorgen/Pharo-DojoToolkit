"
The Declaration widget allows a developer to declare new widget classes directly from a snippet of markup.
"
Class {
	#name : #DijitDeclaration,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitDeclaration class >> functionName [

	^ 'dijit.Declaration'
]

{ #category : #'properties-generated' }
DijitDeclaration >> mixins [
	"  List containing the prototype for this widget, and also any mixins, ex: ['dijit._Widget', 'dijit._Container'] "

	self access: 'mixins'
]

{ #category : #'properties-generated' }
DijitDeclaration >> mixins: aJsObject [
	"  List containing the prototype for this widget, and also any mixins, ex: ['dijit._Widget', 'dijit._Container'] "

	self propertyAt: 'mixins' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDeclaration >> widgetClass [
	"  Name of class being declared, ex: 'acme.myWidget' "

	self access: 'widgetClass'
]

{ #category : #'properties-generated' }
DijitDeclaration >> widgetClass: aString [
	"  Name of class being declared, ex: 'acme.myWidget' "

	self propertyAt: 'widgetClass' put: aString
]
