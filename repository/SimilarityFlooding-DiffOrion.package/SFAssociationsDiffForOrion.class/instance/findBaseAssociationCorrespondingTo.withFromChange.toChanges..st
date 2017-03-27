helper
findBaseAssociationCorrespondingTo: targetAssoc withFromChange: fromChange toChanges: toChanges
	^ self baseAssociations detect: [ :baseAssoc |
		|baseAssocTo|
		baseAssocTo := baseAssoc to.
		baseAssocTo isCollection
			ifFalse: [ baseAssocTo := Array with: baseAssocTo ].
		baseAssocTo := baseAssocTo collect: [ :e | e versionIn: self baseModel ].
		baseAssoc class = targetAssoc class and: [ (baseAssoc from versionIn: self baseModel) = (fromChange baseEntity versionIn: self baseModel) and: [ baseAssocTo includesAll: (toChanges collect: [ :e | e baseEntity versionIn: self baseModel ]) ] ] ]
			ifNone: [ NotFound signal ]