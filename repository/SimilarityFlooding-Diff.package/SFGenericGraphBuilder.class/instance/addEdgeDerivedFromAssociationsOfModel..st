building
addEdgeDerivedFromAssociationsOfModel: aMooseModel
	(aMooseModel allWithSubTypesOf: FAMIXAssociation)
		do: [ :association | 
			(association isKindOf: FAMIXInvocation)
				ifTrue: [ association candidates
						do:
							[ :to | graph addEdge: (SFNamedEdge from: (self entity: association sender in: self model) to: (self entity: to in: self model) named: association className) ] ]
				ifFalse: [ graph
						addEdge: (SFNamedEdge from: (self entity: association from in: self model) to: (self entity: association to in: self model) named: association className) ] ]