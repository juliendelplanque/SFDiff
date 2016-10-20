as yet unclassified
buildFromModel: aMooseModel
	(aMooseModel entities select: #isPackage) do: [ :package | 
		graph addEdge: (SFNamedEdge from: aMooseModel to: package named: 'ModelToPackage').
		package accept: self ].
	
	"(aMooseModel allWithSubTypesOf: FAMIXAssociation)
		do: [ :association |
			graph addEdge: (SFNamedEdge from: association from to: association to named: association className) ]."
	
	(aMooseModel allWithType: FAMIXInheritance)
		do: [ :association |
			graph addEdge: (SFNamedEdge from: association from to: association to named: association className) ].
	(aMooseModel allWithType: FAMIXReference)
		do: [ :association |
			graph addEdge: (SFNamedEdge from: association from to: association to named: association className) ]