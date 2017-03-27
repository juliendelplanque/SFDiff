helper
findBaseAssociationCorrespondingTo: targetAssoc withFromChange: fromChange toChanges: toChanges
	^ self baseAssociations detect: [ :baseAssoc |
		|baseAssocTo|
		baseAssocTo := baseAssoc to.
		baseAssocTo isCollection
			ifFalse: [ baseAssocTo := Array with: baseAssocTo ].
		baseAssoc class = targetAssoc class and: [ baseAssoc from = fromChange baseEntity and: [ baseAssocTo includesAll: (toChanges collect: #baseEntity) ] ] ]
			ifNone: [ NotFound signal ]