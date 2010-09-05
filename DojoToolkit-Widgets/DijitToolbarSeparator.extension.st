Extension { #name : #DijitToolbarSeparator }

{ #category : '*DojoToolkit-Widgets' }
DijitToolbarSeparator >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitToolbarSeparator >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitToolbarSeparator classSide >> functionName [

	^ 'dijit.ToolbarSeparator'
]

{ #category : '*DojoToolkit-Widgets' }
DijitToolbarSeparator >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : '*DojoToolkit-Widgets' }
DijitToolbarSeparator >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitToolbarSeparator >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : '*DojoToolkit-Widgets' }
DijitToolbarSeparator >> templateString: aString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitToolbarSeparator >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitToolbarSeparator >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
