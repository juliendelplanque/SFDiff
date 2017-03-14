diffing
versionAndAddChanges
	targetAssociations do: [ :assoc | |change1 change2|
			[
				change1 := self entitiesVersionChanges detect: [ :change |
					change targetEntity = assoc from ].
				change2 := self entitiesVersionChanges detect: [ :change |
					change targetEntity = assoc to ].
				baseAssociations
					detect: [ :targetAssoc |
						targetAssoc from = change1 baseEntity and: [ targetAssoc to = change2 baseEntity ] ]
					ifFound: [ :targetAssoc |
						(self changes anySatisfy: [ :c | c baseEntity = assoc and: [ c targetEntity = targetAssoc ] ])
							ifFalse: [ 
								self changes add: (FamixVersionChange new
															baseEntity: assoc;
															targetEntity: targetAssoc;
															yourself) ] ]
					ifNone: [ self changes add: (FamixAddChange new entity: assoc; yourself) ]
			] on: NotFound do: [ 
				self changes add: (FamixAddChange new entity: assoc; yourself) ] ].