"
A TabContainer is a container that has multiple panes, but shows only one pane at a time. There are a set of tabs corresponding to each pane, where each tab has the name (aka title) of the pane, and optionally a close button.
"
Class {
	#name : #DijitTabContainerBase,
	#superclass : #DijitStackContainer,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitTabContainerBase class >> functionName [

	^ 'dijit.layout.TabContainerBase'
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> nested [
	"  If true, use styling for a TabContainer nested inside another TabContainer.
	For tundra etc., makes tabs look like links, and hides the outer border since the outer TabContainer already has a border. "

	self access: 'nested'
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> nested: aBoolean [
	"  If true, use styling for a TabContainer nested inside another TabContainer.
	For tundra etc., makes tabs look like links, and hides the outer border since the outer TabContainer already has a border. "

	self propertyAt: 'nested' put: aBoolean
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> tabPosition [
	"  Defines where tabs go relative to tab content.
	'top', 'bottom', 'left-h', 'right-h' "

	self access: 'tabPosition'
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> tabPosition: aString [
	"  Defines where tabs go relative to tab content.
	'top', 'bottom', 'left-h', 'right-h' "

	self propertyAt: 'tabPosition' put: aString
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> tabStrip [
	"  Defines whether the tablist gets an extra class for layouting, putting a border/shading around the set of tabs. "

	self access: 'tabStrip'
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> tabStrip: aBoolean [
	"  Defines whether the tablist gets an extra class for layouting, putting a border/shading around the set of tabs. "

	self propertyAt: 'tabStrip' put: aBoolean
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> templateString: aJsObject [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aJsObject
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitTabContainerBase >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
