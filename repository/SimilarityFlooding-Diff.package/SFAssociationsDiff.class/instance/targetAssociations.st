accessing
targetAssociations
	^ targetAssociations ifNil: [ targetAssociations := (self targetModel allWithSubTypesOf: FAMIXAssociation) entities ]