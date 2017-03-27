diffing
versionAndRemovalChanges
	self baseAssociations do: [ :baseAssoc | |notFound|
		notFound := false.
		[ (self targetModel at: baseAssoc orionID) ] on: Error do: [ notFound := true ].
		notFound
			ifFalse: [ 
				self changes add: (FamixVersionChange new
											baseEntity: baseAssoc;
											targetEntity: (self targetModel at: baseAssoc orionID);
											yourself) ]
			ifTrue: [
			self changes add: (FamixRemovalChange new entity: baseAssoc; yourself)] ]