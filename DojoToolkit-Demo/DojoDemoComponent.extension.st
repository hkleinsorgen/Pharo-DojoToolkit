Extension { #name : #DojoDemoComponent }

{ #category : '*DojoToolkit-Demo' }
DojoDemoComponent classSide >> initialize [

	| app |
	app := self registerAsApplication: 'examples/Dojo'.
	app addLibrary: DojoDemoLibrary.
	app addLibrary: DojoGoogleLibrary.
	app preferenceAt: #scriptGeneratorClass put: DojoScriptGenerator.
	^ app
]
