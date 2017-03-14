diffing
versionAndRemovalChanges
	baseAssociations do: [ :assoc | |change1 change2|
			[
				change1 := self entitiesVersionChanges detect: [ :change |
					change baseEntity = assoc from ].
				change2 := self entitiesVersionChanges detect: [ :change |
					change baseEntity = assoc to ].
				targetAssociations
					detect: [ :targetAssoc |
						targetAssoc from = change1 targetEntity and: [ targetAssoc to = change2 targetEntity ] ]
					ifFound: [ :targetAssoc |
						self changes add: (FamixVersionChange new
													baseEntity: assoc;
													targetEntity: targetAssoc;
													yourself) ]
					ifNone: [ self changes add: (FamixRemovalChange new entity: assoc; yourself) ]
			] on: NotFound do: [ 
				self changes add: (FamixRemovalChange new entity: assoc; yourself) ] ]