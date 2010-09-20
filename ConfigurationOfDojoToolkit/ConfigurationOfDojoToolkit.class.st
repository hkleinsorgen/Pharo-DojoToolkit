Class {
	#name : #ConfigurationOfDojoToolkit,
	#superclass : #Object,
	#instVars : [
		'project'
	],
	#classVars : [
		'LastVersionLoad'
	],
	#category : #ConfigurationOfDojoToolkit
}

{ #category : #private }
ConfigurationOfDojoToolkit class >> bootstrapPackage: aString from: aPath [ 
	| repository version |
	repository := MCHttpRepository
				location: aPath
				user: ''
				password: ''.
	repository
		versionReaderForFileNamed: aString , '.mcz'
		do: [:reader | 
			version := reader version.
			version load.
			version workingCopy repositoryGroup addRepository: repository]
]

{ #category : #private }
ConfigurationOfDojoToolkit class >> ensureMetacello [
	"Bootstrap Gofer (if necessary), bootstrap ConfigurationOfMetacello (using old Gofer API), then load the latest 
	version of Metacello itself."

	Smalltalk at: #MetacelloProject ifAbsent: [
		Smalltalk at: #Gofer ifAbsent: [
			"Current version of Gofer from which to bootstrap - as of 1.0-beta.21"
			self bootstrapPackage: 'Gofer-Core-lr.115' from: 'http://seaside.gemstone.com/ss/metacello' ].
		Smalltalk at: #Gofer ifPresent: [:goferClass | | gofer |
			gofer := goferClass new
				url: 'http://seaside.gemstone.com/ss/metacello';
				yourself.
			[ gofer addPackage: 'ConfigurationOfMetacello' ] on: Warning do: [:ex | ex resume ].
			gofer load ].
		"load 'default' group of Metacello"
		(Smalltalk at: #ConfigurationOfMetacello) perform: #load ]
]

{ #category : #'metacello tool support' }
ConfigurationOfDojoToolkit class >> isMetacelloConfig [
	"Answer true and the Metacello tools will operate on you"
	
	^true
]

{ #category : #'metacello tool support' }
ConfigurationOfDojoToolkit class >> lastMetacelloVersionLoad [
	"Answer the last version loaded and the list of packages loaded for that version."

	LastVersionLoad == nil ifTrue: [ LastVersionLoad := nil -> 'default' ].
	^LastVersionLoad
]

{ #category : #loading }
ConfigurationOfDojoToolkit class >> load [
	"self load"

	^self project latestVersion load
]

{ #category : #'metacello tool support' }
ConfigurationOfDojoToolkit class >> metacelloVersion: versionString loads: anArrayOrString [
	"Stash the last version loaded and the list of packages loaded for that version. The list
	 of packages will be used by the tools when doing 'Load Package Version'"

	LastVersionLoad := versionString -> anArrayOrString
]

{ #category : #accessing }
ConfigurationOfDojoToolkit class >> project [

	^self new project
]

{ #category : #'unloading Metacello' }
ConfigurationOfDojoToolkit class >> unloadMetacello [

	Smalltalk at: #ConfigurationOfMetacello ifPresent: [:cls | cls unloadMetacello ]
]

{ #category : #baselines }
ConfigurationOfDojoToolkit >> baseline100: spec [ 
	<version: '1.0-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/DojoToolkit'.	
		spec 
			package: 'DojoToolkit-Core';
			package: 'DojoToolkit-Themes' with: [ spec requires: 'DojoToolkit-Core'];
			package: 'DojoToolkit-UI' with: [ spec requires: 'DojoToolkit-Core'];
			package: 'DojoToolkit-Objects' with: [ spec requires: 'DojoToolkit-Core'];
			package: 'DojoToolkit-Widgets' with: [ spec requires: 'DojoToolkit-UI'];
			package: 'DojoToolkit-Tests'  with: [ spec requires: 'DojoToolkit-Widgets'];
			package: 'DojoToolkit-Demo'  with: [ spec requires: #('JSON' 'DojoToolkit-Widgets' 'DojoToolkit-Objects')];
			package: 'JSON'.
		spec
			group: 'default' with: #('Core' 'Demo');
			group: 'Core' with: #(
				'DojoToolkit-Core'
				'DojoToolkit-Themes'
				'DojoToolkit-UI'
				'DojoToolkit-Objects'
				'DojoToolkit-Widgets'
				'DojoToolkit-Objects'
				);
			group: 'Demo' with: #(
				'DojoToolkit-Demo' 
			);
			group: 'Tests' with: #('DojoToolkit-Tests'). 
		]

]

{ #category : #baselines }
ConfigurationOfDojoToolkit >> baseline110: spec [ 
	<version: '1.1-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/DojoToolkit'.	
		spec 
			package: 'DojoToolkit-Core';
			package: 'DojoToolkit-Themes' with: [ spec requires: 'DojoToolkit-Core'];
			package: 'DojoToolkit-UI' with: [ spec requires: 'DojoToolkit-Core'];
			package: 'DojoToolkit-DragDrop' with: [ spec requires: 'DojoToolkit-Core'];
			package: 'DojoToolkit-Data' with: [ spec requires: 'DojoToolkit-Core'];
			package: 'DojoToolkit-Objects' with: [ spec requires: 'DojoToolkit-Core'];
			package: 'DojoToolkit-Widgets' with: [ spec requires: 'DojoToolkit-UI'];
			package: 'DojoToolkit-DojoX' with: [ spec requires: #('DojoToolkit-Widgets' 'DojoToolkit-Core') ];
			package: 'DojoToolkit-Tests'  with: [ spec requires: 'DojoToolkit-Widgets'];
			package: 'DojoToolkit-Demo'  with: [ spec requires: #('DojoToolkit-Widgets' 'DojoToolkit-DragDrop' 'DojoToolkit-DojoX')].
		spec
			group: 'default' with: #('Core' 'Demo');
			group: 'Core' with: #(
				'DojoToolkit-Core'
				'DojoToolkit-Themes'
				'DojoToolkit-UI'
				'DojoToolkit-DragDrop'
				'DojoToolkit-Data'
				'DojoToolkit-Objects'
				'DojoToolkit-Widgets'
				'DojoToolkit-DojoX'
				);
			group: 'Demo' with: #(
				'DojoToolkit-Demo' 
			);
			group: 'Tests' with: #('DojoToolkit-Tests'). 
		]

]

{ #category : #accessing }
ConfigurationOfDojoToolkit >> project [

	^ project ifNil: [ | constructor |
		"Bootstrap Metacello if it is not already loaded"
		self class ensureMetacello.
		"Construct Metacello project"
		constructor := (Smalltalk at: #MetacelloVersionConstructor) on: self.
		project := constructor project.
		project loadType: #linear. "change to #atomic if desired"
		project ]
]

{ #category : #baselines }
ConfigurationOfDojoToolkit >> version100: spec [
	<version: '1.0' imports: #('1.0-baseline' )>

	spec for: #common do: [
		spec blessing: #release.
		spec description: 'initial release'.
		spec author: 'hkl'.
		spec timestamp: '05/09/2010 16:19'.
		
		spec 
			package: 'DojoToolkit-Core'with: 'DojoToolkit-Core-hkl.2';
			package: 'DojoToolkit-Themes' with: 'DojoToolkit-Themes-hkl.2';
			package: 'DojoToolkit-UI' with: 'DojoToolkit-UI-hkl.2';
			package: 'DojoToolkit-Objects' with: 'DojoToolkit-Objects-hkl.2';
			package: 'DojoToolkit-Widgets' with: 'DojoToolkit-Widgets-hkl.2';
			package: 'DojoToolkit-Tests' with: 'DojoToolkit-Tests-hkl.2';
			package: 'DojoToolkit-Demo' with: 'DojoToolkit-Demo-hkl.2';
			package: 'JSON' with: [
				spec 
					file: 'JSON-hjh.34';
					repository: 'http://www.squeaksource.com/JSON' ].

	].

]

{ #category : #baselines }
ConfigurationOfDojoToolkit >> version110: spec [
	<version: '1.1' imports: #('1.1-baseline' )>

	spec for: #common do: [
		spec blessing: #development.
		spec description: 'ongoing development'.
		spec author: 'hkl'.
		spec timestamp: '20/09/2010 23:01'.
	].

]
