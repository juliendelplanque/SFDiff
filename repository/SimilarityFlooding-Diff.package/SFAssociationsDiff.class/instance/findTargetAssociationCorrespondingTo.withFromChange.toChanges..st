helper
findTargetAssociationCorrespondingTo: baseAssoc withFromChange: fromChange toChanges: toChanges
	^ self targetAssociations
		detect: [ :targetAssoc | 
			| targetAssocTo |
			targetAssocTo := targetAssoc to.
			targetAssocTo isCollection
				ifFalse: [ targetAssocTo := Array with: targetAssocTo ].
			targetAssocTo := targetAssocTo collect: [ :e | self entity: e in: self targetModel ].
			baseAssoc class = targetAssoc class
				and: [ (self entity: targetAssoc from in: self targetModel) = (self entity: fromChange targetEntity in: self targetModel)
						and: [ targetAssocTo includesAll: (toChanges collect: [ :e | self entity: e targetEntity in: self targetModel ]) ] ] ]
		ifNone: [ NotFound signal ]