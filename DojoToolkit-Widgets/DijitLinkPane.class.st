"
LinkPane is just a ContentPane that is declared in markup similarly to an anchor. The anchor's body (the words between <a> and </a>) become the title of the widget (used for TabContainer, AccordionContainer, etc.)
"
Class {
	#name : #DijitLinkPane,
	#superclass : #DijitContentPane,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitLinkPane class >> functionName [

	^ 'dijit.layout.LinkPane'
]

{ #category : #'properties-generated' }
DijitLinkPane >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitLinkPane >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'properties-generated' }
DijitLinkPane >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitLinkPane >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitLinkPane >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitLinkPane >> templateString: aString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aString
]

{ #category : #'properties-generated' }
DijitLinkPane >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitLinkPane >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
