diffing
versionAndAddChanges
	self targetAssociations do: [ :targetAssoc | |notFound|
		notFound := false.
		[ (self baseModel at: targetAssoc orionID) ] on: Error do: [ notFound := true ].
		notFound
			ifTrue: [
				self changes add: (FamixAddChange new entity: targetAssoc; yourself)] ]