filtering
matchCandidatesDictionaryFor: entities from: matchCandidates
	| matchCandidatesDictionary |
	matchCandidatesDictionary := Dictionary new.
	entities do: [ :e |
		matchCandidatesDictionary
			at: e
			put: (matchCandidates
						select: [ :m | m baseEntity = e ]
						thenCollect: [ :m | { m targetEntity . m sigmaValue } ]) asOrderedCollection ].
	^ matchCandidatesDictionary