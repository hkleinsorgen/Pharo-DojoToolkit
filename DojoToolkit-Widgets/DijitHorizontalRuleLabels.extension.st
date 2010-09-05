Extension { #name : #DijitHorizontalRuleLabels }

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels classSide >> functionName [

	^ 'dijit.form.HorizontalRuleLabels'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> getLabels [
	"  Overridable function to return array of labels to use for this slider.
	Can specify a getLabels() method instead of a labels[] array, or min/max attributes. "

	self call: 'getLabels'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> labelStyle [
	"  CSS style to apply to individual text labels "

	self access: 'labelStyle'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> labelStyle: aString [
	"  CSS style to apply to individual text labels "

	self propertyAt: 'labelStyle' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> labels [
	"  Array of text labels to render - evenly spaced from left-to-right or bottom-to-top.
	Alternately, minimum and maximum can be specified, to get numeric labels. "

	self access: 'labels'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> labels: aJsObject [
	"  Array of text labels to render - evenly spaced from left-to-right or bottom-to-top.
	Alternately, minimum and maximum can be specified, to get numeric labels. "

	self propertyAt: 'labels' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> maximum [
	
	self access: 'maximum'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> maximum: aNumber [
	
	self propertyAt: 'maximum' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> minimum [
	
	self access: 'minimum'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> minimum: aNumber [
	
	self propertyAt: 'minimum' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> numericMargin [
	"  Number of generated numeric labels that should be rendered as '' on the ends when labels[] are not specified "

	self access: 'numericMargin'
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> numericMargin: aNumber [
	"  Number of generated numeric labels that should be rendered as '' on the ends when labels[] are not specified "

	self propertyAt: 'numericMargin' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels >> overrideGetLabels: aFunction [
	"  Overridable function to return array of labels to use for this slider.
	Can specify a getLabels() method instead of a labels[] array, or min/max attributes. "

	self override: 'getLabels' with: (aFunction asFunction: #())
]
