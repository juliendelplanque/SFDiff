finding
match: modelAEntities with: modelBEntities
	modelAEntities do: [ :entityA |
		modelBEntities
			detect: [ :entityB | entityA isEqualTo: entityB ]
			ifFound: [ :entityB |
				self 
					addMatchedEntities: { entityA . entityB };
					match: (self namedEntitiesOfModelA select: [ :e | e belongsTo = entityA ]) entities
					with: (self namedEntitiesOfModelB select: [:e | e belongsTo = entityB ]) entities ] ]