Extension { #name : #DijitCalendar }

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> attributeMap [
	
	self access: 'attributeMap'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> attributeMap: aJsObject [
	
	self propertyAt: 'attributeMap' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> cssStateNodes [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self access: 'cssStateNodes'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> cssStateNodes: aJsObject [
	"  List of sub-nodes within the widget that need CSS classes applied on mouse hover/press and focus .
	Each entry in the hash is a an attachpoint names (like 'upArrowButton') mapped to a CSS class names (like 'dijitUpArrowButton').
	Example: { 'upArrowButton': 'dijitUpArrowButton', 'downArrowButton': 'dijitDownArrowButton' } The above will set the CSS class dijitUpArrowButton to the this.upArrowButton DOMNode when it is hovered, etc. "

	self propertyAt: 'cssStateNodes' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> dateClassObj [
	
	self access: 'dateClassObj'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> dateClassObj: aJsObject [
	
	self propertyAt: 'dateClassObj' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> dateFuncObj [
	
	self access: 'dateFuncObj'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> dateFuncObj: aJsObject [
	
	self propertyAt: 'dateFuncObj' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> dateLocaleModule [
	
	self access: 'dateLocaleModule'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> dateLocaleModule: aJsObject [
	
	self propertyAt: 'dateLocaleModule' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> datePackage [
	"  JavaScript namespace to find Calendar routines.
	Uses Gregorian Calendar routines at dojo.date by default. "

	self access: 'datePackage'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> datePackage: aString [
	"  JavaScript namespace to find Calendar routines.
	Uses Gregorian Calendar routines at dojo.date by default. "

	self propertyAt: 'datePackage' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> dayWidth [
	"  How to represent the days of the week in the calendar header.
	See dojo.date.locale "

	self access: 'dayWidth'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> dayWidth: aString [
	"  How to represent the days of the week in the calendar header.
	See dojo.date.locale "

	self propertyAt: 'dayWidth' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> displayMonth [
	
	self access: 'displayMonth'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> displayMonth: aJsObject [
	
	self propertyAt: 'displayMonth' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar classSide >> functionName [

	^ 'dijit.Calendar'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> getClassForDate: dateObject locale: locale [ 
	"  May be overridden to return CSS classes to associate with the date entry for the given dateObject, for example to indicate a holiday in specified locale. "

	self call: 'getClassForDate' withArguments: (Array with: dateObject with: locale)
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> goToToday [
	"  Sets calendar's value to today's date "

	self call: 'goToToday'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> isDisabledDate: dateObject locale: locale [ 
	"  May be overridden to disable certain dates in the calendar e.g.
	isDisabledDate=dojo.date.locale.isWeekend "

	self call: 'isDisabledDate' withArguments: (Array with: dateObject with: locale)
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> onChange: date [
	"  Called only when the selected date has changed "

	self eventAt: 'onChange' put: (date asFunction: #(#date))
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> onValueSelected: date [
	"  Used by dijit.form._DateTimeTextBox (and thus dijit.form.DateTextBox) to get notification when the user has clicked a date "

	self eventAt: 'onValueSelected' put: (date asFunction: #(#date))
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> setValue: value [ 
	"  Deprecated.
	Used attr('value', ...) instead. "

	self call: 'setValue' withArguments: (Array with: value)
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> tabIndex [
	"  Order fields are traversed when user hits the tab key "

	self access: 'tabIndex'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> tabIndex: aNumber [
	"  Order fields are traversed when user hits the tab key "

	self propertyAt: 'tabIndex' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> templateString [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self access: 'templateString'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> templateString: aJsObject [
	"  A string that represents the widget template.
	Pre-empts the templatePath.
	In builds that have their strings 'interned', the templatePath is converted to an inline templateString, thereby preventing a synchronous network call.
	Use in conjunction with dojo.cache() to load from a file. "

	self propertyAt: 'templateString' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> value [
	"  The currently selected Date "

	self access: 'value'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> value: aDate [
	"  The currently selected Date "

	self propertyAt: 'value' put: aDate
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCalendar >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
