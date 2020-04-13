Class {
	#name : #DojoHelperLibrary,
	#superclass : #WAFileLibrary,
	#category : 'DojoToolkit-Core'
}

{ #category : #accessing }
DojoHelperLibrary >> ajaxScriptsJs [

^ '

function evalAjaxScript(scriptNode) {
	scriptNode.attributes[0].nodeValue = "script/eval-done";
	eval(scriptNode.text);
}

function evalAjaxScripts(parseId) {
	if (parseId != null)
		dojo.require("dojo.parser");
	dojo.query("script[type=text/script-eval]").forEach(evalAjaxScript);
	dojo.addOnLoad(function(){
		if (parseId != null)
		{	/* only parse if the node actually exists */
			if (dojo.byId(parseId) != null)
				dojo.parser.parse(parseId);
		}
		dojo.query("script[type=text/script-eval-onload]").forEach(evalAjaxScript);
	});
}

function applyMultiNodeHtmlResponse(response, functionName) {
	var map = eval(response);
	for (i = 0; i<map.length; i++)
	{	var id = map[i].node;
		dojo.query("#" + id)[functionName](map[i].html);
		evalAjaxScripts(id);
	}
	return response;
}
'
]

{ #category : #accessing }
DojoHelperLibrary >> selectorsToInclude [

	^#(ajaxScriptsJs)
]
