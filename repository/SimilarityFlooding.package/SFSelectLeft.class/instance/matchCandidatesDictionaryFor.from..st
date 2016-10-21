filtering
matchCandidatesDictionaryFor: entities from: matchCandidates
	| matchCandidatesDictionary |
	matchCandidatesDictionary := Dictionary new.
	entities do: [ :e |
		matchCandidatesDictionary
			at: e
			put: (matchCandidates
						select: [ :m | m baseEntity = e ]
						thenCollect: [ :m | 
							SFMatchCandidateWithRelativeSigma
								base: m baseEntity
								target: m targetEntity
								sigmaValue: m sigmaValue
								relative: m sigmaValue]) ].
	^ matchCandidatesDictionary