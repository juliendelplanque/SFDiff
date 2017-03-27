diffing
versionAndRemovalChanges
	self baseAssociations do: [ :assoc | |change1|
		[
			change1 := self entitiesVersionChanges detect: [ :change |
				change baseEntity = assoc from ].
			assoc to isCollection
				ifFalse: [ |change2|
					change2 := self entitiesVersionChanges detect: [ :change |
						change baseEntity = assoc to ].
					self targetAssociations
						detect: [ :targetAssoc |
							targetAssoc from = change1 targetEntity and: [ targetAssoc to = change2 targetEntity ] ]
						ifFound: [ :targetAssoc |
							self changes add: (FamixVersionChange new
														baseEntity: assoc;
														targetEntity: targetAssoc;
														yourself) ]
						ifNone: [ self changes add: (FamixRemovalChange new entity: assoc; yourself) ] ]
				ifTrue: [ |changes2 |
					changes2 := self entitiesVersionChanges select: [ :change |
						assoc to includes: change baseEntity ].
					changes2 size = assoc to size
						ifFalse: [ NotFound signal ].
					 targetAssociations
						detect: [ :targetAssoc | 
							targetAssoc from = change1 targetEntity and: [ targetAssoc to isCollection and: [ targetAssoc to includesAll: (changes2 collect: #targetEntity) ] ] ]
					   ifFound: [ :targetAssoc |
							self changes add: (FamixVersionChange new
														baseEntity: assoc;
														targetEntity: targetAssoc;
														yourself) ]
						ifNone: [ self changes add: (FamixRemovalChange new entity: assoc; yourself) ] ]
		] on: NotFound do: [ 
			self changes add: (FamixRemovalChange new entity: assoc; yourself) ] ]