helpers
childrenEntitiesOf: anEntity
	^ anEntity childrenEntities reject: [ :e | e isNil ]