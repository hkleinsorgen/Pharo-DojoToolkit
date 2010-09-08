"
dojo.NodeList instances provide many utilities that reflect core Dojo APIs for Array iteration and manipulation, DOM manipulation, and event handling. Instead of needing to dig up functions in the dojo.* namespace, NodeLists generally make the full power of Dojo available for DOM manipulation tasks in a simple, chainable way.
"
Class {
	#name : #DojoNodeList,
	#superclass : #DojoNodeQuery,
	#category : 'DojoToolkit-Core'
}

{ #category : '*DojoToolkit-Core' }
DojoNodeList class >> functionName [

	^ 'NodeList'
]

{ #category : #'functions-generated' }
DojoNodeList >> addClass: className [ 
	"  adds the specified class to every node in the list "

	self call: 'addClass' withArguments: (Array with: className)
]

{ #category : #'functions-generated' }
DojoNodeList >> addClassFx: cssClass args: args [ 
	"  Animate the effects of adding a class to all nodes in this list.
	see dojox.fx.addClass "

	self call: 'addClassFx' withArguments: (Array with: cssClass with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> adopt: queryOrListOrNode position: position [ 
	"  places any/all elements in queryOrListOrNode at a position relative to the first element in this list.
	Returns a dojo.NodeList of the adopted elements. "

	self call: 'adopt' withArguments: (Array with: queryOrListOrNode with: position)
]

{ #category : #'functions-generated' }
DojoNodeList >> after: content [ 
	"  The content will be cloned if the length of NodeList is greater than 1.
	Only the DOM nodes are cloned, not any attached event handlers "

	self call: 'after' withArguments: (Array with: content)
]

{ #category : #'functions-generated' }
DojoNodeList >> andSelf [
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'andSelf'
]

{ #category : #'functions-generated' }
DojoNodeList >> anim: properties duration: duration easing: easing onEnd: onEnd delay: delay [ 
	"  Animate one or more CSS properties for all nodes in this list.
	The returned animation object will already be playing when it is returned.
	See the docs for dojo.anim for full details. "

	self call: 'anim' withArguments: (OrderedCollection new add: properties; add: duration; add: easing; add: onEnd; add: delay; yourself)
]

{ #category : #'functions-generated' }
DojoNodeList >> animateProperty: args [ 
	"  Animate all elements of this NodeList across the properties specified.
	syntax identical to dojo.animateProperty "

	self call: 'animateProperty' withArguments: (Array with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> append: content [ 
	"  The content will be cloned if the length of NodeList is greater than 1.
	Only the DOM nodes are cloned, not any attached event handlers "

	self call: 'append' withArguments: (Array with: content)
]

{ #category : #'functions-generated' }
DojoNodeList >> appendTo: query [ 
	"  The nodes in this NodeList will be cloned if the query matches more than one element.
	Only the DOM nodes are cloned, not any attached event handlers "

	self call: 'appendTo' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> before: content [ 
	"  The content will be cloned if the length of NodeList is greater than 1.
	Only the DOM nodes are cloned, not any attached event handlers "

	self call: 'before' withArguments: (Array with: content)
]

{ #category : #'functions-generated' }
DojoNodeList >> children: query [ 
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'children' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> clone [
	"  Only the DOM nodes are cloned, not any attached event handlers "

	self call: 'clone'
]

{ #category : #'functions-generated' }
DojoNodeList >> closest: query [ 
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'closest' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> concat: item [ 
	"  This method behaves exactly like the Array.concat method with the caveat that it returns a dojo.NodeList and not a raw Array.
	For more details, see the (Array.concat docs)[http://developer.mozilla.org/en/docs/CoreJavaScript1.5Reference:GlobalObjects:Array:concat] "

	self call: 'concat' withArguments: (Array with: item)
]

{ #category : #'functions-generated' }
DojoNodeList >> connect: methodName objOrFunc: objOrFunc funcName: funcName [ 
	"  attach event handlers to every item of the NodeList.
	Uses dojo.connect() so event properties are normalized "

	self call: 'connect' withArguments: (Array with: methodName with: objOrFunc with: funcName)
]

{ #category : #events }
DojoNodeList >> connectEvent: eventName context: contextObject method: functionOrName dontFix: dontFix [ 
	" connects the event to all nodes returned by this query "

	| args |
	args := OrderedCollection new.
	args
		add: eventName;
		add: contextObject;
		add: functionOrName;
		add: 5.
	self call: 'connect' withArguments: arguments.
]

{ #category : #events }
DojoNodeList >> connectEvent: eventName method: functionOrName [ 
	" connects the event to all nodes returned by this query "

	self call: 'connect' withArguments: ( Array with: eventName with: functionOrName ).
]

{ #category : #'functions-generated' }
DojoNodeList >> constructor [
	"  A reference to the constructor function for this object. "

	self call: 'constructor'
]

{ #category : #'functions-generated' }
DojoNodeList >> coords [
	"  Returns the box objects of all elements in a node list as an Array (*not* a NodeList).
	Acts like dojo.coords, though assumes the node passed is each node in this list. "

	self call: 'coords'
]

{ #category : #'functions-generated' }
DojoNodeList >> dtl: template context: context [ 
	"  The template string or location "

	self call: 'dtl' withArguments: (Array with: template with: context)
]

{ #category : #'functions-generated' }
DojoNodeList >> empty [
	"  clears all content from each node in the list.
	Effectively equivalent to removing all child nodes from every item in the list. "

	self call: 'empty'
]

{ #category : #'functions-generated' }
DojoNodeList >> end [
	"  Returns the dojo.NodeList that generated the current dojo.NodeList.
	If there is no parent dojo.NodeList, an empty dojo.NodeList is returned "

	self call: 'end'
]

{ #category : #'functions-generated' }
DojoNodeList >> even [
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'even'
]

{ #category : #'functions-generated' }
DojoNodeList >> every: callback thisObject: thisObject [ 
	"  see dojo.every() and the (Array.every docs)[http://developer.mozilla.org/en/docs/Core_JavaScript_1.5_Reference:Global_Objects:Array:every].
	Takes the same structure of arguments and returns as dojo.every() with the caveat that the passed array is implicitly this NodeList "

	self call: 'every' withArguments: (Array with: callback with: thisObject)
]

{ #category : #'functions-generated' }
DojoNodeList >> fadeIn: args [ 
	"  fade in all elements of this NodeList via dojo.fadeIn "

	self call: 'fadeIn' withArguments: (Array with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> fadeOut: args [ 
	"  fade out all elements of this NodeList via dojo.fadeOut "

	self call: 'fadeOut' withArguments: (Array with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> fadeTo: args [ 
	"  fade all elements of the node list to a specified opacity "

	self call: 'fadeTo' withArguments: (Array with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> filter: simpleFilter [ 
	"  'masks' the built-in javascript filter() method (supported in Dojo via dojo.filter) to support passing a simple string filter in addition to supporting filtering function objects. "

	self call: 'filter' withArguments: (Array with: simpleFilter)
]

{ #category : #'functions-generated' }
DojoNodeList >> first [
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'first'
]

{ #category : #functions }
DojoNodeList >> forEach: callback [ 
	"  see dojo.forEach().
	The primary difference is that the acted-on array is implicitly this NodeList.
	If you want the option to break out of the forEach loop, use every() or some() instead. "

	self call: 'forEach' withArguments: (Array with: callback )
]

{ #category : #'functions-generated' }
DojoNodeList >> forEach: callback thisObj: thisObj [ 
	"  see dojo.forEach().
	The primary difference is that the acted-on array is implicitly this NodeList.
	If you want the option to break out of the forEach loop, use every() or some() instead. "

	self call: 'forEach' withArguments: (Array with: callback with: thisObj)
]

{ #category : #'functions-generated' }
DojoNodeList >> highlight: args [ 
	"  highlight all elements of the node list.
	Returns an instance of dojo.Animation "

	self call: 'highlight' withArguments: (Array with: args)
]

{ #category : #functions }
DojoNodeList >> html: content parameters: parameters [
	"  Like innerHTML, but with additional tweaking options "

	self require: self packageNodeListHtml.
	self call: 'html' withArguments: (Array with: content with: parameters)
]

{ #category : #'functions-generated' }
DojoNodeList >> html: content params: params [ 
	"  An alias for the 'innerHTML' method, but only defined if there is not an existing 'html' method on dojo.NodeList.
	Be careful if you are working in an environment where it is possible that dojo.NodeList-html could have been loaded, since its definition of 'html' will take precedence.
	If you are not sure if dojo.NodeList-html could be loaded, use the 'innerHTML' method "

	self call: 'html' withArguments: (Array with: content with: params)
]

{ #category : #'functions-generated' }
DojoNodeList >> indexOf: value fromIndex: fromIndex [ 
	"  For more details on the behavior of indexOf, see Mozilla's (indexOf docs)[http://developer.mozilla.org/en/docs/CoreJavaScript1.5Reference:GlobalObjects:Array:indexOf] "

	self call: 'indexOf' withArguments: (Array with: value with: fromIndex)
]

{ #category : #'functions-generated' }
DojoNodeList >> innerHTML: value [ 
	"  This method is simpler than the dojo.NodeList.html() method provided by dojo.NodeList-html.
	This method just does proper innerHTML insertion of HTML fragments, and it allows for the innerHTML to be read for the first node in the node list.
	Since dojo.NodeList-html already took the 'html' name, this method is called 'innerHTML'.
	However, if dojo.NodeList-html has not been loaded yet, this module will define an 'html' method that can be used instead.
	Be careful if you are working in an environment where it is possible that dojo.NodeList-html could have been loaded, since its definition of 'html' will take precedence.
	The nodes represented by the value argument will be cloned if more than one node is in this NodeList.
	The nodes in this NodeList are returned in the 'set' usage of this method, not the HTML that was inserted "

	self call: 'innerHTML' withArguments: (Array with: value)
]

{ #category : #'functions-generated' }
DojoNodeList >> insertAfter: query [ 
	"  The nodes in this NodeList will be cloned if the query matches more than one element.
	Only the DOM nodes are cloned, not any attached event handlers "

	self call: 'insertAfter' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> insertBefore: query [ 
	"  The nodes in this NodeList will be cloned if the query matches more than one element.
	Only the DOM nodes are cloned, not any attached event handlers "

	self call: 'insertBefore' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> instantiate: declaredClass properties: properties [ 
	"  Create a new instance of a specified class, using the specified properties and each node in the nodeList as a srcNodeRef. "

	self call: 'instantiate' withArguments: (Array with: declaredClass with: properties)
]

{ #category : #'functions-generated' }
DojoNodeList >> last [
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'last'
]

{ #category : #'functions-generated' }
DojoNodeList >> lastIndexOf: value fromIndex: fromIndex [ 
	"  For more details on the behavior of lastIndexOf, see Mozilla's (lastIndexOf docs)[http://developer.mozilla.org/en/docs/CoreJavaScript1.5Reference:GlobalObjects:Array:lastIndexOf] "

	self call: 'lastIndexOf' withArguments: (Array with: value with: fromIndex)
]

{ #category : #fields }
DojoNodeList >> length [

	^ self access: 'length'
]

{ #category : #'functions-generated' }
DojoNodeList >> map: func obj: obj [ 
	"  see dojo.map().
	The primary difference is that the acted-on array is implicitly this NodeList and the return is a dojo.NodeList (a subclass of Array) /return d.map(this, func, obj, d.NodeList); // dojo.NodeList "

	self call: 'map' withArguments: (Array with: func with: obj)
]

{ #category : #'functions-generated' }
DojoNodeList >> next: query [ 
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'next' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> nextAll: query [ 
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'nextAll' withArguments: (Array with: query)
]

{ #category : #functions }
DojoNodeList >> nodeAt: index [ 

	self call: 'at' withArguments: (Array with: index)
]

{ #category : #functions }
DojoNodeList >> nodeAtIndices: indices [
	" returns the node at the indices (zero-based!) "

	self call: 'at' withArguments: indices
]

{ #category : #'functions-generated' }
DojoNodeList >> odd [
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'odd'
]

{ #category : #events }
DojoNodeList >> onClick: anObject [ 
	"Bind an event handler to the 'click' JavaScript event, or trigger that event on an element."

	self call: 'onclick' with: anObject.
]

{ #category : #'functions-generated' }
DojoNodeList >> orphan: simpleFilter [ 
	"  removes elements in this list that match the simple filter from their parents and returns them as a new NodeList. "

	self call: 'orphan' withArguments: (Array with: simpleFilter)
]

{ #category : #'functions-generated' }
DojoNodeList >> parent: query [ 
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'parent' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> parents: query [ 
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'parents' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> place: queryOrNode position: position [ 
	"  places elements of this node list relative to the first element matched by queryOrNode.
	Returns the original NodeList.
	See: dojo.place "

	self call: 'place' withArguments: (Array with: queryOrNode with: position)
]

{ #category : #'functions-generated' }
DojoNodeList >> position [
	"  Returns border-box objects (x/y/w/h) of all elements in a node list as an Array (*not* a NodeList).
	Acts like dojo.position, though assumes the node passed is each node in this list. "

	self call: 'position'
]

{ #category : #'functions-generated' }
DojoNodeList >> prepend: content [ 
	"  The content will be cloned if the length of NodeList is greater than 1.
	Only the DOM nodes are cloned, not any attached event handlers "

	self call: 'prepend' withArguments: (Array with: content)
]

{ #category : #'functions-generated' }
DojoNodeList >> prependTo: query [ 
	"  The nodes in this NodeList will be cloned if the query matches more than one element.
	Only the DOM nodes are cloned, not any attached event handlers "

	self call: 'prependTo' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> prev: query [ 
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'prev' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> prevAll: query [ 
	"  The returned nodes will be in reverse DOM order -- the first node in the list will be the node closest to the original node/NodeList.
	.end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'prevAll' withArguments: (Array with: query)
]

{ #category : #functions }
DojoNodeList >> query: anOject [ 

	^ (self create: DojoQuery)
		query: anOject ;
		yourself
]

{ #category : #'functions-generated' }
DojoNodeList >> remove: simpleFilter [ 
	"  alias for dojo.NodeList's orphan method.
	Removes elements in this list that match the simple filter from their parents and returns them as a new NodeList. "

	self call: 'remove' withArguments: (Array with: simpleFilter)
]

{ #category : #'functions-generated' }
DojoNodeList >> removeClass: className [ 
	"  removes the specified class from every node in the list "

	self call: 'removeClass' withArguments: (Array with: className)
]

{ #category : #'functions-generated' }
DojoNodeList >> removeClassFx: cssClass args: args [ 
	"  Animate the effect of removing a class to all nodes in this list.
	see dojox.fx.removeClass "

	self call: 'removeClassFx' withArguments: (Array with: cssClass with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> replaceAll: query [ 
	"  The nodes in this NodeList will be cloned if the query matches more than one element.
	Only the DOM nodes are cloned, not any attached event handlers "

	self call: 'replaceAll' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> replaceWith: content [ 
	"  The content will be cloned if the length of NodeList is greater than 1.
	Only the DOM nodes are cloned, not any attached event handlers "

	self call: 'replaceWith' withArguments: (Array with: content)
]

{ #category : #'package system' }
DojoNodeList >> requiredPackages [

	^ Array with: self packageNodeListManipulate
]

{ #category : #'functions-generated' }
DojoNodeList >> siblings: query [ 
	"  .end() can be used on the returned dojo.NodeList to get back to the original dojo.NodeList "

	self call: 'siblings' withArguments: (Array with: query)
]

{ #category : #'functions-generated' }
DojoNodeList >> sizeTo: args [ 
	"  size all elements of this NodeList.
	Returns an instance of dojo.Animation "

	self call: 'sizeTo' withArguments: (Array with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> slice: begin end: end [ 
	"  This method behaves exactly like the Array.slice method with the caveat that it returns a dojo.NodeList and not a raw Array.
	For more details, see Mozilla's (slice documentation)[http://developer.mozilla.org/en/docs/CoreJavaScript1.5Reference:GlobalObjects:Array:slice] "

	self call: 'slice' withArguments: (Array with: begin with: end)
]

{ #category : #'functions-generated' }
DojoNodeList >> slideBy: args [ 
	"  slide all elements of this NodeList.
	Returns an instance of dojo.Animation "

	self call: 'slideBy' withArguments: (Array with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> slideTo: args [ 
	"  slide all elements of the node list to the specified place via dojo.fx.slideTo "

	self call: 'slideTo' withArguments: (Array with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> some: callback thisObject: thisObject [ 
	"  Takes the same structure of arguments and returns as dojo.some() with the caveat that the passed array is implicitly this NodeList.
	See dojo.some() and Mozilla's (Array.some documentation)[http://developer.mozilla.org/en/docs/Core_JavaScript_1.5_Reference:Global_Objects:Array:some]. "

	self call: 'some' withArguments: (Array with: callback with: thisObject)
]

{ #category : #'functions-generated' }
DojoNodeList >> splice: index howmany: howmany item: item [ 
	"  This method behaves exactly like the Array.splice method with the caveat that it returns a dojo.NodeList and not a raw Array.
	For more details, see Mozilla's (splice documentation)[http://developer.mozilla.org/en/docs/CoreJavaScript1.5Reference:GlobalObjects:Array:splice] For backwards compatibility, calling .end() on the spliced NodeList does not return the original NodeList -- splice alters the NodeList in place "

	self call: 'splice' withArguments: (Array with: index with: howmany with: item)
]

{ #category : #'functions-generated' }
DojoNodeList >> text: value [ 
	"  allows setting the text value of each node in the NodeList, if there is a value passed in, otherwise, returns the text value for all the nodes in the NodeList in one string. "

	self call: 'text' withArguments: (Array with: value)
]

{ #category : #'functions-generated' }
DojoNodeList >> toggleClass: className condition: condition [ 
	"  Adds a class to node if not present, or removes if present.
	Pass a boolean condition if you want to explicitly add or remove. "

	self call: 'toggleClass' withArguments: (Array with: className with: condition)
]

{ #category : #'functions-generated' }
DojoNodeList >> toggleClassFx: cssClass force: force args: args [ 
	"  Animate the effect of adding or removing a class to all nodes in this list.
	see dojox.fx.toggleClass "

	self call: 'toggleClassFx' withArguments: (Array with: cssClass with: force with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> wipeIn: args [ 
	"  wipe in all elements of this NodeList via dojo.fx.wipeIn "

	self call: 'wipeIn' withArguments: (Array with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> wipeOut: args [ 
	"  wipe out all elements of this NodeList via dojo.fx.wipeOut "

	self call: 'wipeOut' withArguments: (Array with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> wipeTo: args [ 
	"  Wipe all elements of the NodeList to a specified width: or height: "

	self call: 'wipeTo' withArguments: (Array with: args)
]

{ #category : #'functions-generated' }
DojoNodeList >> wrap: html [ 
	"  html will be cloned if the NodeList has more than one element.
	Only DOM nodes are cloned, not any attached event handlers "

	self call: 'wrap' withArguments: (Array with: html)
]

{ #category : #'functions-generated' }
DojoNodeList >> wrapAll: html [ 
	"  Insert html where the first node in this NodeList lives, then place all nodes in this NodeList as the child of the html. "

	self call: 'wrapAll' withArguments: (Array with: html)
]

{ #category : #'functions-generated' }
DojoNodeList >> wrapInner: html [ 
	"  html will be cloned if the NodeList has more than one element.
	Only DOM nodes are cloned, not any attached event handlers "

	self call: 'wrapInner' withArguments: (Array with: html)
]
