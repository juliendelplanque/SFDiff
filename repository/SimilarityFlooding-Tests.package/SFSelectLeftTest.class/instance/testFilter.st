tests-filtering
testFilter
	| candidates filtered matchExpected |
	candidates := SFMatcher joinGraph: self semiStructuredDataGraphB withGraph: self semiStructuredDataGraphA.
	filtered := SFSelectLeft filter: candidates.
	
	matchExpected := { 
		SFMatchCandidateWithRelativeSigma base: '55' target: '4' sigmaValue: 1.0 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '61' target: '7' sigmaValue: 0.63 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '51' target: '1' sigmaValue: 0.48 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '56' target: '5' sigmaValue: 0.48 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '57' target: '6' sigmaValue: 0.48 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '62' target: '8' sigmaValue: 0.30 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '52' target: '7' sigmaValue: 0.07 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '58' target: '2' sigmaValue: 0.07 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '63' target: '9' sigmaValue: 0.07 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '53' target: '8' sigmaValue: 0.05 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '59' target: '3' sigmaValue: 0.05 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '60' target: '1' sigmaValue: 0.05 relative: 1.0.
		SFMatchCandidateWithRelativeSigma base: '64' target: '10' sigmaValue: 0.05 relative: 1.0 }.
	
	
	self assert: filtered size equals: 13.
	
	matchExpected do: [ :expected |
		self assert: (filtered anySatisfy: [ :c | 
			c baseEntity = expected baseEntity
				and: [ c targetEntity = expected targetEntity
					and: [ ((c sigmaValue max: expected sigmaValue ) - (c sigmaValue min: expected sigmaValue) < 0.01)
						and: [ (c relativeSigmaValue max: expected relativeSigmaValue ) - (c relativeSigmaValue min: expected relativeSigmaValue) < 0.01 ] ] ] ]) ]