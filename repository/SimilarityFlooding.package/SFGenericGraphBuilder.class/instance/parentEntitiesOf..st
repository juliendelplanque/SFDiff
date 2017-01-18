helpers
parentEntitiesOf: anEntity
	^ anEntity parentEntities reject: [ :e | e isNil ]