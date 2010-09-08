Class {
	#name : #DijitDemoCalendarComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
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

{ #category : #accessing }
DijitDemoCalendarComponent >> title [

	^ 'Calendar'
]

{ #category : #accessing }
DijitDemoCalendarComponent >> url [

	^ 'http://www.dojotoolkit.org/reference-guide/dijit/Calendar.html'
]

{ #category : #accessing }
DijitDemoCalendarComponent >> widgetClass [

	^ DijitCalendar
]
