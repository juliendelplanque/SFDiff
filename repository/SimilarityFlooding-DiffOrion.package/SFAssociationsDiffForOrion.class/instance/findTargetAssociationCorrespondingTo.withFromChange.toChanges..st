helper
findTargetAssociationCorrespondingTo: baseAssoc withFromChange: fromChange toChanges: toChanges
	^ self targetAssociations detect: [ :targetAssoc | |targetAssocTo|
			targetAssocTo := targetAssoc to.
			targetAssocTo isCollection
				ifFalse: [ targetAssocTo := Array with: targetAssocTo ].
			targetAssocTo := targetAssocTo collect: [ :e | e versionIn: self targetModel ].
			baseAssoc class = targetAssoc class and: [ (targetAssoc from versionIn: self targetModel) = (fromChange targetEntity versionIn: self targetModel) and: [ targetAssocTo includesAll: (toChanges collect: [ :e | e targetEntity versionIn: self targetModel ]) ] ] ]
				ifNone: [ NotFound signal ]