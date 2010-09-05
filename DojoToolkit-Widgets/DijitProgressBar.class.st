"
Note that the progress bar is updated via (a non-standard) update() method, rather than via attr() like other widgets.
"
Class {
	#name : #DijitProgressBar,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitProgressBar class >> functionName [

	^ 'dijit.ProgressBar'
]

{ #category : #'properties-generated' }
DijitProgressBar >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitProgressBar >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'properties-generated' }
DijitProgressBar >> indeterminate [
	"  If false: show progress value (number or percentage).
	If true: show that a process is underway but that the amount completed is unknown. "

	self access: 'indeterminate'
]

{ #category : #'properties-generated' }
DijitProgressBar >> indeterminate: aBoolean [
	"  If false: show progress value (number or percentage).
	If true: show that a process is underway but that the amount completed is unknown. "

	self propertyAt: 'indeterminate' put: aBoolean
]

{ #category : #'properties-generated' }
DijitProgressBar >> internalProgress [
	
	self access: 'internalProgress'
]

{ #category : #'properties-generated' }
DijitProgressBar >> internalProgress: aJsObject [
	
	self propertyAt: 'internalProgress' put: aJsObject
]

{ #category : #'properties-generated' }
DijitProgressBar >> maximum [
	"  Max sample number "

	self access: 'maximum'
]

{ #category : #'properties-generated' }
DijitProgressBar >> maximum: aNumber [
	"  Max sample number "

	self propertyAt: 'maximum' put: aNumber
]

{ #category : #'properties-generated' }
DijitProgressBar >> name [
	"  this is the field name (for a form) if set.
	This needs to be set if you want to use this widget in a dijit.form.Form widget (such as dijit.Dialog) "

	self access: 'name'
]

{ #category : #'properties-generated' }
DijitProgressBar >> name: aString [
	"  this is the field name (for a form) if set.
	This needs to be set if you want to use this widget in a dijit.form.Form widget (such as dijit.Dialog) "

	self propertyAt: 'name' put: aString
]

{ #category : #'events-generated' }
DijitProgressBar >> onChange: anObject [
	"  Callback fired when progress updates. "

	self eventAt: 'onChange' put: (anObject asFunction: #())
]

{ #category : #'properties-generated' }
DijitProgressBar >> places [
	"  Number of places to show in values; 0 by default "

	self access: 'places'
]

{ #category : #'properties-generated' }
DijitProgressBar >> places: aNumber [
	"  Number of places to show in values; 0 by default "

	self propertyAt: 'places' put: aNumber
]

{ #category : #'properties-generated' }
DijitProgressBar >> progress [
	"  (Percentage or Number) Number or percentage indicating amount of task completed.
	With '%': percentage value, 0% <= progress <= 100%, or without '%': absolute value, 0 <= progress <= maximum TODO: rename to value for 2.0 "

	self access: 'progress'
]

{ #category : #'properties-generated' }
DijitProgressBar >> progress: aString [
	"  (Percentage or Number) Number or percentage indicating amount of task completed.
	With '%': percentage value, 0% <= progress <= 100%, or without '%': absolute value, 0 <= progress <= maximum TODO: rename to value for 2.0 "

	self propertyAt: 'progress' put: aString
]

{ #category : #'functions-generated' }
DijitProgressBar >> report: percent [ 
	"  Generates message to show inside progress bar (normally indicating amount of task completed).
	May be overridden. "

	self call: 'report' withArguments: (Array with: percent)
]

{ #category : #'properties-generated' }
DijitProgressBar >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitProgressBar >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitProgressBar >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitProgressBar >> templateString: aJsObject [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aJsObject
]

{ #category : #'functions-generated' }
DijitProgressBar >> update: attributes [ 
	"  Change attributes of ProgressBar, similar to attr(hash). "

	self call: 'update' withArguments: (Array with: attributes)
]

{ #category : #'properties-generated' }
DijitProgressBar >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitProgressBar >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
