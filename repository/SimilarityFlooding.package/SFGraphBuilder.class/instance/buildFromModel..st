as yet unclassified
buildFromModel: aMooseModel
	(aMooseModel entities select: #isPackage) do: [ :package | package accept: self ].
	
	(aMooseModel allWithSubTypesOf: FAMIXAssociation)
		do: [ :association |
			(association isInvocation and: [ association isAPotentialInvocation ])
				ifFalse: [ 
					graph addEdge: (SFNamedEdge from: association from to: association to named: association className) ] ]