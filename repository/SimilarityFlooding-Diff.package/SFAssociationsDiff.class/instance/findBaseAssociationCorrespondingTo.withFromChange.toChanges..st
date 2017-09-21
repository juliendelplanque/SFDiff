helper
findBaseAssociationCorrespondingTo: targetAssoc withFromChange: fromChange toChanges: toChanges
	^ self baseAssociations
		detect: [ :baseAssoc | 
			| baseAssocTo |
			baseAssocTo := baseAssoc to.
			baseAssocTo isCollection
				ifFalse: [ baseAssocTo := Array with: baseAssocTo ].
			baseAssocTo := baseAssocTo collect: [ :e | self entity: e in: self baseModel ].
			baseAssoc class = targetAssoc class
				and: [ (self entity: baseAssoc from in: self baseModel) = (self entity: fromChange baseEntity in: self baseModel)
						and: [ baseAssocTo includesAll: (toChanges collect: [ :e | self entity: e baseEntity in: self baseModel ]) ] ] ]
		ifNone: [ NotFound signal ]