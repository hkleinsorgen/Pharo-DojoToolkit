Class {
	#name : #DijitSliderComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitSliderComponent >> renderDemoOn: html [ 

	| slider sliderValue |
	slider := html dojoUI new horizontalSlider.
	sliderValue := 20.
	sliderValue := sliderValue printString.
	slider
		value: sliderValue;
		minimum: 0;
		maximum: 100;
		discreteValues: 51;
		intermediateChanges: true;
		onChange: (( html dojo query: #sliderValue )
			ajaxPost 
				callbackWithArgument: [: newValue | sliderValue := newValue ];
				html: [: canvas | canvas paragraph: sliderValue ]).
	html div
		id: 'slider';
		script: slider.
	html div
		id: 'sliderValue';
		with: [ html paragraph: sliderValue ].
]

{ #category : #rendering }
DijitSliderComponent >> renderExplanationOn: html [ 

	super renderExplanationOn: html .
	html paragraph: 'Text value is updated via Ajax request when the slider fires an "onChange" event'.
]

{ #category : #accessing }
DijitSliderComponent >> title [

	^ 'Slider'
]

{ #category : #accessing }
DijitSliderComponent >> url [

	^ 'http://www.dojotoolkit.org/reference-guide/dijit/form/Slider.html'
]

{ #category : #accessing }
DijitSliderComponent >> widgetClass [

	^ DijitHorizontalSlider
]
