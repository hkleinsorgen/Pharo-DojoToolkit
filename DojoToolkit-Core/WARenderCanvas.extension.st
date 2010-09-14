Extension { #name : #WARenderCanvas }

{ #category : #'*DojoToolkit-Core' }
WARenderCanvas >> dojoAjaxForm [
	" a <form> tag for forms that are submitted with Ajax post requests "

	^ self brush: DojoAjaxFormTag new
]
