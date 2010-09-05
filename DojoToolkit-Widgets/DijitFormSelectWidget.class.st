"
Extends _FormValueWidget in order to provide 'select-specific' values - i.e., those values that are unique to <select> elements. This also provides the mechanism for reading the elements from a store, if desired.
"
Class {
	#name : #DijitFormSelectWidget,
	#superclass : #DijitFormValueWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitFormSelectWidget class >> functionName [

	^ 'dijit.form.FormSelectWidget'
]

{ #category : #'functions-generated' }
DijitFormSelectWidget >> addOption: option [ 
	"  Adds an option or options to the end of the select.
	If value of the option is empty or missing, a separator is created instead.
	Passing in an array of options will yield slightly better performance since the children are only loaded once. "

	self call: 'addOption' withArguments: (Array with: option)
]

{ #category : #'functions-generated' }
DijitFormSelectWidget >> getOptions: valueOrIdx [ 
	"  Returns a given option (or options). "

	self call: 'getOptions' withArguments: (Array with: valueOrIdx)
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> loadChildrenOnOpen [
	"  By default loadChildren is called when the items are fetched from the store.
	This property allows delaying loadChildren (and the creation of the options/menuitems) until the user opens the click the button.
	dropdown remove when _FormWidget:getValue is removed "

	self access: 'loadChildrenOnOpen'
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> loadChildrenOnOpen: aJsObject [
	"  By default loadChildren is called when the items are fetched from the store.
	This property allows delaying loadChildren (and the creation of the options/menuitems) until the user opens the click the button.
	dropdown remove when _FormWidget:getValue is removed "

	self propertyAt: 'loadChildrenOnOpen' put: aJsObject
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> multiple [
	"  Whether or not we are multi-valued "

	self access: 'multiple'
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> multiple: aBoolean [
	"  Whether or not we are multi-valued "

	self propertyAt: 'multiple' put: aBoolean
]

{ #category : #'events-generated' }
DijitFormSelectWidget >> onFetch: anObject [
	"  A callback to do with an onFetch - but before any items are actually iterated over (i.e.
	to filter even futher what you want to add) "

	self eventAt: 'onFetch' put: (anObject asFunction: #())
]

{ #category : #'events-generated' }
DijitFormSelectWidget >> onSetStore: anObject [
	"  a function that can be connected to in order to receive a notification that the store has finished loading and all options from that store are available "

	self eventAt: 'onSetStore' put: (anObject asFunction: #())
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> query [
	"  A query to use when fetching items from our store "

	self access: 'query'
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> query: aJsObject [
	"  A query to use when fetching items from our store "

	self propertyAt: 'query' put: aJsObject
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> queryOptions [
	"  Query options to use when fetching from the store "

	self access: 'queryOptions'
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> queryOptions: aJsObject [
	"  Query options to use when fetching from the store "

	self propertyAt: 'queryOptions' put: aJsObject
]

{ #category : #'functions-generated' }
DijitFormSelectWidget >> removeOption: valueOrIdx [ 
	"  Removes the given option or options.
	You can remove by string (in which case the value is removed), number (in which case the index in the options array is removed), or select option (in which case, the select option with a matching value is removed).
	You can also pass in an array of those values for a slightly better performance since the children are only loaded once. "

	self call: 'removeOption' withArguments: (Array with: valueOrIdx)
]

{ #category : #'functions-generated' }
DijitFormSelectWidget >> setStore: store selectedValue: selectedValue fetchArgs: fetchArgs [ 
	"  Sets the store you would like to use with this select widget.
	The selected value is the value of the new store to set.
	This function returns the original store, in case you want to reuse it or something. "

	self call: 'setStore' withArguments: (Array with: store with: selectedValue with: fetchArgs)
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> sortByLabel [
	"  Flag to sort the options returned from a store by the label of the store. "

	self access: 'sortByLabel'
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> sortByLabel: aJsObject [
	"  Flag to sort the options returned from a store by the label of the store. "

	self propertyAt: 'sortByLabel' put: aJsObject
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> store [
	"  A store which, at the very least impelements dojo.data.api.Identity to use for getting our list of options - rather than reading them from the <option> html tags. "

	self access: 'store'
]

{ #category : #'properties-generated' }
DijitFormSelectWidget >> store: aJsObject [
	"  A store which, at the very least impelements dojo.data.api.Identity to use for getting our list of options - rather than reading them from the <option> html tags. "

	self propertyAt: 'store' put: aJsObject
]

{ #category : #'functions-generated' }
DijitFormSelectWidget >> updateOption: newOption [ 
	"  Updates the values of the given option.
	The option to update is matched based on the value of the entered option.
	Passing in an array of new options will yeild better performance since the children will only be loaded once. "

	self call: 'updateOption' withArguments: (Array with: newOption)
]
