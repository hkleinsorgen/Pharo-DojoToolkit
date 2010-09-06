Extension { #name : #DojoDemoComponent }

{ #category : '*DojoToolkit-Demo' }
DojoDemoComponent classSide >> initialize [

	| app |
	app := WAAdmin register: self asApplicationAt: 'examples/Dojo'.
	app addLibrary: DojoDemoLibrary.
	app addLibrary: DojoGoogleLibrary.
	app preferenceAt: #scriptGeneratorClass put: DojoScriptGenerator.
	^ app
]
