Extension { #name : #DijitHorizontalRule }

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> container [
	"  For HorizontalSlider, this is either 'topDecoration' or 'bottomDecoration', and indicates whether this rule goes above or below the slider. "

	self access: 'container'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> container: aString [
	"  For HorizontalSlider, this is either 'topDecoration' or 'bottomDecoration', and indicates whether this rule goes above or below the slider. "

	self propertyAt: 'container' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> count [
	"  Number of hash marks to generate "

	self access: 'count'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> count: aNumber [
	"  Number of hash marks to generate "

	self propertyAt: 'count' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule classSide >> functionName [

	^ 'dijit.form.HorizontalRule'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> ruleStyle [
	"  CSS style to apply to individual hash marks "

	self access: 'ruleStyle'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> ruleStyle: aString [
	"  CSS style to apply to individual hash marks "

	self propertyAt: 'ruleStyle' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> templateString: aString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRule >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
