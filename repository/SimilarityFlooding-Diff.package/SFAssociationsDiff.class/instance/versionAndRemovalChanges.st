diffing
versionAndRemovalChanges
	self baseAssociations do: [ :assoc | |change1 changes2 assocTo targetAssoc|
		[ 
			change1 := self changeWithBaseEntityEqualsTo: assoc from.
			assocTo := assoc to.
			assocTo isCollection
				ifFalse: [ assocTo := Array with: assoc to ].
			
			changes2 := self changesWithBaseEntityIncludedIn: assocTo.
			changes2 size = assocTo size
				ifFalse: [ NotFound signal ].
			targetAssoc := self findTargetAssociationCorrespondingTo: assoc withFromChange: change1 toChanges: changes2.
			self changes add: (FamixVersionChange new
										baseEntity: assoc;
										targetEntity: targetAssoc;
										yourself)
		] on: NotFound do: [ 
			self changes add: (FamixRemovalChange new entity: assoc; yourself) ] ]