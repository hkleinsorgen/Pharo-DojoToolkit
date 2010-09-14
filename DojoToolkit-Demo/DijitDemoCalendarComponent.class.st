Class {
	#name : #DijitDemoCalendarComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitDemoCalendarComponent >> renderDateInputOn: html [ 

	html dojoDateTextBox
		dojoConfiguration: [ : box |
			box value: '2010-09-10';
			required: true
		].
]

{ #category : #rendering }
DijitDemoCalendarComponent >> renderDemoOn: html [ 

	self title: 'Standalone' on: html .
	self renderStandaloneCalendarOn: html.
	self title: 'Input' on: html .
	self renderDateInputOn: html.
]

{ #category : #rendering }
DijitDemoCalendarComponent >> renderStandaloneCalendarOn: html [ 

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

{ #category : #rendering }
DijitDemoCalendarComponent >> sourceSelectors [

	^ #(
		renderStandaloneCalendarOn: 
		renderDateInputOn: 
	)
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
