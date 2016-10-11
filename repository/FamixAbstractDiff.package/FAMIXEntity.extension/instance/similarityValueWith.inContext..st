*FamixAbstractDiff
similarityValueWith: anotherEntity inContext: aContextObject
	| similarityComputer |
	similarityComputer := self similarityComputer.
	"The similarity computer accept the 'self' entity, we need to check if it accept 'anotherEntity'."
	anotherEntity class = similarityComputer entityAccepted
			ifFalse: [ FADEntitiesAreNotComparable signal: ('The entity given as second parameter ({1}) can not be compared with this entity ({2}).' format: {anotherEntity className . self className}) ].
	^ self similarityComputer similarityValueFor: self and: anotherEntity inContext: aContextObject