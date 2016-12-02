building
addEdgeDerivedFromAssociationsOfModel: aMooseModel.
	(aMooseModel allWithSubTypesOf: FAMIXAssociation)
		do: [ :association |
			(association class = FAMIXInvocation)
				ifTrue: [ association candidates do: [ :to | graph addEdge: (SFNamedEdge from: association sender to: to named: association className) ] ]
				ifFalse: [ graph addEdge: (SFNamedEdge from: association from to: association to named: association className) ] ].