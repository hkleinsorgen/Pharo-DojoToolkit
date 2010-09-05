"
Hash marks for dijit.form.HorizontalSlider
"
Class {
	#name : #DijitHorizontalRule,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule class >> functionName [

	^ 'dijit.form.HorizontalRule'
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> container [
	"  For HorizontalSlider, this is either 'topDecoration' or 'bottomDecoration', and indicates whether this rule goes above or below the slider. "

	self access: 'container'
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> container: aString [
	"  For HorizontalSlider, this is either 'topDecoration' or 'bottomDecoration', and indicates whether this rule goes above or below the slider. "

	self propertyAt: 'container' put: aString
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> count [
	"  Number of hash marks to generate "

	self access: 'count'
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> count: aNumber [
	"  Number of hash marks to generate "

	self propertyAt: 'count' put: aNumber
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> ruleStyle [
	"  CSS style to apply to individual hash marks "

	self access: 'ruleStyle'
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> ruleStyle: aString [
	"  CSS style to apply to individual hash marks "

	self propertyAt: 'ruleStyle' put: aString
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> templateString: aString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aString
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitHorizontalRule >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
