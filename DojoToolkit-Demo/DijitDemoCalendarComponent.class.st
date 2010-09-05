Class {
	#name : #DijitDemoCalendarComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : '*DojoToolkit-Demo' }
DijitDemoCalendarComponent >> renderDemoOn: html [ 

	| calendar currentDate |
	calendar := html dojoUI new calendar.
	currentDate := ''.
	calendar onChange: (( html dojo query: #selectedDate ) ajaxPost 
			callbackWithArgument: [: value | currentDate := value ];
			html: [: canvas | canvas paragraph: currentDate  ]).
	html div
		id: 'calendar';
		script: calendar.
	html div
		id: 'selectedDate'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoCalendarComponent >> test: html [ 

	html div id: 'calendar';
		script: 'buh'.
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoCalendarComponent >> title [

	^ 'Calendar'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoCalendarComponent >> url [

	^ 'http://www.dojotoolkit.org/reference-guide/dijit/Calendar.html'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoCalendarComponent >> widgetClass [

	^ DijitCalendar
]
