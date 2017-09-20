helpers
parentEntitiesOf: anEntity
	^ anEntity parents reject: [ :e | e isNil ]