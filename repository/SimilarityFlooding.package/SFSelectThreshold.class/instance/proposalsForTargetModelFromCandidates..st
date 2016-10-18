filtering
proposalsForTargetModelFromCandidates: matchCandidates
	| proposalsForTargetModel |
	proposalsForTargetModel := Dictionary new.
	(self targetModel entities select: [ :e | self entitiesManaged includes: e className ]) do: [ :e |
		proposalsForTargetModel
			at: e
			put: (matchCandidates
						select: [ :m | m targetEntity = e and: [ (self entitiesManaged includes: m baseEntity className) ] ]
						thenCollect: [ :m | { m baseEntity . m sigmaValue } ]) asOrderedCollection ].
	^ proposalsForTargetModel