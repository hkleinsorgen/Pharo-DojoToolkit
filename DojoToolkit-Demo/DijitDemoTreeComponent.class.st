Class {
	#name : #DijitDemoTreeComponent,
	#superclass : #DijitDemoPartComponent,
	#category : 'DojoToolkit-Demo'
}

{ #category : #rendering }
DijitDemoTreeComponent >> createModelFor: html [ 
	" Creates a model that is connected to an item store.
	Drag/drop notifications of the tree widget don't tell us about
	the target item, so listen to the model instead "

	| store model parentString childrenString |
	store := html dojo new itemFileWriteStore.
	store url: ( html urlForDojoAjaxCallback: 
				[	" render a JSON tree "
					self respondJsonTreeWithCallbacks: html  callbacks
				]).
	model := html dojoUI new treeStoreModel.
	parentString := ''.
	childrenString := ''.
	model 
		store: store;
		query: ( ( Dictionary new )
					at: 'id' put: self rootID;
					yourself );
		onChildrenChange: (( html dojo query: #status ) 
			ajaxPost 
				callbackWithArguments: [: parent : children | 
					parentString := parent printString.
					childrenString := (children ifNil: [ #() ]) asArray printString  ]
				translator: DojoCallbackTranslator treeChildrenChangedTranslator;
				html: [ : canvas | canvas paragraph: [ 
					html 
						emphasis: parentString; 
						text: ' has new children: '; 
						emphasis: childrenString  ]]).
	^ model
]

{ #category : #private }
DijitDemoTreeComponent >> jsonTreeItemForClass: aClass idBlock: idBlock [ 

	| treeItem tooltip |
	treeItem := Dictionary new.
	treeItem at: 'id' put: ( idBlock value: aClass ).
	treeItem at: 'label' put: aClass name asString.
	tooltip := aClass comment.
	tooltip isEmpty ifTrue: [ tooltip := aClass name, ' has not been commented yet'  ].
	treeItem at: 'tooltip' put: tooltip.
	aClass subclasses notEmpty 
		ifTrue: 
		[	treeItem 
				at: 'children'
				put: (( aClass subclasses asSortedCollection: [: cl1 : cl2 | cl1 name <= cl2 name ]) 
						collect: [: subclass | self jsonTreeItemForClass: subclass idBlock: idBlock  ])
		].
	^ treeItem
]

{ #category : #private }
DijitDemoTreeComponent >> jsonTreeWithCallbacks: callbacks [ 

	| items tree idBlock rootClass |
	items := OrderedCollection new.
	rootClass := DojoObject.
	idBlock :=
	[: class | | id |
		id := class = rootClass 
			ifTrue: [ self rootID ]
			ifFalse: [ 'id.' , class fullName ].
		callbacks registerPassenger: class named: id.
		id
	].
	items add: ( self jsonTreeItemForClass: rootClass idBlock: idBlock ).
	tree := Dictionary new.
	tree at: 'label' put: 'label'.
	tree at: 'identifier' put: 'id'.
	tree at: 'items' put: items.
	^ tree asJson
]

{ #category : #rendering }
DijitDemoTreeComponent >> renderDemoOn: html [ 

	| model |
	html div
		id: 'status';
		with: [ html paragraph: 'Click on any node, or drag/drop' ].
	model := self createModelFor: html.
	 self renderTreeOn: html model: model.
]

{ #category : #rendering }
DijitDemoTreeComponent >> renderExplanationOn: html [ 

	super renderExplanationOn: html.
	html paragraph: [ html text: 'The tree widget is splitted into three components: Widget, model and store.' ].
	html paragraph: 
		[	html text: 'The icons and tooltips are customized by overriding functions of the tree (';
				emphasis: 'getIconClass'; text: ', '; emphasis: 'getTooltip'; text: ')'
		].
]

{ #category : #rendering }
DijitDemoTreeComponent >> renderSourceSelectors [

	^ #(
		createModelFor:
		renderTreeOn:model: 
	)
]

{ #category : #rendering }
DijitDemoTreeComponent >> renderTreeOn: html model: model [
	" render a tree with customized icons "

	| tree lastEvent |
	tree := html dojoUI new tree.
	lastEvent := ''.
	tree 
		model: model;
		enableDragAndDrop;
		betweenThreshold: 5;
		overrideGetTooltip: (self treeTooltipScript asFunction: #(item));
		overrideGetIconClass: (self treeIconScript asFunction: #(item opened));
		onClick: ( (html dojo query: #status) 
			ajaxPost 
				callbackWithArguments: [: passenger : label | 
					lastEvent := passenger printString ] 
				translator: DojoCallbackTranslator treeNodeTranslator;
				html: [ : canvas | canvas paragraph: [ 
					html text: 'Clicked on '; emphasis: lastEvent ]]).
	html div
		id: 'tree';
		script: tree.
]

{ #category : #private }
DijitDemoTreeComponent >> respondJsonTreeWithCallbacks: callbacks [ 

	self requestContext respond: 
		[: response |
			response cacheFor: ( Duration days: 0 hours: 0 minutes: 0 seconds: 1 );
				document: ( self jsonTreeWithCallbacks: callbacks ) mimeType: WAMimeType textJavascript
		].
]

{ #category : #private }
DijitDemoTreeComponent >> rootID [

	^ 'Root'
]

{ #category : #accessing }
DijitDemoTreeComponent >> title [

	^ 'Tree'
]

{ #category : #private }
DijitDemoTreeComponent >> treeIconScript [

	^ 'return (!item || this.model.mayHaveChildren(item)) ? 
		(opened ? "treeOpened" : "treeClosed")
			 : "treeLeaf"'
]

{ #category : #private }
DijitDemoTreeComponent >> treeTooltipScript [

	^ 'return item.tooltip'
]

{ #category : #accessing }
DijitDemoTreeComponent >> url [

	^ 'http://www.dojotoolkit.org/reference-guide/dijit/Tree.html'
]

{ #category : #accessing }
DijitDemoTreeComponent >> widgetClass [

	^ DijitTree
]
