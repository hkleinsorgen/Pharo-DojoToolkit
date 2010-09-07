Extension { #name : #JSFunction }

{ #category : #'*DojoToolkit-UI' }
JSFunction >> dojoAsFunctionNamed: functionName [ 

	^ ( DojoNamedFunction context: self renderContext )
		name: functionName;
		addAll: statements;
		return: self return;
		arguments: self arguments;
		yourself
]

{ #category : #'*DojoToolkit-UI' }
JSFunction >> dojoMarkupValue [
	" markup attributes contain the function body, 
		and thus cannot acess the function arguments by name "

	^ String streamContents: 
		[: stream |
			statements isEmpty 
				ifFalse: 
				[	statements allButLast do: 
						[: each |
							stream javascript: each;
								nextPut: $;
						].
					self return 
						ifTrue: [ stream nextPutAll: 'return ' ].
					stream javascript: statements last
				]
		]
]
