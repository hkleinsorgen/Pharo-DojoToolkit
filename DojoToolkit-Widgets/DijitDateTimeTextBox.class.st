"
Base class for validating, serializable, range-bound date or time text box.
"
Class {
	#name : #DijitDateTimeTextBox,
	#superclass : #DijitRangeBoundTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : #'accessing-generated' }
DijitDateTimeTextBox class >> functionName [

	^ 'dijit.form.DateTimeTextBox'
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> compare [
	
	self access: 'compare'
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> compare: aJsObject [
	
	self propertyAt: 'compare' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> dateClassObj [
	
	self access: 'dateClassObj'
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> dateClassObj: aJsObject [
	
	self propertyAt: 'dateClassObj' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> dateLocaleModule [
	
	self access: 'dateLocaleModule'
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> dateLocaleModule: aJsObject [
	
	self propertyAt: 'dateLocaleModule' put: aJsObject
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> datePackage [
	"  JavaScript namespace to find calendar routines.
	Uses Gregorian calendar routines at dojo.date, by default. "

	self access: 'datePackage'
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> datePackage: aString [
	"  JavaScript namespace to find calendar routines.
	Uses Gregorian calendar routines at dojo.date, by default. "

	self propertyAt: 'datePackage' put: aString
]

{ #category : #'functions-generated' }
DijitDateTimeTextBox >> format: value constraints: constraints selector: selector formatLength: formatLength datePattern: datePattern timePattern: timePattern am: am pm: pm locale: locale fullYear: fullYear strict: strict [ 
	"  Replacable function to convert a value to a properly formatted string. "

	self call: 'format' withArguments: (OrderedCollection new add: value; add: constraints; add: selector; add: formatLength; add: datePattern; add: timePattern; add: am; add: pm; add: locale; add: fullYear; add: strict; yourself)
]

{ #category : #'functions-generated' }
DijitDateTimeTextBox >> parse: value constraints: constraints selector: selector formatLength: formatLength datePattern: datePattern timePattern: timePattern am: am pm: pm locale: locale fullYear: fullYear strict: strict [ 
	"  Replacable function to convert a formatted string to a value "

	self call: 'parse' withArguments: (OrderedCollection new add: value; add: constraints; add: selector; add: formatLength; add: datePattern; add: timePattern; add: am; add: pm; add: locale; add: fullYear; add: strict; yourself)
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> popupClass [
	"  Name of the popup widget class used to select a date/time.
	Subclasses should specify this.
	default is no popup = text only "

	self access: 'popupClass'
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> popupClass: aString [
	"  Name of the popup widget class used to select a date/time.
	Subclasses should specify this.
	default is no popup = text only "

	self propertyAt: 'popupClass' put: aString
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> regExpGen [
	
	self access: 'regExpGen'
]

{ #category : #'properties-generated' }
DijitDateTimeTextBox >> regExpGen: aJsObject [
	
	self propertyAt: 'regExpGen' put: aJsObject
]
