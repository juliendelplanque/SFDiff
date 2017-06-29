finding
match: modelAEntities with: modelBEntities
	modelAEntities
		do: [ :entityA | 
			modelBEntities
				detect: [ :entityB |
					(entityA privateState attributeAt: #sfMarked ifAbsent: false) not
						and: [ (entityA sfIsEqualTo: entityB)
						and: [ (self parentEntitiesOf: entityA) allSatisfy: [ :parentA| (self parentEntitiesOf: entityB) anySatisfy: [ :parentB | parentA sfIsEqualTo: parentB ] ] ] ] ]
				ifFound: [ :entityB | |childrenOfA childrenOfB|
					entityA privateState attributeAt: #sfMarked put: true.
					entityB privateState attributeAt: #sfMarked put: true.
					childrenOfA := (self childrenEntitiesOf: entityA).
					childrenOfA do: [ :e | e privateState attributeAt: #sfMarked put: false ].
					childrenOfB := (self childrenEntitiesOf: entityB).
					childrenOfB do: [ :e | e privateState attributeAt: #sfMarked put: false ].
					self
						addMatchedEntities: entityA -> entityB;
						match: childrenOfA with: childrenOfB ] ]