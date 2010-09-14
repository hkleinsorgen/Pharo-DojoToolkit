Class {
	#name : #DijitDemoInputValidationComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitDemoInputValidationComponent >> renderDemoOn: html [ 

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
DijitDemoInputValidationComponent >> renderExplanationOn: html [ 

	super renderExplanationOn: html .
	html paragraph: 
		'The following input field only accepts characters, digits and whitespace, and must not be empty. Valid input is specified by a regular expression'
]

{ #category : #accessing }
DijitDemoInputValidationComponent >> title [

	^ 'Validation'
]

{ #category : #accessing }
DijitDemoInputValidationComponent >> url [

	^ 'http://dojotoolkit.org/reference-guide/dijit/form/ValidationTextbox.htm'
]

{ #category : #accessing }
DijitDemoInputValidationComponent >> widgetClass [

	^ DijitValidationTextBox
]
