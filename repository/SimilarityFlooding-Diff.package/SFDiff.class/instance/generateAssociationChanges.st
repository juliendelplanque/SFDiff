change generation
generateAssociationChanges
	| assocChanges matchChanges baseAssociations targetAssociations |
	assocChanges := OrderedCollection new.
	matchChanges := self changes select: #isMatch.
	baseAssociations := (self baseModel allWithSubTypesOf: FAMIXAssociation) entities.
	targetAssociations := (self targetModel allWithSubTypesOf: FAMIXAssociation) entities.
	baseAssociations do: [ :assoc | |change1 change2|
			[
				change1 := matchChanges detect: [ :change |
					change baseEntity = assoc from ].
				change2 := matchChanges detect: [ :change |
					change baseEntity = assoc to ].
				targetAssociations
					detect: [ :targetAssoc |
						targetAssoc from = change1 targetEntity and: [ targetAssoc to = change2 targetEntity ] ]
					ifFound: [ :targetAssoc |
						assocChanges add: (FamixVersionChange new
													baseEntity: assoc;
													targetEntity: targetAssoc;
													yourself) ]
					ifNone: [ assocChanges add: (FamixRemovalChange new entity: assoc; yourself) ]
			] on: NotFound do: [ 
				assocChanges add: (FamixRemovalChange new entity: assoc; yourself) ] ].
	targetAssociations do: [ :assoc | |change1 change2|
			[
				change1 := matchChanges detect: [ :change |
					change targetEntity = assoc from ].
				change2 := matchChanges detect: [ :change |
					change targetEntity = assoc to ].
				baseAssociations
					detect: [ :targetAssoc |
						targetAssoc from = change1 baseEntity and: [ targetAssoc to = change2 baseEntity ] ]
					ifFound: [ :targetAssoc |
						(assocChanges anySatisfy: [ :c | c baseEntity = assoc and: [ c targetEntity = targetAssoc ] ])
							ifFalse: [ 
								assocChanges add: (FamixVersionChange new
															baseEntity: assoc;
															targetEntity: targetAssoc;
															yourself) ] ]
					ifNone: [ assocChanges add: (FamixAddChange new entity: assoc; yourself) ]
			] on: NotFound do: [ 
				assocChanges add: (FamixAddChange new entity: assoc; yourself) ] ].
	self changes addAll: assocChanges