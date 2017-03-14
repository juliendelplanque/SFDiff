diffing
versionAndAddChanges
	targetAssociations do: [ :assoc | |change1|
			[
				change1 := self entitiesVersionChanges detect: [ :change |
					change targetEntity = assoc from ].
				assoc to isCollection
					ifFalse: [ |change2|
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
							ifNone: [ self changes add: (FamixAddChange new entity: assoc; yourself) ] ]
					ifTrue: [ |changes2|
						changes2 := self entitiesVersionChanges select: [ :change |
							assoc to includes: change targetEntity ].
						changes2 size = assoc to size
							ifFalse: [ NotFound signal ].
						baseAssociations
							detect: [ :targetAssoc |
								targetAssoc from = change1 baseEntity and: [ targetAssoc to isCollection and: [ targetAssoc to includesAll: (changes2 collect: #baseEntity) ] ] ]
							ifFound: [ :targetAssoc |
								(self changes anySatisfy: [ :c | c baseEntity = assoc and: [ c targetEntity = targetAssoc ] ])
									ifFalse: [ 
										self changes add: (FamixVersionChange new
																	baseEntity: assoc;
																	targetEntity: targetAssoc;
																	yourself) ] ]
							ifNone: [ self changes add: (FamixAddChange new entity: assoc; yourself) ] ]
			] on: NotFound do: [ 
				self changes add: (FamixAddChange new entity: assoc; yourself) ] ].