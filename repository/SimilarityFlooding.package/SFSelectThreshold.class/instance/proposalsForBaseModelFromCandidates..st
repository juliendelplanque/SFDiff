filtering
proposalsForBaseModelFromCandidates: matchCandidates
	| proposalsForBaseModel |
	proposalsForBaseModel := Dictionary new.
	(self baseModel entities select: [ :e | self entitiesManaged includes: e className ]) do: [ :e |
		proposalsForBaseModel
			at: e
			put: (matchCandidates
						select: [ :m | m baseEntity = e and: [ (self entitiesManaged includes: m targetEntity className) ] ]
						thenCollect: [ :m | { m targetEntity . m sigmaValue } ]) asOrderedCollection ].
	^ proposalsForBaseModel