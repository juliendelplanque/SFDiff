selecting
selectCandidates: matchCandidates
	| candidates newMatches |
	candidates := matchCandidates copy asOrderedCollection.
	newMatches := OrderedCollection new.
	[ candidates isNotEmpty ] whileTrue: [
		|noParentsOrMatchedParents candidateToMatchedChildrenProp best|
		"Find candidates that have no parent or have matched parents."
		noParentsOrMatchedParents := self selectNoParentsOrMatchedParentsEntitiesIn: candidates withNewMatches: newMatches.
		"Use equal entities finder."
		candidateToMatchedChildrenProp := OrderedCollection new.
		noParentsOrMatchedParents do: [ :c |
			|equalChildren|
			equalChildren := self retryEqualMatchFor: c baseEntity and: c targetEntity.
			candidateToMatchedChildrenProp add: {c . equalChildren . (self proportionOfChildrenEntitiesMatchedFor: c baseEntity in: equalChildren)} ].
		"Find best match in term of similarity value and proportion of matched children."
		best := (candidateToMatchedChildrenProp maxFor: [ :assoc | assoc first sigmaValue + assoc last ]).
		best second
			do: [ :equalsChild | newMatches add: equalsChild ].
		candidates
			removeAllSuchThat: [ :candidate | (best second anySatisfy: [ :any | candidate baseEntity = any baseEntity ]) or: [ (best second anySatisfy: [ :any | candidate targetEntity = any targetEntity ]) ] ].
		(self canGenerateMoveFrom: best first)
			ifTrue: [ newMatches add: best first asMoveChange ].
		(self canGenerateRenameFrom: best first)
			ifTrue: [ newMatches add: best first asRenameChange ].
		"Remove inconsistent candidates."
		candidates removeAllSuchThat: [ :candidate | candidate baseEntity = best first baseEntity or: [ candidate targetEntity = best first targetEntity ] ] ].
	^ newMatches