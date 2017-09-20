helpers
childrenEntitiesOf: anEntity
	^ anEntity children reject: [ :e | e isNil ]