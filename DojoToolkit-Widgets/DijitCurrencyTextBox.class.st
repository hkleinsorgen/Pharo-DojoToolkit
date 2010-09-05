"
CurrencyTextBox is similar to dijit.form.NumberTextBox but has a few extra features related to currency: 1. After specifying the currency type (american dollars, euros, etc.) it automatically sets parse/format options such as how many decimal places to show. 2. The currency mark (dollar sign, euro mark, etc.) is displayed when the field is blurred but erased during editing, so that the user can just enter a plain number.
"
Class {
	#name : #DijitCurrencyTextBox,
	#superclass : #DijitNumberTextBox,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitCurrencyTextBox class >> functionName [

	^ 'dijit.form.CurrencyTextBox'
]

{ #category : #'properties-generated' }
DijitCurrencyTextBox >> currency [
	"  the [ISO4217](http://en.wikipedia.org/wiki/ISO_4217) currency code, a three letter sequence like 'USD' "

	self access: 'currency'
]

{ #category : #'properties-generated' }
DijitCurrencyTextBox >> currency: aString [
	"  the [ISO4217](http://en.wikipedia.org/wiki/ISO_4217) currency code, a three letter sequence like 'USD' "

	self propertyAt: 'currency' put: aString
]

{ #category : #'function overrides-generated' }
DijitCurrencyTextBox >> overrideRegExpGen: aFunction [
	"  Overridable function used to generate regExp when dependent on constraints.
	Do not specify both regExp and regExpGen. "

	self override: 'regExpGen' with: (aFunction asFunction: #(#constraints))
]

{ #category : #'functions-generated' }
DijitCurrencyTextBox >> regExpGen: constraints [ 
	"  Overridable function used to generate regExp when dependent on constraints.
	Do not specify both regExp and regExpGen. "

	self call: 'regExpGen' withArguments: (Array with: constraints)
]
