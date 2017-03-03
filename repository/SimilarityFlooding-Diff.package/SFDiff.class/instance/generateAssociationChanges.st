change generation
generateAssociationChanges
	| assocChanges matchChanges |
	assocChanges := OrderedCollection new.
	matchChanges := self changes select: #isMatch.
	(self baseModel allWithSubTypesOf: FAMIXAssociation) entities
		do: [ :assoc | |change1 change2|
			[
				change1 := matchChanges detect: [ :change |
					change baseEntity = assoc from ].
				change2 := matchChanges detect: [ :change |
					change baseEntity = assoc to ].
				(self targetModel allWithSubTypesOf: FAMIXAssociation) entities
					detect: [ :targetAssoc |
						targetAssoc from = change1 targetEntity and: [ targetAssoc to = change2 targetEntity ] ]
					ifFound: [ :targetAssoc |
						assocChanges add: (FamixVersionChange new
													baseEntity: assoc;
													targetEntity: targetAssoc;
													yourself) ]
			] on: NotFound do: [ 
				assocChanges add: (FamixRemovalChange new entity: assoc; yourself) ] ].
	(self targetModel allWithSubTypesOf: FAMIXAssociation) entities
		do: [ :assoc | |change1 change2|
			[
				change1 := matchChanges detect: [ :change |
					change targetEntity = assoc from ].
				change2 := matchChanges detect: [ :change |
					change targetEntity = assoc to ].
				(self baseModel allWithSubTypesOf: FAMIXAssociation) entities
					detect: [ :targetAssoc |
						targetAssoc from = change1 baseEntity and: [ targetAssoc to = change2 baseEntity ] ]
					ifFound: [ :targetAssoc |
						(assocChanges anySatisfy: [ :c | c baseEntity = assoc and: [ c targetEntity = targetAssoc ] ])
							ifFalse: [ 
								assocChanges add: (FamixVersionChange new
															baseEntity: assoc;
															targetEntity: targetAssoc;
															yourself) ] ]
			] on: NotFound do: [ 
				assocChanges add: (FamixAddChange new entity: assoc; yourself) ] ].
	self changes addAll: assocChanges