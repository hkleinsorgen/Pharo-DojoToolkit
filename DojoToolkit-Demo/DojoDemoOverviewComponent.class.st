Class {
	#name : #DojoDemoOverviewComponent,
	#superclass : #DojoCoreDemoComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DojoDemoOverviewComponent >> renderDemoOn: html [ 

	html text: 'The '.
	html anchor
		url: 'http://www.dojotoolkit.org';
		target: '_new';
		with: 'Dojo Toolkit'.
	html 
		text: ' is a comprehensive Javascript library that provides DOM queries and manipulation functions, event handling, Ajax requests and more. The widget system, '.
	html anchor
		url: 'http://dojotoolkit.org/reference-guide/dijit';
		target: '_new';
		with: 'Dijit'.
	html text: ', povides commonly used widgets'.
]

{ #category : #rendering }
DojoDemoOverviewComponent >> renderDemoSourceOn: html [
]

{ #category : #accessing }
DojoDemoOverviewComponent >> sortKey [

	^'1'
]

{ #category : #accessing }
DojoDemoOverviewComponent >> title [

	^ 'Overview'
]
