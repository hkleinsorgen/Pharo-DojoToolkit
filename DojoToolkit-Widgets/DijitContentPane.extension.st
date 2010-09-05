Extension { #name : #DijitContentPane }

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> attributeMap [
	
	self access: 'attributeMap'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> attributeMap: aJsObject [
	
	self propertyAt: 'attributeMap' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> cancel [
	"  Cancels an in-flight download of content "

	self call: 'cancel'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> content [
	"  || DomNode || NodeList || dijit._Widget The innerHTML of the ContentPane.
	Note that the initialization parameter / argument to attr('content', ...) can be a String, DomNode, Nodelist, or _Widget. "

	self access: 'content'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> content: aString [
	"  || DomNode || NodeList || dijit._Widget The innerHTML of the ContentPane.
	Note that the initialization parameter / argument to attr('content', ...) can be a String, DomNode, Nodelist, or _Widget. "

	self propertyAt: 'content' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> doLayout [
	"  - false - don't adjust size of children - true - if there is a single visible child widget, set it's size to however big the ContentPane is "

	self access: 'doLayout'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> doLayout: aBoolean [
	"  - false - don't adjust size of children - true - if there is a single visible child widget, set it's size to however big the ContentPane is "

	self propertyAt: 'doLayout' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> errorMessage [
	"  Message that shows if an error occurs "

	self access: 'errorMessage'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> errorMessage: aString [
	"  Message that shows if an error occurs "

	self propertyAt: 'errorMessage' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> extractContent [
	"  Extract visible content from inside of <body> ....
	</body>.
	I.e., strip <html> and <head> (and it's contents) from the href "

	self access: 'extractContent'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> extractContent: aBoolean [
	"  Extract visible content from inside of <body> ....
	</body>.
	I.e., strip <html> and <head> (and it's contents) from the href "

	self propertyAt: 'extractContent' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane classSide >> functionName [

	^ 'dijit.layout.ContentPane'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> href [
	"  The href of the content that displays now.
	Set this at construction if you want to load data externally when the pane is shown.
	(Set preload=true to load it immediately.) Changing href after creation doesn't have any effect; Use set('href', ...); "

	self access: 'href'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> href: aString [
	"  The href of the content that displays now.
	Set this at construction if you want to load data externally when the pane is shown.
	(Set preload=true to load it immediately.) Changing href after creation doesn't have any effect; Use set('href', ...); "

	self propertyAt: 'href' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> ioArgs [
	"  Parameters to pass to xhrGet() request, for example: <div dojoType='dijit.layout.ContentPane' href='./bar' ioArgs='{timeout: 500}'> "

	self access: 'ioArgs'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> ioArgs: aJsObject [
	"  Parameters to pass to xhrGet() request, for example: <div dojoType='dijit.layout.ContentPane' href='./bar' ioArgs='{timeout: 500}'> "

	self propertyAt: 'ioArgs' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> isContainer [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self access: 'isContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> isContainer: aBoolean [
	"  Indicates that this widget acts as a 'parent' to the descendant widgets.
	When the parent is started it will call startup() on the child widgets.
	See also isLayoutContainer. "

	self propertyAt: 'isContainer' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> isLayoutContainer [
	"  Indicates that this widget will call resize() on it's child widgets when they become visible. "

	self access: 'isLayoutContainer'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> isLayoutContainer: aBoolean [
	"  Indicates that this widget will call resize() on it's child widgets when they become visible. "

	self propertyAt: 'isLayoutContainer' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> isLoaded [
	"  True if the ContentPane has data in it, either specified during initialization (via href or inline content), or set via attr('content', ...) / attr('href', ...) False if it doesn't have any content, or if ContentPane is still in the process of downloading href. "

	self access: 'isLoaded'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> isLoaded: aBoolean [
	"  True if the ContentPane has data in it, either specified during initialization (via href or inline content), or set via attr('content', ...) / attr('href', ...) False if it doesn't have any content, or if ContentPane is still in the process of downloading href. "

	self propertyAt: 'isLoaded' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> loadingMessage [
	"  Message that shows while downloading "

	self access: 'loadingMessage'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> loadingMessage: aString [
	"  Message that shows while downloading "

	self propertyAt: 'loadingMessage' put: aString
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> onContentError: error [
	"  Called on DOM faults, require faults etc.
	in content.
	In order to display an error message in the pane, return the error message from this method, as an HTML string.
	By default (if this method is not overriden), it returns nothing, so the error message is just printed to the console. "

	self eventAt: 'onContentError' put: (error asFunction: #(#error))
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> onDownloadEnd: anObject [
	"  Called when download is finished. "

	self eventAt: 'onDownloadEnd' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> onDownloadError: error [
	"  Called when download error occurs.
	In order to display an error message in the pane, return the error message from this method, as an HTML string.
	Default behavior (if this method is not overriden) is to display the error message inside the pane. "

	self eventAt: 'onDownloadError' put: (error asFunction: #(#error))
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> onDownloadStart: anObject [
	"  The string returned by this function will be the html that tells the user we are loading something.
	Override with your own function if you want to change text "

	self eventAt: 'onDownloadStart' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> onLoad: data [
	"  Event hook, is called after everything is loaded and widgetified "

	self eventAt: 'onLoad' put: (data asFunction: #(#data))
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> onLoadDeferred [
	"  This is the dojo.Deferred returned by attr('href', ...) and refresh().
	Calling onLoadDeferred.addCallback() or addErrback() registers your callback to be called only once, when the prior attr('href', ...) call or the initial href parameter to the constructor finishes loading.
	This is different than an onLoad() handler which gets called any time any href is loaded. "

	self access: 'onLoadDeferred'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> onLoadDeferred: aJsObject [
	"  This is the dojo.Deferred returned by attr('href', ...) and refresh().
	Calling onLoadDeferred.addCallback() or addErrback() registers your callback to be called only once, when the prior attr('href', ...) call or the initial href parameter to the constructor finishes loading.
	This is different than an onLoad() handler which gets called any time any href is loaded. "

	self propertyAt: 'onLoadDeferred' put: aJsObject
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> onUnload: anObject [
	"  Event hook, is called before old content is cleared "

	self eventAt: 'onUnload' put: (anObject asFunction: #())
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> parseOnLoad [
	"  Parse content and create the widgets, if any. "

	self access: 'parseOnLoad'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> parseOnLoad: aBoolean [
	"  Parse content and create the widgets, if any. "

	self propertyAt: 'parseOnLoad' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> preload [
	"  Force load of data on initialization even if pane is hidden. "

	self access: 'preload'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> preload: aBoolean [
	"  Force load of data on initialization even if pane is hidden. "

	self propertyAt: 'preload' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> preventCache [
	"  Prevent caching of data from href's by appending a timestamp to the href. "

	self access: 'preventCache'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> preventCache: aBoolean [
	"  Prevent caching of data from href's by appending a timestamp to the href. "

	self propertyAt: 'preventCache' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> refresh [
	"  cancels any currently in-flight requests posts 'loading...' message sends XHR to download new data "

	self call: 'refresh'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> refreshOnShow [
	"  Refresh (re-download) content when pane goes from hidden to shown "

	self access: 'refreshOnShow'
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> refreshOnShow: aBoolean [
	"  Refresh (re-download) content when pane goes from hidden to shown "

	self propertyAt: 'refreshOnShow' put: aBoolean
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> resize: changeSize resultSize: resultSize [ 
	"  See dijit.layout._LayoutWidget.resize for description.
	Although ContentPane doesn't extend _LayoutWidget, it does implement the same API. "

	self call: 'resize' withArguments: (Array with: changeSize with: resultSize)
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> setContent: data [ 
	"  Deprecated.
	Use set('content', ...) instead. "

	self call: 'setContent' withArguments: (Array with: data)
]

{ #category : '*DojoToolkit-Widgets' }
DijitContentPane >> setHref: href [ 
	"  Deprecated.
	Use set('href', ...) instead. "

	self call: 'setHref' withArguments: (Array with: href)
]
