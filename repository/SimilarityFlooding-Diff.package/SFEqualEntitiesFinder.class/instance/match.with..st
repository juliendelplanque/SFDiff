finding
match: modelAEntities with: modelBEntities
	modelAEntities
		do: [ :eA | |entityA|
			entityA := self entity: eA in: self baseModel.
			modelBEntities
				detect: [ :eB | |entityB|
					entityB := self entity: eB in: self targetModel.
					(entityA privateState attributeAt: #sfMarked ifAbsent: false) not
						and: [ (entityA sfIsEqualTo: entityB)
						and: [ (self parentEntitiesOf: entityA) allSatisfy: [ :parentA| (self parentEntitiesOf: entityB) anySatisfy: [ :parentB | parentA sfIsEqualTo: parentB ] ] ] ] ]
				ifFound: [ :entityB |
					entityA privateState attributeAt: #sfMarked put: true.
					entityB privateState attributeAt: #sfMarked put: true.
					self
						addMatchedEntities: entityA -> entityB;
						match: (self childrenEntitiesOf: entityA) with: (self childrenEntitiesOf: entityB) ] ]