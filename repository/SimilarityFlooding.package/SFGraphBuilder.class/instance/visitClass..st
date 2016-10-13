visiting
visitClass: aClass
	aClass attributes do: [ :attribute |
		graph addEdge: (SFNamedEdge from: aClass to: attribute named: 'ClassToAttribute').
		attribute accept: self ].
	
	aClass methods do: [ :method |
		graph addEdge: (SFNamedEdge from: aClass to: method named: 'ClassToMethod').
		method accept: self ]