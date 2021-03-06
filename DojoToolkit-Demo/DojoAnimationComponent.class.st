Class {
	#name : #DojoAnimationComponent,
	#superclass : #DojoCoreDemoComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DojoAnimationComponent >> renderAnimateOn: html [ 

	| animationProperties |
	animationProperties := Dictionary new.
	animationProperties at: 'backgroundColor' put: (Dictionary new
		 at: 'start' put: '#FFAA00' ; at: 'end' put: '#DDEEFF'; yourself).
	animationProperties at: 'opacity' put: (Dictionary new
		 at: 'start' put: 100; at: 'end' put: 100;  yourself).
	animationProperties at: 'fontSize' put: (Dictionary new
		 at: 'start' put: 10; at: 'end' put: 30; at: 'units' put: 'pt';yourself).
	html dojoButton 
		onClick: ( (html dojo 
			animateNode: (html dojo byId: #animated) 
			duration: 800 
			properties: animationProperties) play ); 
		with: 'Color/Size'.
]

{ #category : #rendering }
DojoAnimationComponent >> renderAnimationTargetOn: html [ 

	html paragraph: 
		[	html div id: 'animated';
				style: 'width: 300px; height: 100px; display: table-cell; 
			vertical-align: middle; background-color: #DDEEFF';
				with: 
					[	html div style: 'text-align: center';
							with: 'Animated'
					]
		].
]

{ #category : #rendering }
DojoAnimationComponent >> renderDemoOn: html [ 

	self renderFadeOn: html.
	self renderAnimateOn: html.
	self renderAnimationTargetOn: html.
]

{ #category : #rendering }
DojoAnimationComponent >> renderFadeOn: html [ 

	html dojoButton 
		onClick: ( (html dojo 
			fadeOutNode: (html dojo byId: #animated) duration: 500) play ); 
		with: 'Fade out'.
	html dojoButton 
		onClick: ( (html dojo 
			fadeInNode: (html dojo byId: #animated) duration: 500) play ); 
		with: 'Fade in'.
]

{ #category : #accessing }
DojoAnimationComponent >> sourceSelectors [

	^ #(
		renderFadeOn:
		renderAnimateOn:
	)
]

{ #category : #accessing }
DojoAnimationComponent >> title [

	^ 'Animation'
]
