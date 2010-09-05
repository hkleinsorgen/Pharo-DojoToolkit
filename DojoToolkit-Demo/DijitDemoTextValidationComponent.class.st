Class {
	#name : #DijitDemoTextValidationComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitDemoTextValidationComponent >> renderDemoOn: html [ 

	html paragraph: [
		html dojoValidationTextBox
			dojoConfiguration: [ : textBox |
				textBox 
					regExp: '(\w|\s)+';
					invalidMessage: 'Please enter only characters, digits and whitespace';
					required: true;
					selectOnClick: true.
			];
			value: 'Enter something'.
		].
]

{ #category : #rendering }
DijitDemoTextValidationComponent >> renderExplanationOn: html [ 

	super renderExplanationOn: html .
	html paragraph: 
		'The following input field only accepts characters, digits and whitespace, and must not be empty. Valid input is specified by a regular expression'
]

{ #category : #accessing }
DijitDemoTextValidationComponent >> title [

	^ 'Text validation'
]

{ #category : #accessing }
DijitDemoTextValidationComponent >> url [

	^ 'http://dojotoolkit.org/reference-guide/dijit/form/ValidationTextbox.htm'
]

{ #category : #accessing }
DijitDemoTextValidationComponent >> widgetClass [

	^ DijitValidationTextBox
]
