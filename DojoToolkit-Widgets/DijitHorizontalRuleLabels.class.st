"
Labels for dijit.form.HorizontalSlider
"
Class {
	#name : #DijitHorizontalRuleLabels,
	#superclass : #DijitHorizontalRule,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitHorizontalRuleLabels class >> functionName [

	^ 'dijit.form.HorizontalRuleLabels'
]

{ #category : #'functions-generated' }
DijitHorizontalRuleLabels >> getLabels [
	"  Overridable function to return array of labels to use for this slider.
	Can specify a getLabels() method instead of a labels[] array, or min/max attributes. "

	self call: 'getLabels'
]

{ #category : #'properties-generated' }
DijitHorizontalRuleLabels >> labelStyle [
	"  CSS style to apply to individual text labels "

	self access: 'labelStyle'
]

{ #category : #'properties-generated' }
DijitHorizontalRuleLabels >> labelStyle: aString [
	"  CSS style to apply to individual text labels "

	self propertyAt: 'labelStyle' put: aString
]

{ #category : #'properties-generated' }
DijitHorizontalRuleLabels >> labels [
	"  Array of text labels to render - evenly spaced from left-to-right or bottom-to-top.
	Alternately, minimum and maximum can be specified, to get numeric labels. "

	self access: 'labels'
]

{ #category : #'properties-generated' }
DijitHorizontalRuleLabels >> labels: aJsObject [
	"  Array of text labels to render - evenly spaced from left-to-right or bottom-to-top.
	Alternately, minimum and maximum can be specified, to get numeric labels. "

	self propertyAt: 'labels' put: aJsObject
]

{ #category : #'properties-generated' }
DijitHorizontalRuleLabels >> maximum [
	
	self access: 'maximum'
]

{ #category : #'properties-generated' }
DijitHorizontalRuleLabels >> maximum: aNumber [
	
	self propertyAt: 'maximum' put: aNumber
]

{ #category : #'properties-generated' }
DijitHorizontalRuleLabels >> minimum [
	
	self access: 'minimum'
]

{ #category : #'properties-generated' }
DijitHorizontalRuleLabels >> minimum: aNumber [
	
	self propertyAt: 'minimum' put: aNumber
]

{ #category : #'properties-generated' }
DijitHorizontalRuleLabels >> numericMargin [
	"  Number of generated numeric labels that should be rendered as '' on the ends when labels[] are not specified "

	self access: 'numericMargin'
]

{ #category : #'properties-generated' }
DijitHorizontalRuleLabels >> numericMargin: aNumber [
	"  Number of generated numeric labels that should be rendered as '' on the ends when labels[] are not specified "

	self propertyAt: 'numericMargin' put: aNumber
]

{ #category : #'function overrides-generated' }
DijitHorizontalRuleLabels >> overrideGetLabels: aFunction [
	"  Overridable function to return array of labels to use for this slider.
	Can specify a getLabels() method instead of a labels[] array, or min/max attributes. "

	self override: 'getLabels' with: (aFunction asFunction: #())
]
