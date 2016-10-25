as yet unclassified
buildFromModel: aMooseModel
	(aMooseModel entities select: #isPackage) do: [ :package | 
		graph addEdge: (SFNamedEdge from: aMooseModel to: package named: 'ModelToPackage').
		package accept: self ].
	
	(aMooseModel allWithSubTypesOf: FAMIXAssociation)
		do: [ :association |
			(association class = FAMIXInvocation)
				ifTrue: [ association candidates do: [ :to | graph addEdge: (SFNamedEdge from: association sender to: to named: association className) ] ]
				ifFalse: [ graph addEdge: (SFNamedEdge from: association from to: association to named: association className) ] ].
	
	"(aMooseModel allWithType: FAMIXInheritance)
		do: [ :association |
			graph addEdge: (SFNamedEdge from: association from to: association to named: association className) ].
	(aMooseModel allWithType: FAMIXReference)
		do: [ :association |
			graph addEdge: (SFNamedEdge from: association from to: association to named: association className) ].
	(aMooseModel allWithType: FAMIXAccess)
		do: [ :association |
			graph addEdge: (SFNamedEdge from: association from to: association to named: association className) ]"