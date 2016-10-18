*FamixAbstractDiff
orphanEntities
	"Returns the entities that have no parent."
	^ (self allWithSubTypesOf: FAMIXNamedEntity) select: [ :e | e belongsTo isNil ]