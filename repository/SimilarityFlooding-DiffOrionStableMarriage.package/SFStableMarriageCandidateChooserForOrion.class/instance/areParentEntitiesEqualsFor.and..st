testing
areParentEntitiesEqualsFor: anEntity and: anotherEntity
	| anEntityParents anotherEntityParents |
	anEntityParents := (self parentEntitiesOf: anEntity) collect: [ :e | e versionIn: self sfDiff baseModel ].
	anotherEntityParents := (self parentEntitiesOf: anotherEntity) collect: [ :e | e versionIn: self sfDiff targetModel ].
	anEntityParents size = anotherEntityParents size = 0 ifTrue: [ ^ true ]. "For top entities in the relation of containment."
	^ anEntityParents size = anotherEntityParents size
		and: [ 
			anEntityParents
				allSatisfy: [ :entityParent | 
				anotherEntityParents
					anySatisfy: [ :anotherEntityParent |
						self knownMatches associations anySatisfy: [ :any | (any head versionIn: self sfDiff baseModel) = entityParent and: [ (any tail versionIn: self sfDiff targetModel) = anotherEntityParent ] ] ] ] ]