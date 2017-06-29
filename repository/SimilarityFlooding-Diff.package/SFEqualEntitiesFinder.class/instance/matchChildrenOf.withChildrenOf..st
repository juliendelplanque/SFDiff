finding
matchChildrenOf: entityA withChildrenOf: entityB
	| childrenOfA childrenOfB |
	childrenOfA := (self childrenEntitiesOf: entityA).
	childrenOfA do: [ :e | e privateState attributeAt: #sfMarked put: false ].
	childrenOfB := (self childrenEntitiesOf: entityB).
	childrenOfB do: [ :e | e privateState attributeAt: #sfMarked put: false ].
	self match: childrenOfA with: childrenOfB.
	^ matchedEntities asDictionary