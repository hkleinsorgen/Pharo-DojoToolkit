"
Grid showing various colors, so the user can pick a certain color. Can be used standalone, or as a popup.
"
Class {
	#name : #DijitColorPalette,
	#superclass : #DijitWidget,
	#category : 'DojoToolkit-Widgets'
}

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette class >> functionName [

	^ 'dijit.ColorPalette'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> cellClass [
	"  CSS class applied to each cell in the palette "

	self access: 'cellClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> cellClass: aString [
	"  CSS class applied to each cell in the palette "

	self propertyAt: 'cellClass' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> declaredClass [
	
	self access: 'declaredClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> declaredClass: aJsObject [
	
	self propertyAt: 'declaredClass' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> defaultTimeout [
	"  Number of milliseconds before a held key or button becomes typematic "

	self access: 'defaultTimeout'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> defaultTimeout: aNumber [
	"  Number of milliseconds before a held key or button becomes typematic "

	self propertyAt: 'defaultTimeout' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> dyeClass [
	"  Name of javascript class for Object created for each cell of the palette.
	dyeClass should implements dijit.Dye interface "

	self access: 'dyeClass'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> dyeClass: aString [
	"  Name of javascript class for Object created for each cell of the palette.
	dyeClass should implements dijit.Dye interface "

	self propertyAt: 'dyeClass' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> focus [
	"  Focus this widget.
	Puts focus on the most recently focused cell. "

	self call: 'focus'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> onChange: value [
	"  Callback when a cell is selected. "

	self eventAt: 'onChange' put: (value asFunction: #(#value))
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> palette [
	"  Size of grid, either '7x10' or '3x4'. "

	self access: 'palette'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> palette: aString [
	"  Size of grid, either '7x10' or '3x4'. "

	self propertyAt: 'palette' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> tabIndex [
	"  Widget tab index. "

	self access: 'tabIndex'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> tabIndex: aString [
	"  Widget tab index. "

	self propertyAt: 'tabIndex' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> templatePath [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self access: 'templatePath'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> templatePath: aString [
	"  Path to template (HTML file) for this widget relative to dojo.baseUrl.
	Deprecated: use templateString with dojo.cache() instead. "

	self propertyAt: 'templatePath' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> templateString [
	"  The template of this widget. "

	self access: 'templateString'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> templateString: aString [
	"  The template of this widget. "

	self propertyAt: 'templateString' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> timeoutChangeRate [
	"  Fraction of time used to change the typematic timer between events 1.0 means that each typematic event fires at defaultTimeout intervals < 1.0 means that each typematic event fires at an increasing faster rate "

	self access: 'timeoutChangeRate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> timeoutChangeRate: aNumber [
	"  Fraction of time used to change the typematic timer between events 1.0 means that each typematic event fires at defaultTimeout intervals < 1.0 means that each typematic event fires at an increasing faster rate "

	self propertyAt: 'timeoutChangeRate' put: aNumber
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> value [
	"  Currently selected color/emoticon/etc. "

	self access: 'value'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> value: aString [
	"  Currently selected color/emoticon/etc. "

	self propertyAt: 'value' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> widgetsInTemplate [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self access: 'widgetsInTemplate'
]

{ #category : '*DojoToolkit-Widgets' }
DijitColorPalette >> widgetsInTemplate: aBoolean [
	"  Should we parse the template to find widgets that might be declared in markup inside it? False by default. "

	self propertyAt: 'widgetsInTemplate' put: aBoolean
]
