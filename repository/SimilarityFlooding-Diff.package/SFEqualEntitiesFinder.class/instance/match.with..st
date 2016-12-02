finding
match: modelAEntities with: modelBEntities
	modelAEntities do: [ :entityA |
		modelBEntities
			detect: [ :entityB | (entityA privateState attributeAt: #sfMarked ifAbsent: [ false ]) not and: [ entityA isEqualTo: entityB ] ]
			ifFound: [ :entityB |
				entityA privateState attributeAt: #sfMarked put: true.
				entityB privateState attributeAt: #sfMarked put: true.
				self 
					addMatchedEntities:  entityA -> entityB;
					match: (entityA class childrenAccessors
								inject: OrderedCollection new
								into: [ :union :selector |
									union union: (selector value: entityA) ])
					with: (entityB class childrenAccessors
								inject: OrderedCollection new
								into: [ :union :selector |
									union union: (selector value: entityB) ]) ] ]