"
A simple GUI for choosing a date in the context of a monthly calendar. This widget can't be used in a form because it doesn't serialize the date to an <input> field. For a form element, use dijit.form.DateTextBox instead. Note that the parser takes all dates attributes passed in the RFC 3339 format, e.g. 2005-06-30T08:05:00-07:00 so that they are serializable and locale-independent.
"
Class {
	#name : #DijitCalendar,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitCalendar class >> functionName [

	^ 'dijit.Calendar'
]

{ #category : #'properties-generated' }
DijitCalendar >> attributeMap [
	
	self access: 'attributeMap'
]

{ #category : #'properties-generated' }
DijitCalendar >> attributeMap: aJsObject [
	
	self propertyAt: 'attributeMap' put: aJsObject
]

{ #category : #'properties-generated' }
DijitCalendar >> cssStateNodes [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self access: 'cssStateNodes'
]

{ #category : #'properties-generated' }
DijitCalendar >> cssStateNodes: aJsObject [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self propertyAt: 'cssStateNodes' put: aJsObject
]

{ #category : #'properties-generated' }
DijitCalendar >> dateClassObj [
	
	self access: 'dateClassObj'
]

{ #category : #'properties-generated' }
DijitCalendar >> dateClassObj: aJsObject [
	
	self propertyAt: 'dateClassObj' put: aJsObject
]

{ #category : #'properties-generated' }
DijitCalendar >> dateFuncObj [
	
	self access: 'dateFuncObj'
]

{ #category : #'properties-generated' }
DijitCalendar >> dateFuncObj: aJsObject [
	
	self propertyAt: 'dateFuncObj' put: aJsObject
]

{ #category : #'properties-generated' }
DijitCalendar >> dateLocaleModule [
	
	self access: 'dateLocaleModule'
]

{ #category : #'properties-generated' }
DijitCalendar >> dateLocaleModule: aJsObject [
	
	self propertyAt: 'dateLocaleModule' put: aJsObject
]

{ #category : #'properties-generated' }
DijitCalendar >> datePackage [
	"  JavaScript namespace to find Calendar routines.
	Uses Gregorian Calendar routines at dojo.date by default. "

	self access: 'datePackage'
]

{ #category : #'properties-generated' }
DijitCalendar >> datePackage: aString [
	"  JavaScript namespace to find Calendar routines.
	Uses Gregorian Calendar routines at dojo.date by default. "

	self propertyAt: 'datePackage' put: aString
]

{ #category : #'properties-generated' }
DijitCalendar >> dayWidth [
	"  How to represent the days of the week in the calendar header.
	See dojo.date.locale "

	self access: 'dayWidth'
]

{ #category : #'properties-generated' }
DijitCalendar >> dayWidth: aString [
	"  How to represent the days of the week in the calendar header.
	See dojo.date.locale "

	self propertyAt: 'dayWidth' put: aString
]

{ #category : #'properties-generated' }
DijitCalendar >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : #'properties-generated' }
DijitCalendar >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : #'properties-generated' }
DijitCalendar >> displayMonth [
	
	self access: 'displayMonth'
]

{ #category : #'properties-generated' }
DijitCalendar >> displayMonth: aJsObject [
	
	self propertyAt: 'displayMonth' put: aJsObject
]

{ #category : #'functions-generated' }
DijitCalendar >> getClassForDate: dateObject locale: locale [ 
	"  May be overridden to return CSS classes to associate with the date entry for the given dateObject, for example to indicate a holiday in specified locale. "

	self call: 'getClassForDate' withArguments: (Array with: dateObject with: locale)
]

{ #category : #'functions-generated' }
DijitCalendar >> goToToday [
	"  Sets calendar's value to today's date "

	self call: 'goToToday'
]

{ #category : #'functions-generated' }
DijitCalendar >> isDisabledDate: dateObject locale: locale [ 
	"  May be overridden to disable certain dates in the calendar e.g.
	isDisabledDate=dojo.date.locale.isWeekend "

	self call: 'isDisabledDate' withArguments: (Array with: dateObject with: locale)
]

{ #category : #'events-generated' }
DijitCalendar >> onChange: date [
	"  Called only when the selected date has changed "

	self eventAt: 'onChange' put: (date asFunction: #(#date))
]

{ #category : #'events-generated' }
DijitCalendar >> onValueSelected: date [
	"  Used by dijit.form._DateTimeTextBox (and thus dijit.form.DateTextBox) to get notification when the user has clicked a date "

	self eventAt: 'onValueSelected' put: (date asFunction: #(#date))
]

{ #category : #'functions-generated' }
DijitCalendar >> setValue: value [ 
	"  Deprecated.
	Used attr('value', ...) instead. "

	self call: 'setValue' withArguments: (Array with: value)
]

{ #category : #'properties-generated' }
DijitCalendar >> tabIndex [
	"  Order fields are traversed when user hits the tab key "

	self access: 'tabIndex'
]

{ #category : #'properties-generated' }
DijitCalendar >> tabIndex: aNumber [
	"  Order fields are traversed when user hits the tab key "

	self propertyAt: 'tabIndex' put: aNumber
]

{ #category : #'properties-generated' }
DijitCalendar >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : #'properties-generated' }
DijitCalendar >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : #'properties-generated' }
DijitCalendar >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : #'properties-generated' }
DijitCalendar >> templateString: aJsObject [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aJsObject
]

{ #category : #'properties-generated' }
DijitCalendar >> value [
	"  The currently selected Date "

	self access: 'value'
]

{ #category : #'properties-generated' }
DijitCalendar >> value: aDate [
	"  The currently selected Date "

	self propertyAt: 'value' put: aDate
]

{ #category : #'properties-generated' }
DijitCalendar >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : #'properties-generated' }
DijitCalendar >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
