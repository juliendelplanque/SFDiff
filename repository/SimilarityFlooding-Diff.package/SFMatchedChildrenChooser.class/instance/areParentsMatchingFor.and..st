testing
areParentsMatchingFor: entityA and: entityB
	| parentsA parentsB |
	parentsA := self parentEntitiesOf: entityA.
	parentsB := self parentEntitiesOf: entityB.
	^ parentsA size = parentsB size
		and: [ parentsA allSatisfy: [ :parentA | parentsB anySatisfy: [ :parentB | parentA sfIsEqualTo: parentB ] ] ]