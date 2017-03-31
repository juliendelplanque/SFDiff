adding
addEdgeDerivedFromAssociationsOfModel: aMooseModel.
	(aMooseModel allWithSubTypesOf: FAMIXAssociation)
		do: [ :association |
			(association isKindOf: FAMIXInvocation)
				ifTrue: [ association candidates do: [ :to | graph addEdge: (SFNamedEdge from: (association sender versionIn: self model) to: (to versionIn: self model) named: association className) ] ]
				ifFalse: [ graph addEdge: (SFNamedEdge from: (association from versionIn: self model) to: (association to versionIn: self model) named: association className) ] ].