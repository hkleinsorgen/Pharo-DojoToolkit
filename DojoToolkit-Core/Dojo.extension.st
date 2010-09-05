Extension { #name : #Dojo }

{ #category : '*DojoToolkit-Core' }
Dojo >> addClass: node classStr: classStr [ 
	"  Adds the specified classes to the end of the class list on the passed node.
	Will not re-apply duplicate classes. "

	self call: 'addClass' withArguments: (Array with: node with: classStr)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> addOnLoad: aFunction [ 
	"Call functions after the DOM has finished loading and widgets declared in markup have been instantiated "

	self call: 'addOnLoad' with: aFunction.
]

{ #category : '*DojoToolkit-Core' }
Dojo >> addOnLoad: obj functionName: functionName [ 
	"  Registers a function to be triggered after the DOM has finished loading and dojo.require modules have loaded.
	Widgets declared in markup have been instantiated if djConfig.parseOnLoad is true when this fires.
	Images and CSS files may or may not have finished downloading when the specified function is called.
	(Note that widgets' CSS and HTML code is guaranteed to be downloaded before said widgets are instantiated, though including css resouces BEFORE any script elements is highly recommended) "

	self call: 'addOnLoad' withArguments: (Array with: obj with: functionName)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> addOnUnload: aFunction [ 
	" registers a function to be called when the page unloads "

	self call: 'addOnUnload' with: aFunction.
]

{ #category : '*DojoToolkit-Core' }
Dojo >> addOnWindowUnload: aFunction [ 
	" Registers a function to be triggered when window.onunload fires "

	self call: 'addOnWindowUnload' with: aFunction.
]

{ #category : '*DojoToolkit-Core' }
Dojo >> addOnWindowUnload: obj functionName: functionName [ 
	"  registers a function to be triggered when window.onunload fires.
	Be careful trying to modify the DOM or access JavaScript properties during this phase of page unloading: they may not always be available.
	Consider dojo.addOnUnload() if you need to modify the DOM or do heavy JavaScript work. "

	self call: 'addOnWindowUnload' withArguments: (Array with: obj with: functionName)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> ajax [
	" convenvience code. you should use a specific request type (get/post) if possible "

	^ self ajaxGet
]

{ #category : '*DojoToolkit-Core' }
Dojo >> ajaxGet [
	
	^ self create: DojoAjaxGet
]

{ #category : '*DojoToolkit-Core' }
Dojo >> ajaxPost [
	
	^ self create: DojoAjaxPost
]

{ #category : '*DojoToolkit-Core' }
Dojo >> animateNode: aNode duration: duration properties: animationProperties [

	| args |
	args := Dictionary new.
	args at: 'node' put: aNode.
	args at: 'duration' put: duration.
	args at: 'properties' put: animationProperties.
	self animateProperty: args.
	^ self create: DojoAnimation
]

{ #category : '*DojoToolkit-Core' }
Dojo >> animateProperty: args [ 
	"  The standard animation doesn't know what to do with something like rect(...). 
	This class identifies complex properties by they being a string and having parenthesis. 
	If so, that property is made into a dojox.fx._Complex object and the getValue() is obtained from there. "

	self call: 'animateProperty' withArguments: (Array with: args ).
	^ self create: DojoAnimation
]

{ #category : '*DojoToolkit-Core' }
Dojo >> attr: node name: name value: value [ 
	"  Handles normalized getting and setting of attributes on DOM Nodes.
	If 2 arguments are passed, and a the second argumnt is a string, acts as a getter.
	If a third argument is passed, or if the second argument is a map of attributes, acts as a setter.
	When passing functions as values, note that they will not be directly assigned to slots on the node, but rather the default behavior will be removed and the new behavior will be added using dojo.connect(), meaning that event handler properties will be normalized and that some caveats with regards to non-standard behaviors for onsubmit apply.
	Namely that you should cancel form submission using dojo.stopEvent() on the passed event object instead of returning a boolean value from the handler itself "

	self call: 'attr' withArguments: (Array with: node with: name with: value)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> blendColors: start end: end weight: weight obj: obj [ 
	"  Blend colors end and start with weight from 0 to 1, 0.5 being a 50/50 blend, can reuse a previously allocated dojo.Color object for the result "

	self call: 'blendColors' withArguments: (OrderedCollection new add: start; add: end; add: weight; add: obj; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> body [
	"  Return the body element of the document return the body object associated with dojo.doc "

	self call: 'body'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> byId: id [ 
	"Select a DOM node by id "

	^ ( self create: DojoById )
		id: id;
		yourself
]

{ #category : '*DojoToolkit-Core' }
Dojo >> byId: id doc: doc [ 
	"  Returns DOM node with matching id attribute or null if not found.
	If id is a DomNode, this function is a no-op. "

	self call: 'byId' withArguments: (Array with: id with: doc)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> clone: o [ 
	"  Clones objects (including DOM nodes) and all children.
	Warning: do not clone cyclic structures. "

	self call: 'clone' withArguments: (Array with: o)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> colorFromArray: a obj: obj [ 
	"  Builds a dojo.Color from a 3 or 4 element array, mapping each element in sequence to the rgb(a) values of the color. "

	self call: 'colorFromArray' withArguments: (Array with: a with: obj)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> colorFromHex: color obj: obj [ 
	"  Converts a hex string with a '#' prefix to a color object.
	Supports 12-bit #rgb shorthand.
	Optionally accepts a dojo.Color object to update with the parsed value. "

	self call: 'colorFromHex' withArguments: (Array with: color with: obj)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> colorFromRgb: color obj: obj [ 
	"  this function can handle all 4 CSS3 Color Module formats: rgb, rgba, hsl, hsla, including rgb(a) with percentage values "

	self call: 'colorFromRgb' withArguments: (Array with: color with: obj)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> colorFromString: str obj: obj [ 
	"  Acceptable input values for str may include arrays of any form accepted by dojo.colorFromArray, hex strings such as '#aaaaaa', or rgb or rgba strings such as 'rgb(133, 200, 16)' or 'rgba(10, 10, 10, 50)' "

	self call: 'colorFromString' withArguments: (Array with: str with: obj)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> connect: sourceObject event: eventName context: contextObject method: functionOrName dontFix: dontFix [ 
	" dojo.connect connects events to methods, so that after the event occurs, the new connected method is called too. "

	| arguments |
	arguments := OrderedCollection new.
	arguments
		add: sourceObject;
		add: eventName;
		add: contextObject;
		add: functionOrName;
		add: 5.
	self call: 'connect' withArguments: arguments.
]

{ #category : '*DojoToolkit-Core' }
Dojo >> connect: sourceObject event: eventName method: functionOrName [ 
	" dojo.connect connects events to methods, so that after the event occurs, the new connected method is called too. "

	self call: 'connect' withArguments: ( Array with: sourceObject with: eventName with: functionOrName ).
]

{ #category : '*DojoToolkit-Core' }
Dojo >> connectPublisher: topic obj: obj event: event [ 
	"  Ensure that every time obj.event() is called, a message is published on the topic.
	Returns a handle which can be passed to dojo.disconnect() to disable subsequent automatic publication on the topic. "

	self call: 'connectPublisher' withArguments: (Array with: topic with: obj with: event)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> contentBox: node box: box [ 
	"  Returns an object in the expected format of box (regardless if box is passed).
	The object might look like: { l: 50, t: 200, w: 300: h: 150 } for a node offset from its parent 50px to the left, 200px from the top with a content width of 300px and a content-height of 150px.
	Note that the content box may have a much larger border or margin box, depending on the box model currently in use and CSS values set/inherited for node.
	While the getter will return top and left values, the setter only accepts setting the width and height "

	self call: 'contentBox' withArguments: (Array with: node with: box)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> coords: node includeScroll: includeScroll [ 
	"  Returns an object that measures margin-box (w)idth/(h)eight and absolute position x/y of the border-box.
	Also returned is computed (l)eft and (t)op values in pixels from the node's offsetParent as returned from marginBox().
	Return value will be in the form: { l: 50, t: 200, w: 300: h: 150, x: 100, y: 300 } Does not act as a setter.
	If includeScroll is passed, the x and y params are affected as one would expect in dojo.position() "

	self call: 'coords' withArguments: (Array with: node with: includeScroll)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> create: tag attrs: attrs refNode: refNode pos: pos [ 
	"  A DOM Element creation function.
	A shorthand method for creating a node or a fragment, and allowing for a convenient optional attribute setting step, as well as an optional DOM placement reference.
	Attributes are set by passing the optional object through dojo.attr.
	See dojo.attr for noted caveats and nuances, and API if applicable.
	Placement is done via dojo.place, assuming the new node to be the action node, passing along the optional reference node and position "

	self call: 'create' withArguments: (OrderedCollection new add: tag; add: attrs; add: refNode; add: pos; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> declare: className superclass: superclass props: props [ 
	"  Create a constructor using a compact notation for inheritance and prototype extension.
	Mixin ancestors provide a type of multiple inheritance.
	Prototypes of mixin ancestors are copied to the new class: changes to mixin prototypes will not affect classes to which they have been mixed in.
	Ancestors can be compound classes created by this version of dojo.declare.
	In complex cases all base classes are going to be linearized according to C3 MRO algorithm (see http://www.python.org/download/releases/2.3/mro/ for more details).
	'className' is cached in 'declaredClass' property of the new class, if it was supplied.
	The immediate super class will be cached in 'superclass' property of the new class.
	Methods in 'props' will be copied and modified: 'nom' property (the declared name of the method) will be added to all copied functions to help identify them for the internal machinery.
	Be very careful, while reusing methods: if you use the same function under different names, it can produce errors in some cases.
	It is possible to use constructors created 'manually' (without dojo.declare) as bases.
	They will be called as usual during the creation of an instance, their methods will be chained, and even called by 'this.inherited()'.
	Special property '-chains-' governs how to chain methods.
	It is a dictionary, which uses method names as keys, and hint strings as values.
	If a hint string is 'after', this method will be called after methods of its base classes.
	If a hint string is 'before', this method will be called before methods of its base classes.
	If 'constructor' is not mentioned in '-chains-' property, it will be chained using the legacy mode: using 'after' chaining, calling preamble() method before each constructor, if available, and calling postscript() after all constructors were executed.
	If the hint is 'after', it is chained as a regular method, but postscript() will be called after the chain of constructors.
	'constructor' cannot be chained 'before', but it allows a special hint string: 'manual', which means that constructors are not going to be chained in any way, and programmer will call them manually using this.inherited().
	In the latter case postscript() will be called after the construction.
	All chaining hints are 'inherited' from base classes and potentially can be overridden.
	Be very careful when overriding hints! Make sure that all chained methods can work in a proposed manner of chaining.
	Once a method was chained, it is impossible to unchain it.
	The only exception is 'constructor'.
	You don't need to define a method in order to supply a chaining hint.
	If a method is chained, it cannot use this.inherited() because all other methods in the hierarchy will be called automatically.
	Usually constructors and initializers of any kind are chained using 'after' and destructors of any kind are chained as 'before'.
	Note that chaining assumes that chained methods do not return any value: any returned value will be discarded "

	self call: 'declare' withArguments: (Array with: className with: superclass with: props)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> delegate: obj props: props [ 
	"  This is a small implementaton of the Boodman/Crockford delegation pattern in JavaScript.
	An intermediate object constructor mediates the prototype chain for the returned object, using it to delegate down to obj for property lookup when object-local lookup fails.
	This can be thought of similarly to ES4's 'wrap', save that it does not act on types but rather on pure objects "

	self call: 'delegate' withArguments: (Array with: obj with: props)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> deprecated: behaviour extra: extra removal: removal [ 
	"  Log a debug message to indicate that a behavior has been deprecated. "

	self call: 'deprecated' withArguments: (Array with: behaviour with: extra with: removal)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> destroy: node [ 
	"  Removes a node from its parent, clobbering it and all of its children.
	Function only works with DomNodes, and returns nothing "

	self call: 'destroy' withArguments: (Array with: node)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> disconnect: connectionHandle [

	self call: 'disconnect' withArguments: ( Array with: connectionHandle ).
]

{ #category : '*DojoToolkit-Core' }
Dojo >> empty: node [ 
	"  safely removes all children of the node. "

	self call: 'empty' withArguments: (Array with: node)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> eval: scriptFragment [ 
	"  Placed in a separate function to minimize size of trapped exceptions.
	Calling eval() directly from some other scope may complicate tracebacks on some platforms "

	self call: 'eval' withArguments: (Array with: scriptFragment)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> event [
	" useful in event callbacks "

	^ DojoEvent context: self renderContext
]

{ #category : '*DojoToolkit-Core' }
Dojo >> every: arr callback: callback thisObject: thisObject [ 
	"  This function corresponds to the JavaScript 1.6 Array.every() method, with one difference: when run over sparse arrays, this implemenation passes the 'holes' in the sparse array to the callback function with a value of undefined.
	JavaScript 1.6's every skips the holes in the sparse array.
	For more details, see: https://developer.mozilla.org/en/CoreJavaScript1.5_Reference/Objects/Array/every "

	self call: 'every' withArguments: (Array with: arr with: callback with: thisObject)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> exists: name obj: obj [ 
	"  useful for longer api chains where you have to test each object in the chain.
	Useful only for object and method detection.
	Not useful for testing generic properties on an object.
	In particular, dojo.exists('foo.bar') when foo.bar = '' will return false.
	Use ('bar' in foo) to test for those cases "

	self call: 'exists' withArguments: (Array with: name with: obj)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> exit: exitcode [ 
	
	self call: 'exit' withArguments: (Array with: exitcode)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> experimental: moduleName extra: extra [ 
	"  This can be used to mark a function, file, or module as experimental.
	Experimental code is not ready to be used, and the APIs are subject to change without notice.
	Experimental code may be completed deleted without going through the normal deprecation process "

	self call: 'experimental' withArguments: (Array with: moduleName with: extra)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> extend: constructor props: props [ 
	"  Adds all properties and methods of props to constructor's prototype, making them available to all instances created with constructor. "

	self call: 'extend' withArguments: (Array with: constructor with: props)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> fadeIn: args [ 
	"  Returns an animation that will fade node defined in 'args' from its current opacity to fully opaque. "

	self call: 'fadeIn' withArguments: (Array with: args ).
	^ self create: DojoAnimation
]

{ #category : '*DojoToolkit-Core' }
Dojo >> fadeInNode: node duration: duration [ 
	"  Returns an animation that will fade node defined in 'args' from its current opacity to fully opaque. "

	| args |
	args := Dictionary new.
	args at: 'node' put: node.
	args at: 'duration' put: duration.
	^ self fadeIn: args
]

{ #category : '*DojoToolkit-Core' }
Dojo >> fadeOut: args [ 
	"  Returns an animation that will fade node defined in 'args' from its current opacity to fully transparent. "

	self call: 'fadeOut' withArguments: (Array with: args ).
	^ self create: DojoAnimation
]

{ #category : '*DojoToolkit-Core' }
Dojo >> fadeOutNode: node duration: duration [ 
	"  Returns an animation that will fade node defined in 'args' from its current opacity to fully transparent. "

	| args |
	args := Dictionary new.
	args at: 'node' put: node.
	args at: 'duration' put: duration.
	^ self fadeOut: args
]

{ #category : '*DojoToolkit-Core' }
Dojo >> fieldToObject: inputNode [ 
	"  Returns the value encoded in a form field as as a string or an array of strings.
	Disabled form elements and unchecked radio and checkboxes are skipped.
	Multi-select elements are returned as an array of string values "

	self call: 'fieldToObject' withArguments: (Array with: inputNode)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> filter: arr callback: callback thisObject: thisObject [ 
	"  This function corresponds to the JavaScript 1.6 Array.filter() method, with one difference: when run over sparse arrays, this implemenation passes the 'holes' in the sparse array to the callback function with a value of undefined.
	JavaScript 1.6's filter skips the holes in the sparse array.
	For more details, see: https://developer.mozilla.org/en/CoreJavaScript1.5_Reference/Objects/Array/filter "

	self call: 'filter' withArguments: (Array with: arr with: callback with: thisObject)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> fixEvent: evt sender: sender [ 
	"  normalizes properties on the event object including event bubbling methods, keystroke normalization, and x/y positions "

	self call: 'fixEvent' withArguments: (Array with: evt with: sender)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> forEach: arr callback: callback thisObject: thisObject [ 
	"  This function corresponds to the JavaScript 1.6 Array.forEach() method, with one difference: when run over sparse arrays, this implemenation passes the 'holes' in the sparse array to the callback function with a value of undefined.
	JavaScript 1.6's forEach skips the holes in the sparse array.
	For more details, see: https://developer.mozilla.org/en/CoreJavaScript1.5_Reference/Objects/Array/forEach "

	self call: 'forEach' withArguments: (Array with: arr with: callback with: thisObject)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> formToJson: formNode prettyPrint: prettyPrint [ 
	"  Create a serialized JSON string from a form node or string ID identifying the form to serialize "

	self call: 'formToJson' withArguments: (Array with: formNode with: prettyPrint)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> formToObject: formNode [ 
	"  Returns the values encoded in an HTML form as string properties in an object which it then returns.
	Disabled form elements, buttons, and other non-value form elements are skipped.
	Multi-select elements are returned as an array of string values "

	self call: 'formToObject' withArguments: (Array with: formNode)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> formToQuery: formNode [ 
	"  Returns a URL-encoded string representing the form passed as either a node or string ID identifying the form to serialize "

	self call: 'formToQuery' withArguments: (Array with: formNode)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> fromJson: json [ 
	"  Throws for invalid JSON strings, but it does not use a strict JSON parser.
	It delegates to eval().
	The content passed to this method must therefore come from a trusted source "

	self call: 'fromJson' withArguments: (Array with: json)
]

{ #category : '*DojoToolkit-Core' }
Dojo classSide >> functionName [

	^ 'dojo'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> getComputedStyle: node [ 
	"  Gets a 'computed style' object which can be used to gather information about the current state of the rendered node.
	Note that this may behave differently on different browsers.
	Values may have different formats and value encodings across browsers.
	Note also that this method is expensive.
	Wherever possible, reuse the returned object.
	Use the dojo.style() method for more consistent (pixelized) return values "

	self call: 'getComputedStyle' withArguments: (Array with: node)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> getNodeProp: node name: name [ 
	"  Returns an effective value of a property or an attribute. "

	self call: 'getNodeProp' withArguments: (Array with: node with: name)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> getObject: name create: create context: context [ 
	"  Useful for longer api chains where you have to test each object in the chain, or when you have an object reference in string format "

	self call: 'getObject' withArguments: (Array with: name with: create with: context)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> hasAttr: node name: name [ 
	"  Returns true if the requested attribute is specified on the given element, and false otherwise. "

	self call: 'hasAttr' withArguments: (Array with: node with: name)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> hasClass: node classStr: classStr [ 
	"  Returns whether or not the specified classes are a portion of the class list currently applied to the node. "

	self call: 'hasClass' withArguments: (Array with: node with: classStr)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> hash: hash replace: replace [ 
	"  Handles getting and setting of location.hash.
	- If no arguments are passed, acts as a getter.
	- If a string is passed, acts as a setter "

	self call: 'hash' withArguments: (Array with: hash with: replace)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> hitch: scope method: method [ 
	"  Returns a function that will only ever execute in the a given scope.
	This allows for easy use of object member functions in callbacks and other places in which the 'this' keyword may otherwise not reference the expected scope.
	Any number of default positional arguments may be passed as parameters beyond 'method'.
	Each of these values will be used to 'placehold' (similar to curry) for the hitched function. "

	self call: 'hitch' withArguments: (Array with: scope with: method)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> id: aString [ 
	"Answer a Dojo query with a single DOM element identified by the ID aString."

	^ ( self query ) id: aString;
		yourself
]

{ #category : '*DojoToolkit-Core' }
Dojo >> indexOf: array value: value fromIndex: fromIndex findLast: findLast [ 
	"  This method corresponds to the JavaScript 1.6 Array.indexOf method, with one difference: when run over sparse arrays, the Dojo function invokes the callback for every index whereas JavaScript 1.6's indexOf skips the holes in the sparse array.
	For details on this method, see: https://developer.mozilla.org/en/CoreJavaScript1.5_Reference/Objects/Array/indexOf "

	self call: 'indexOf' withArguments: (OrderedCollection new add: array; add: value; add: fromIndex; add: findLast; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isAlien: it [ 
	"  Returns true if it is a built-in function or some other kind of oddball that *should* report as a function but doesn't "

	self call: 'isAlien' withArguments: (Array with: it)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isArray: it [ 
	"  Return true if it is an Array.
	Does not work on Arrays created in other windows. "

	self call: 'isArray' withArguments: (Array with: it)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isArrayLike: it [ 
	"  Doesn't strongly test for 'arrayness'.
	Instead, settles for 'isn't a string or number and has a length property'.
	Arguments objects and DOM collections will return true when passed to dojo.isArrayLike(), but will return false when passed to dojo.isArray() "

	self call: 'isArrayLike' withArguments: (Array with: it)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isChrome [
	"  | undefined Version as a Number if client is Chrome browser.
	undefined otherwise.
	isMac: Boolean True if the client runs on Mac "

	self access: 'isChrome'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isCopyKey: e [ 
	"  Checks an event for the copy key (meta on Mac, and ctrl anywhere else) "

	self call: 'isCopyKey' withArguments: (Array with: e)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isDescendant: node ancestor: ancestor [ 
	"  Returns true if node is a descendant of ancestor "

	self call: 'isDescendant' withArguments: (Array with: node with: ancestor)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isFF [
	"  | undefined Version as a Number if client is FireFox.
	undefined otherwise.
	Corresponds to major detected FireFox version (1.5, 2, 3, etc.) "

	self access: 'isFF'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isFunction: it [ 
	"  Return true if it is a Function "

	self call: 'isFunction' withArguments: (Array with: it)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isIE [
	"  | undefined Version as a Number if client is MSIE(PC).
	undefined otherwise.
	Corresponds to major detected IE version (6, 7, 8, etc.) "

	self access: 'isIE'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isKhtml [
	"  | undefined Version as a Number if client is a KHTML browser.
	undefined otherwise.
	Corresponds to major detected version. "

	self access: 'isKhtml'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isMozilla [
	"  | undefined Version as a Number if client is a Mozilla-based browser (Firefox, SeaMonkey).
	undefined otherwise.
	Corresponds to major detected version. "

	self access: 'isMozilla'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isObject: it [ 
	"  Returns true if it is a JavaScript object (or an Array, a Function or null) "

	self call: 'isObject' withArguments: (Array with: it)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isOpera [
	"  | undefined Version as a Number if client is Opera.
	undefined otherwise.
	Corresponds to major detected version. "

	self access: 'isOpera'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isSafari [
	"  | undefined Version as a Number if client is Safari or iPhone.
	undefined otherwise. "

	self access: 'isSafari'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isString: it [ 
	"  Return true if it is a String "

	self call: 'isString' withArguments: (Array with: it)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> isWebKit [
	"  | undefined Version as a Number if client is a WebKit-derived browser (Konqueror, Safari, Chrome, etc.).
	undefined otherwise. "

	self access: 'isWebKit'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> lastIndexOf: array value: value fromIndex: fromIndex [ 
	"  This method corresponds to the JavaScript 1.6 Array.lastIndexOf method, with one difference: when run over sparse arrays, the Dojo function invokes the callback for every index whereas JavaScript 1.6's lastIndexOf skips the holes in the sparse array.
	For details on this method, see: https://developer.mozilla.org/en/CoreJavaScript1.5_Reference/Objects/Array/lastIndexOf "

	self call: 'lastIndexOf' withArguments: (Array with: array with: value with: fromIndex)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> loadInit: init [ 
	"  This function is mainly a marker for the xdomain loader to know parts of code that needs be executed outside the function wrappper that is placed around modules.
	The init function could be executed more than once, and it should make no assumptions on what is loaded, or what modules are available.
	Only the functionality in Dojo Base is allowed to be used.
	Avoid using this method.
	For a valid use case, see the source for dojox.gfx "

	self call: 'loadInit' withArguments: (Array with: init)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> loaded [
	"  signal fired when initial environment and package loading is complete.
	You should use dojo.addOnLoad() instead of doing a direct dojo.connect() to this method in order to handle initialization tasks that require the environment to be initialized.
	In a browser host, declarative widgets will be constructed when this function finishes runing. "

	self call: 'loaded'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> map: arr callback: callback thisObject: thisObject [ 
	"  This function corresponds to the JavaScript 1.6 Array.map() method, with one difference: when run over sparse arrays, this implemenation passes the 'holes' in the sparse array to the callback function with a value of undefined.
	JavaScript 1.6's map skips the holes in the sparse array.
	For more details, see: https://developer.mozilla.org/en/CoreJavaScript1.5_Reference/Objects/Array/map "

	self call: 'map' withArguments: (Array with: arr with: callback with: thisObject)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> marginBox: node box: box [ 
	"  Getter/setter for the margin-box of node.
	Returns an object in the expected format of box (regardless if box is passed).
	The object might look like: { l: 50, t: 200, w: 300: h: 150 } for a node offset from its parent 50px to the left, 200px from the top with a margin width of 300px and a margin-height of 150px "

	self call: 'marginBox' withArguments: (Array with: node with: box)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> mixin: obj props: props [ 
	"  dojo.mixin can mix multiple source objects into a destination object which is then returned.
	Unlike regular for...in iteration, dojo.mixin is also smart about avoiding extensions which other toolkits may unwisely add to the root object prototype "

	self call: 'mixin' withArguments: (Array with: obj with: props)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> moduleUrl: module url: url [ 
	"  Returns a dojo._Url object relative to a module. "

	self call: 'moduleUrl' withArguments: (Array with: module with: url)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> nodeList: arguments [
	" creates a new node list "

	^ (self create: DojoNodeList ) setArguments: arguments; create
]

{ #category : '*DojoToolkit-Core' }
Dojo >> objectToQuery: map [ 
	"  takes a name/value mapping object and returns a string representing a URL-encoded version of that object. "

	self call: 'objectToQuery' withArguments: (Array with: map)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> partial: method [ 
	"  Calling dojo.partial is the functional equivalent of calling: dojo.hitch(null, funcName, ...); "

	self call: 'partial' withArguments: (Array with: method)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> place: node refNode: refNode position: position [ 
	"  Attempt to insert node into the DOM, choosing from various positioning options.
	Returns the first argument resolved to a DOM node. "

	self call: 'place' withArguments: (Array with: node with: refNode with: position)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> platformRequire: modMap [ 
	"  This method takes a 'map' of arrays which one can use to optionally load dojo modules.
	The map is indexed by the possible dojo.name_ values, with two additional values: 'default' and 'common'.
	The items in the 'default' array will be loaded if none of the other items have been choosen based on dojo.name_, set by your host environment.
	The items in the 'common' array will always be loaded, regardless of which list is chosen "

	self call: 'platformRequire' withArguments: (Array with: modMap)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> popContext [
	"  If the context stack contains elements, ensure that subsequent code executes in the *previous* context to the current context.
	The current context set ([global, document]) is returned. "

	self call: 'popContext'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> position: node includeScroll: includeScroll [ 
	"  Returns an object of the form: { x: 100, y: 300, w: 20, h: 15 } If includeScroll==true, the x and y values will include any document offsets that may affect the position relative to the viewport.
	Uses the border-box model (inclusive of border and padding but not margin).
	Does not act as a setter "

	self call: 'position' withArguments: (Array with: node with: includeScroll)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> provide: resourceName [ 
	"  Each javascript source file is called a resource.
	When a resource is loaded by the browser, dojo.provide() registers that it has been loaded.
	Each javascript source file must have at least one dojo.provide() call at the top of the file, corresponding to the file name.
	For example, js/dojo/foo.js must have dojo.provide('dojo.foo'); before any calls to dojo.require() are made.
	For backwards compatibility reasons, in addition to registering the resource, dojo.provide() also ensures that the javascript object for the module exists.
	For example, dojo.provide('dojox.data.FlickrStore'), in addition to registering that FlickrStore.js is a resource for the dojox.data module, will ensure that the dojox.data javascript object exists, so that calls like dojo.data.foo = function(){ ...
	} don't fail.
	In the case of a build where multiple javascript source files are combined into one bigger file (similar to a .lib or .jar file), that file may contain multiple dojo.provide() calls, to note that it includes multiple resources "

	self call: 'provide' withArguments: (Array with: resourceName)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> pushContext: g d: d [ 
	"  dojo.pushContext treats contexts as a stack.
	The auto-detected contexts which are initially provided using dojo.setContext() require authors to keep state in order to 'return' to a previous context, whereas the dojo.pushContext and dojo.popContext methods provide a more natural way to augment blocks of code to ensure that they execute in a different window or frame without issue.
	If called without any arguments, the default context (the context when Dojo is first loaded) is instead pushed into the stack.
	If only a single string is passed, a node in the intitial context's document is looked up and its contextWindow and contextDocument properties are used as the context to push.
	This means that iframes can be given an ID and code can be executed in the scope of the iframe's document in subsequent calls easily "

	self call: 'pushContext' withArguments: (Array with: g with: d)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> query [
	" Returns a query object that selects a node list from the DOM "
	
	^ self create: DojoQuery
]

{ #category : '*DojoToolkit-Core' }
Dojo >> query: anOject [ 
	" Returns a query object that selects a node list from the DOM.
	This is a convenience method, see #query: for details  "

	^ ( self query ) query: anOject ;
		yourself
]

{ #category : '*DojoToolkit-Core' }
Dojo >> queryThis [
	" returns a node list with 'this' node "
	
	^ self nodeList: (JSAlias named: 'this')
]

{ #category : '*DojoToolkit-Core' }
Dojo >> queryToObject: str [ 
	"  Create an object representing a de-serialized query section of a URL.
	Query keys with multiple values are returned in an array. "

	self call: 'queryToObject' withArguments: (Array with: str)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> rawXhrPost [
	
	self call: 'rawXhrPost'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> rawXhrPut [
	
	self call: 'rawXhrPut'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> ready [
	
	self call: 'ready'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> registerModulePath: module prefix: prefix [ 
	"  An unregistered module is given the default path of ../[module], relative to Dojo root.
	For example, module acme is mapped to ../acme.
	If you want to use a different module name, use dojo.registerModulePath "

	self call: 'registerModulePath' withArguments: (Array with: module with: prefix)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> removeAttr: node name: name [ 
	"  Removes an attribute from an HTML element. "

	self call: 'removeAttr' withArguments: (Array with: node with: name)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> removeClass: node classStr: classStr [ 
	"  Removes the specified classes from node.
	No dojo.hasClass check is required. "

	self call: 'removeClass' withArguments: (Array with: node with: classStr)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> replace: tmpl map: map pattern: pattern [ 
	"  Performs parameterized substitutions on a string.
	Throws an exception if any parameter is unmatched. "

	self call: 'replace' withArguments: (Array with: tmpl with: map with: pattern)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> require: moduleName omitModuleCheck: omitModuleCheck [ 
	"  Modules are loaded via dojo.require by using one of two loaders: the normal loader and the xdomain loader.
	The xdomain loader is used when dojo was built with a custom build that specified loader=xdomain and the module lives on a modulePath that is a whole URL, with protocol and a domain.
	The versions of Dojo that are on the Google and AOL CDNs use the xdomain loader.
	If the module is loaded via the xdomain loader, it is an asynchronous load, since the module is added via a dynamically created script tag.
	This means that dojo.require() can return before the module has loaded.
	However, this should only happen in the case where you do dojo.require calls in the top-level HTML page, or if you purposely avoid the loader checking for dojo.require dependencies in your module by using a syntax like dojo['require'] to load the module.
	Sometimes it is useful to not have the loader detect the dojo.require calls in the module so that you can dynamically load the modules as a result of an action on the page, instead of right at module load time.
	Also, for script blocks in an HTML page, the loader does not pre-process them, so it does not know to download the modules before the dojo.require calls occur.
	So, in those two cases, when you want on-the-fly module loading or for script blocks in the HTML page, special care must be taken if the dojo.required code is loaded asynchronously.
	To make sure you can execute code that depends on the dojo.required modules, be sure to add the code that depends on the modules in a dojo.addOnLoad() callback.
	dojo.addOnLoad waits for all outstanding modules to finish loading before executing.
	Example:  dojo.require('foo'); dojo.require('bar'); dojo.addOnLoad(function(){ //you can now safely do something with foo and bar });  This type of syntax works with both xdomain and normal loaders, so it is good practice to always use this idiom for on-the-fly code loading and in HTML script blocks.
	If at some point you change loaders and where the code is loaded from, it will all still work.
	More on how dojo.require dojo.require('A.B') first checks to see if symbol A.B is defined.
	If it is, it is simply returned (nothing to do).
	If it is not defined, it will look for A/B.js in the script root directory.
	dojo.require throws an excpetion if it cannot find a file to load, or if the symbol A.B is not defined after loading.
	It returns the object A.B, but note the caveats above about on-the-fly loading and HTML script blocks when the xdomain loader is loading a module.
	dojo.require() does nothing about importing symbols into the current namespace.
	It is presumed that the caller will take care of that.
	For example, to import all symbols into a local block, you might write: with (dojo.require('A.B')) { ...
	} And to import just the leaf symbol to a local variable: var B = dojo.require('A.B'); .. "

	self call: 'require' withArguments: (Array with: moduleName with: omitModuleCheck)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> requireIf: condition resourceName: resourceName [ 
	"  If the condition is true then call dojo.require() for the specified resource "

	self call: 'requireIf' withArguments: (Array with: condition with: resourceName)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> requireLocalization: moduleName bundleName: bundleName locale: locale availableFlatLocales: availableFlatLocales [ 
	"  Load translated resource bundles provided underneath the 'nls' directory within a package.
	Translated resources may be located in different packages throughout the source tree.
	Each directory is named for a locale as specified by RFC 3066, (http://www.ietf.org/rfc/rfc3066.txt), normalized in lowercase.
	Note that the two bundles in the example do not define all the same variants.
	For a given locale, bundles will be loaded for that locale and all more general locales above it, including a fallback at the root directory.
	For example, a declaration for the 'de-at' locale will first load nls/de-at/bundleone.js, then nls/de/bundleone.js and finally nls/bundleone.js.
	The data will be flattened into a single Object so that lookups will follow this cascading pattern.
	An optional build step can preload the bundles to avoid data redundancy and the multiple network hits normally required to load these resources "

	self call: 'requireLocalization' withArguments: (OrderedCollection new add: moduleName; add: bundleName; add: locale; add: availableFlatLocales; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> safeMixin: target source: source [ 
	"  This function is used to mix in properties like dojo._mixin does, but it skips a constructor property and decorates functions like dojo.declare does.
	It is meant to be used with classes and objects produced with dojo.declare.
	Functions mixed in with dojo.safeMixin can use this.inherited() like normal methods.
	This function is used to implement extend() method of a constructor produced with dojo.declare() "

	self call: 'safeMixin' withArguments: (Array with: target with: source)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> setContext: globalObject globalDocument: globalDocument [ 
	"  changes the behavior of many core Dojo functions that deal with namespace and DOM lookup, changing them to work in a new global context (e.g., an iframe).
	The varibles dojo.global and dojo.doc are modified as a result of calling this function and the result of dojo.body() likewise differs. "

	self call: 'setContext' withArguments: (Array with: globalObject with: globalDocument)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> setObject: name value: value context: context [ 
	"  Useful for longer api chains where you have to test each object in the chain, or when you have an object reference in string format.
	Objects are created as needed along path.
	Returns the passed value if setting is successful or undefined if not "

	self call: 'setObject' withArguments: (Array with: name with: value with: context)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> setSelectable: node selectable: selectable [ 
	"  Enable or disable selection on a node "

	self call: 'setSelectable' withArguments: (Array with: node with: selectable)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> some: arr callback: callback thisObject: thisObject [ 
	"  This function corresponds to the JavaScript 1.6 Array.some() method, with one difference: when run over sparse arrays, this implemenation passes the 'holes' in the sparse array to the callback function with a value of undefined.
	JavaScript 1.6's some skips the holes in the sparse array.
	For more details, see: https://developer.mozilla.org/en/CoreJavaScript1.5_Reference/Objects/Array/some "

	self call: 'some' withArguments: (Array with: arr with: callback with: thisObject)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> stopEvent: evt [ 
	"  prevents propagation and clobbers the default action of the passed event "

	self call: 'stopEvent' withArguments: (Array with: evt)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> style: node style: style value: value [ 
	"  Getting the style value uses the computed style for the node, so the value will be a calculated value, not just the immediate node.style value.
	Also when getting values, use specific style names, like 'borderBottomWidth' instead of 'border' since compound values like 'border' are not necessarily reflected as expected.
	If you want to get node dimensions, use dojo.marginBox(), dojo.contentBox() or dojo.position() "

	self call: 'style' withArguments: (Array with: node with: style with: value)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> subscribe: topic method: method [ 

	self call: 'subscribe' withArguments: (Array with: topic with: method asFunction)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> toJson: it prettyPrint: prettyPrint indentStr: indentStr [ 
	"  Returns a JSON serialization of an object.
	Note that this doesn't check for infinite recursion, so don't do that! "

	self call: 'toJson' withArguments: (Array with: it with: prettyPrint with: indentStr)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> toggleClass: node classStr: classStr condition: condition [ 
	"  Adds a class to node if not present, or removes if present.
	Pass a boolean condition if you want to explicitly add or remove. "

	self call: 'toggleClass' withArguments: (Array with: node with: classStr with: condition)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> trim: str [ 
	"  This version of trim() was selected for inclusion into the base due to its compact size and relatively good performance (see Steven Levithan's blog Uses String.prototype.trim instead, if available.
	The fastest but longest version of this function is located at dojo.string.trim() "

	self call: 'trim' withArguments: (Array with: str)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> unloaded [
	"  signal fired by impending environment destruction.
	You should use dojo.addOnUnload() instead of doing a direct dojo.connect() to this method to perform page/application cleanup methods.
	See dojo.addOnUnload for more info. "

	self call: 'unloaded'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> when: promiseOrValue callback: callback errback: errback progressHandler: progressHandler [ 
	"  This provides normalization between normal synchronous values and asynchronous promises, so you can interact with them in a common way "

	self call: 'when' withArguments: (OrderedCollection new add: promiseOrValue; add: callback; add: errback; add: progressHandler; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> windowUnloaded [
	"  signal fired by impending window destruction.
	You may use dojo.addOnWIndowUnload() or dojo.connect() to this method to perform page/application cleanup methods.
	See dojo.addOnWindowUnload for more info. "

	self call: 'windowUnloaded'
]

{ #category : '*DojoToolkit-Core' }
Dojo >> windowUnloaded: aFunction [ 
	" Signal fired by impending window destruction "

	self call: 'windowUnloaded' with: aFunction.
]

{ #category : '*DojoToolkit-Core' }
Dojo >> withDoc: documentObject callback: callback thisObject: thisObject cbArguments: cbArguments [ 
	"  Invoke callback with documentObject as dojo.doc.
	If provided, callback will be executed in the context of object thisObject When callback() returns or throws an error, the dojo.doc will be restored to its previous state "

	self call: 'withDoc' withArguments: (OrderedCollection new add: documentObject; add: callback; add: thisObject; add: cbArguments; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> withGlobal: globalObject callback: callback thisObject: thisObject cbArguments: cbArguments [ 
	"  Invoke callback with globalObject as dojo.global and globalObject.document as dojo.doc.
	If provided, globalObject will be executed in the context of object thisObject When callback() returns or throws an error, the dojo.global and dojo.doc will be restored to its previous state "

	self call: 'withGlobal' withArguments: (OrderedCollection new add: globalObject; add: callback; add: thisObject; add: cbArguments; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> xdRequireLocalization: m b: b locale: locale fLocales: fLocales moduleName: moduleName bundleName: bundleName availableFlatLocales: availableFlatLocales [ 
	"  Internal xd loader function.
	The xd version of dojo.requireLocalization. "

	self call: 'xdRequireLocalization' withArguments: (OrderedCollection new add: m; add: b; add: locale; add: fLocales; add: moduleName; add: bundleName; add: availableFlatLocales; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> xhr: method args: args handleAs: handleAs sync: sync headers: headers failOk: failOk hasBody: hasBody [ 
	"  Sends an HTTP request with the given method.
	See also dojo.xhrGet(), xhrPost(), xhrPut() and dojo.xhrDelete() for shortcuts for those HTTP methods.
	There are also methods for 'raw' PUT and POST methods via dojo.rawXhrPut() and dojo.rawXhrPost() respectively "

	self call: 'xhr' withArguments: (OrderedCollection new add: method; add: args; add: handleAs; add: sync; add: headers; add: failOk; add: hasBody; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> xhrDelete: args handleAs: handleAs sync: sync headers: headers failOk: failOk [ 
	"  Sends an HTTP DELETE request to the server. "

	self call: 'xhrDelete' withArguments: (OrderedCollection new add: args; add: handleAs; add: sync; add: headers; add: failOk; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> xhrGet: args handleAs: handleAs sync: sync headers: headers failOk: failOk [ 
	"  Sends an HTTP GET request to the server. "

	self call: 'xhrGet' withArguments: (OrderedCollection new add: args; add: handleAs; add: sync; add: headers; add: failOk; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> xhrPost: args handleAs: handleAs sync: sync headers: headers failOk: failOk [ 
	"  Sends an HTTP POST request to the server.
	In addtion to the properties listed for the dojo.__XhrArgs type, the following property is allowed: postData: String.
	Send raw data in the body of the POST request. "

	self call: 'xhrPost' withArguments: (OrderedCollection new add: args; add: handleAs; add: sync; add: headers; add: failOk; yourself)
]

{ #category : '*DojoToolkit-Core' }
Dojo >> xhrPut: args handleAs: handleAs sync: sync headers: headers failOk: failOk [ 
	"  Sends an HTTP PUT request to the server.
	In addtion to the properties listed for the dojo.__XhrArgs type, the following property is allowed: putData: String.
	Send raw data in the body of the PUT request. "

	self call: 'xhrPut' withArguments: (OrderedCollection new add: args; add: handleAs; add: sync; add: headers; add: failOk; yourself)
]
