accessing
baseAssociations
	^ baseAssociations ifNil: [ baseAssociations := (self baseModel allWithSubTypesOf: FAMIXAssociation) entities ]