visiting
visitPackage: aPackage
	aPackage classes do: [ :class |
		graph addEdge: (SFNamedEdge from: aPackage to: class named: 'PackageToClass').
		class accept: self ]