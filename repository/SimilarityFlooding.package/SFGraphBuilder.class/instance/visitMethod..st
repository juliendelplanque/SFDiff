visiting
visitMethod: aMethod
	aMethod parameters do: [ :parameter |
		graph addEdge: (SFNamedEdge from: aMethod to: parameter named: 'MethodToParameter').
		parameter accept: self ]