diffing
versionAndAddChanges
	self targetAssociations do: [ :assoc | |change1 changes2 assocTo baseAssoc|
			[
				change1 := self changeWithTargetEntityEqualsTo: assoc from.
				assocTo := assoc to.
				assocTo isCollection
					ifFalse: [ assocTo := Array with: assocTo ].
				
				changes2 := self changesWithTargetEntityIncludedIn: assocTo.
				changes2 size = assocTo size
					ifFalse: [ NotFound signal ].
				baseAssoc := self findBaseAssociationCorrespondingTo: assoc withFromChange: change1 toChanges: changes2.
				(self changes anySatisfy: [ :c | c baseEntity = assoc and: [ c targetEntity = assoc ] ])
					ifFalse: [ 
						self changes add: (FamixVersionChange new
													baseEntity: assoc;
													targetEntity: baseAssoc;
													yourself) ] 
			] on: NotFound do: [ 
				self changes add: (FamixAddChange new entity: assoc; yourself) ] ].