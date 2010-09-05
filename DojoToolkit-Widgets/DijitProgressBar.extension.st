Extension { #name : #DijitProgressBar }

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar classSide >> functionName [

	^ 'dijit.ProgressBar'
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> indeterminate [
	"  If false: show progress value (number or percentage).
	If true: show that a process is underway but that the amount completed is unknown. "

	self access: 'indeterminate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> indeterminate: aBoolean [
	"  If false: show progress value (number or percentage).
	If true: show that a process is underway but that the amount completed is unknown. "

	self propertyAt: 'indeterminate' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> internalProgress [
	
	self access: 'internalProgress'
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> internalProgress: aJsObject [
	
	self propertyAt: 'internalProgress' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> maximum [
	"  Max sample number "

	self access: 'maximum'
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> maximum: aNumber [
	"  Max sample number "

	self propertyAt: 'maximum' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> name [
	"  this is the field name (for a form) if set.
	This needs to be set if you want to use this widget in a dijit.form.Form widget (such as dijit.Dialog) "

	self access: 'name'
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> name: aString [
	"  this is the field name (for a form) if set.
	This needs to be set if you want to use this widget in a dijit.form.Form widget (such as dijit.Dialog) "

	self propertyAt: 'name' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> onChange: anObject [
	"  Callback fired when progress updates. "

	self eventAt: 'onChange' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> places [
	"  Number of places to show in values; 0 by default "

	self access: 'places'
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> places: aNumber [
	"  Number of places to show in values; 0 by default "

	self propertyAt: 'places' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> progress [
	"  (Percentage or Number) Number or percentage indicating amount of task completed.
	With '%': percentage value, 0% <= progress <= 100%, or without '%': absolute value, 0 <= progress <= maximum TODO: rename to value for 2.0 "

	self access: 'progress'
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> progress: aString [
	"  (Percentage or Number) Number or percentage indicating amount of task completed.
	With '%': percentage value, 0% <= progress <= 100%, or without '%': absolute value, 0 <= progress <= maximum TODO: rename to value for 2.0 "

	self propertyAt: 'progress' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> report: percent [ 
	"  Generates message to show inside progress bar (normally indicating amount of task completed).
	May be overridden. "

	self call: 'report' withArguments: (Array with: percent)
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> templateString: aJsObject [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> update: attributes [ 
	"  Change attributes of ProgressBar, similar to attr(hash). "

	self call: 'update' withArguments: (Array with: attributes)
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
