Class {
	#name : #DijitInputValidationComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitInputValidationComponent >> renderDemoOn: html [ 

	html dojoValidationTextBox dojoConfiguration: 
			[: textBox |
				textBox
					regExp: '(\w|\s)+';
					invalidMessage: 'Please enter only characters, digits and whitespace';
					required: true;
					selectOnClick: true
			];
		value: 'Enter something'.
]

{ #category : #rendering }
DijitInputValidationComponent >> renderExplanationOn: html [ 

	super renderExplanationOn: html .
	html paragraph: 
		'The following input field only accepts characters, digits and whitespace, and must not be empty. Valid input is specified by a regular expression'
]

{ #category : #accessing }
DijitInputValidationComponent >> title [

	^ 'Validation'
]

{ #category : #accessing }
DijitInputValidationComponent >> url [

	^ 'http://dojotoolkit.org/reference-guide/dijit/form/ValidationTextbox.html'
]

{ #category : #accessing }
DijitInputValidationComponent >> widgetClass [

	^ DijitValidationTextBox
]
