Class {
	#name : #DijitCalendarComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitCalendarComponent >> renderDateInputOn: html [ 

	html dojoDateTextBox
		dojoConfiguration: [ : box |
			box value: '2010-09-10';
			required: true
		].
]

{ #category : #rendering }
DijitCalendarComponent >> renderDemoOn: html [ 

	self title: 'Standalone' on: html .
	self renderStandaloneCalendarOn: html.
	self title: 'Input' on: html .
	self renderDateInputOn: html.
]

{ #category : #rendering }
DijitCalendarComponent >> renderStandaloneCalendarOn: html [ 

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
DijitCalendarComponent >> sourceSelectors [

	^ #(
		renderStandaloneCalendarOn: 
		renderDateInputOn: 
	)
]

{ #category : #accessing }
DijitCalendarComponent >> title [

	^ 'Calendar'
]

{ #category : #accessing }
DijitCalendarComponent >> url [

	^ 'http://www.dojotoolkit.org/reference-guide/dijit/Calendar.html'
]

{ #category : #accessing }
DijitCalendarComponent >> widgetClass [

	^ DijitCalendar
]
