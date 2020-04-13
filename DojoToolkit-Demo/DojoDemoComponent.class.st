Class {
	#name : #DojoDemoComponent,
	#superclass : #WAComponent,
	#instVars : [
		'demoComponent',
		'availableDemos',
		'theme'
	],
	#category : 'DojoToolkit-Demo'
}

{ #category : #'class initialization' }
DojoDemoComponent class >> initialize [

	| app |
	app := WAAdmin register: self asApplicationAt: 'examples/Dojo'.
	app addLibrary: DojoDemoLibrary.
	app addLibrary: DojoGoogleLibrary.
	app preferenceAt: #scriptGeneratorClass put: DojoScriptGenerator.
	^ app
]

{ #category : #accessing }
DojoDemoComponent >> availableDemos [

	| demos groupedDemos  |
	availableDemos isNil 
		ifTrue: 
		[	demos := (( DojoDemoPartComponent allSubclasses reject: [: componentClass | componentClass isAbstract ]) 
					collect: [: componentClass | componentClass new ]) .
			groupedDemos := Dictionary new.
			demos do: [ : demo | 
				(groupedDemos at: demo category ifAbsentPut: [ SortedCollection sortBlock:  [ : d1 : d2 | d1 sortKey < d2 sortKey ]]) add: demo.
			].
			availableDemos := OrderedCollection new.
			(groupedDemos keys asSortedCollection: [ : c1 : c2 | c1 value <= c2 value ]) do: [ : category |
				availableDemos add: category key -> (groupedDemos at: category).
			].
		].
	^ availableDemos
]

{ #category : #rendering }
DojoDemoComponent >> exampleScript [

^ '
            var node = dojo.byId("testArea");

            var a = dojo.anim(node, {
                color: "#f7f7f7"
            },
            1000);

            dojo.connect(a, "onEnd", function() {
                dojo.anim(node, {
                    color: "#363636"
                },
                null, null, function() {
                    dojo.anim(node, {
                        color: "black"
                    });
                });
            });
'
]

{ #category : #initialization }
DojoDemoComponent >> initialize [

	super initialize.
	demoComponent := self availableDemos first value first.
]

{ #category : #rendering }
DojoDemoComponent >> renderContentOn: html [ 

	html div
		class: 'canvas';
		with: 
			[	html div class: 'content';
					with: 
						[	html div
								class: 'navigation';
								with: 
									[	self renderNavigationOn: html.
										html div: [ self renderThemeSelectorOn: html ]
									].
							html div
								class: 'demo';
								with: [ html render: demoComponent ]
						]
		].
]

{ #category : #rendering }
DojoDemoComponent >> renderNavigationOn: html [ 

	| cssClass |
	cssClass := 'navigation'.
	self availableDemos do: 
		[: group |
			html heading class: cssClass;
				level2;
				with: group key.
			html unorderedList class: cssClass;
				with: 
					[	group value do: 
							[: component |
								html listItem class: cssClass;
									with: 
										[	html anchor class: ( component = demoComponent 
															ifTrue: [ 'selection' ]
															ifFalse: [ cssClass ]);
												callback: [ demoComponent := component ];
												with: [ html render: component title ]
										]
							]
					]
		].
]

{ #category : #rendering }
DojoDemoComponent >> renderThemeSelectorOn: html [ 

	| themes |
	themes := DojoTheme subclasses asSortedCollection: [: t1 : t2 | t1 default themeName <= t2 default themeName ].
	( html form )
		name: 'themeSelector';
		with: 
			[	html text: 'Theme: '.
				( html select )
					list: themes;
					selected: self theme;
					labels: [: t | t default themeName ];
					callback: [: selectedTheme | theme := selectedTheme ];
					onChange: 'document.themeSelector.submit()'
			].
]

{ #category : #accessing }
DojoDemoComponent >> theme [

	theme isNil 
		ifTrue: [ theme := DojoTundraTheme ].
	^ theme
]

{ #category : #updating }
DojoDemoComponent >> updateRoot: aHtmlRoot [

	super updateRoot: aHtmlRoot.
	self theme default updateRoot: aHtmlRoot
]
