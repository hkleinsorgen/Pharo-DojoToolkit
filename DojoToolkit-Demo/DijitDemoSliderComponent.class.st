Class {
	#name : #DijitDemoSliderComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : '*DojoToolkit-Demo' }
DijitDemoSliderComponent >> renderDemoOn: html [ 

	| slider sliderValue |
	slider := html dojoUI new horizontalSlider.
	sliderValue := '-'.
	slider
		value: 20;
		minimum: 0;
		maximum: 100;
		discreteValues: 51;
		intermediateChanges: true;
		onChange: (( html dojo query: #sliderValue )
			ajaxPost 
				callbackWithArgument: [: value | sliderValue := value ];
				html: [: canvas | canvas paragraph: sliderValue ]).
	html div
		id: 'slider';
		script: slider.
	html div
		id: 'sliderValue';
		with: [ html paragraph: sliderValue ].
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoSliderComponent >> renderExplanationOn: html [ 

	super renderExplanationOn: html .
	html paragraph: 'Text value is updated via Ajax request when the slider fires an "onChange" event'.
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoSliderComponent >> title [

	^ 'Slider'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoSliderComponent >> url [

	^ 'http://www.dojotoolkit.org/reference-guide/dijit/form/Slider.html'
]

{ #category : '*DojoToolkit-Demo' }
DijitDemoSliderComponent >> widgetClass [

	^ DijitHorizontalSlider
]
