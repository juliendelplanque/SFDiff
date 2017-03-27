helper
findTargetAssociationCorrespondingTo: baseAssoc withFromChange: fromChange toChanges: toChanges
	^ self targetAssociations
				detect: [ :targetAssoc | |targetAssocTo|
					targetAssocTo := targetAssoc to.
					targetAssocTo isCollection
						ifFalse: [ targetAssocTo := Array with: targetAssocTo ].
					baseAssoc class = targetAssoc class and: [ targetAssoc from = fromChange targetEntity and: [ targetAssocTo includesAll: (toChanges collect: #targetEntity) ] ] ]
				ifNone: [ NotFound signal ]