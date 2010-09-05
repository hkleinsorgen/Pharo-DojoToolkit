Extension { #name : #DijitCurrencyTextBox }

{ #category : '*DojoToolkit-Widgets' }
DijitCurrencyTextBox >> currency [
	"  the [ISO4217](http://en.wikipedia.org/wiki/ISO_4217) currency code, a three letter sequence like 'USD' "

	self access: 'currency'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCurrencyTextBox >> currency: aString [
	"  the [ISO4217](http://en.wikipedia.org/wiki/ISO_4217) currency code, a three letter sequence like 'USD' "

	self propertyAt: 'currency' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitCurrencyTextBox classSide >> functionName [

	^ 'dijit.form.CurrencyTextBox'
]

{ #category : '*DojoToolkit-Widgets' }
DijitCurrencyTextBox >> overrideRegExpGen: aFunction [
	"  Overridable function used to generate regExp when dependent on constraints.
	Do not specify both regExp and regExpGen. "

	self override: 'regExpGen' with: (aFunction asFunction: #(#constraints))
]

{ #category : '*DojoToolkit-Widgets' }
DijitCurrencyTextBox >> regExpGen: constraints [ 
	"  Overridable function used to generate regExp when dependent on constraints.
	Do not specify both regExp and regExpGen. "

	self call: 'regExpGen' withArguments: (Array with: constraints)
]
