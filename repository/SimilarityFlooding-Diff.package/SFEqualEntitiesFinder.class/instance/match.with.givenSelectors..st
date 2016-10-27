finding
match: modelAEntities with: modelBEntities givenSelectors: selectors
	selectors ifEmpty: [ ^self ].
	modelAEntities do: [ :entityA |
		modelBEntities
			detect: [ :entityB | entityA isEqualTo: entityB ]
			ifFound: [ :entityB |
				self 
					addMatchedEntities:  entityA -> entityB;
					match: (self namedEntitiesOfModelA select: [ :e | (selectors first value: e) = entityA ]) entities
					with: (self namedEntitiesOfModelB select: [:e | (selectors first value: e) = entityB ]) entities
					givenSelectors: selectors allButFirst ] ]